event-user =
    .not-connected =
    <b>⚠️ It looks like you still have not connected to the VPN.</b>

    If the connection still does not work after receiving the subscription, contact support. We will help you check the setup and connection.

event-subscription =
    .expiring =
    { $is_trial ->
    [0]
    <b>⚠️ Attention! Your subscription will end in { unit-day }.</b>

    Renew it in advance so you do not lose access to the service.
    *[1]
    <b>⚠️ Attention! Your free trial will end in { unit-day }.</b>

    Buy a subscription so you do not lose access to the service.
    }

    .expired =
    <b>⛔ Attention! Access is paused, VPN is not working.</b>

    { $is_trial ->
    [0] Your subscription has expired. Renew it to keep using the VPN.
    *[1] Your free trial has ended. Buy a subscription to continue using the service.
    }

    .expired-ago =
    <b>⛔ Attention! Access is paused, VPN is not working.</b>

    { $is_trial ->
    [0] Your subscription expired { unit-day } ago. Renew it to keep using the VPN.
    *[1] Your free trial ended { unit-day } ago. Buy a subscription to continue using the service.
    }

    .limited =
    <b>⛔ Attention! Access is paused, VPN is not working.</b>

    Your traffic has been exhausted. { $is_trial ->
    [0] { $traffic_strategy ->
        [NO_RESET] Renew your subscription to reset traffic and continue using the service.
        *[RESET] Traffic will be restored in { $reset_time }. You can also renew the subscription to reset traffic.
        }
    *[1] { $traffic_strategy ->
        [NO_RESET] Buy a subscription to continue using the service.
        *[RESET] Traffic will be restored in { $reset_time }. You can also buy a subscription to continue using the service without limits.
        }
    }

event-torrent-blocker =
    .user-blocked =
    <b>⛔ Access on the server is temporarily restricted.</b>

    BitTorrent traffic was detected on node <b>{ $node_name }</b>.
    The restriction will remain active for <b>{ $block_duration }</b>.

    If you need help with the connection setup, contact support.

    .admin-report =
    #TorrentBlockedAdminEvent

    <b>⚠️ Event: BitTorrent traffic detected!</b>

    { hdr-user }
    { frg-user-info }

    <blockquote>
    • <b>Node</b>: { $node_name }
    • <b>IP</b>: <code>{ $blocked_ip }</code>
    • <b>Block duration</b>: { $block_duration }
    • <b>Unblock time</b>: { $will_unblock_at }
    • <b>Protocol</b>: <code>{ $protocol }</code>
    • <b>Source</b>: <code>{ $source }</code>
    • <b>Destination</b>: <code>{ $destination }</code>
    </blockquote>

event-referral =
    .attached =
    <b>🎉 You invited a friend!</b>

    <blockquote>
    User <b>{ $name }</b> joined via your invite link. To receive the reward, make sure they complete a subscription purchase.
    </blockquote>

    .reward =
    <b>💰 You have received a reward!</b>

    <blockquote>
    User <b>{ $name }</b> completed a payment. You received { $reward_type ->
    [POINTS] <b>{ $value } { $value ->
        [one] point
        *[other] points
        }</b>

    <i>Open the "Invite" section in the bot to see available rewards and ways to use your points.</i>
    [EXTRA_DAYS] <b>{ $value } extra { $value ->
        [one] day
        *[other] days
        }</b> added to your subscription!
    *[OTHER] <b>{ $value } { $reward_type }</b>
    }
    </blockquote>

    .reward-failed =
    <b>❌ Reward could not be granted!</b>

    <blockquote>
    User <b>{ $name }</b> completed a payment, but we could not credit your reward because <b>you do not have a paid subscription</b> to which we could add { $value } { $reward_type ->
    [POINTS] { $value ->
        [one] point
        *[other] points
        }
    [EXTRA_DAYS] extra { $value ->
        [one] day
        *[other] days
        }
    *[OTHER] { $reward_type }
    }.

    <i>Buy a subscription to receive bonuses for invited friends.</i>
    </blockquote>

event-remnashop-welcome =
    <b>💎 Remnashop v{ $version }</b>

    This project is created and maintained by just one <strike>developer</strike> electrician. Since the bot is completely FREE and open source, it exists only thanks to your support.

    ⭐ <i>Leave a star on <a href="{ $repository }">GitHub</a> and join our <a href="https://t.me/@remna_shop">community</a>.</i>

    🎁 <i>There is also a <a href="https://boosty.to/snoups/purchase/3778398?ssource=DIRECT&amp;share=subscription_link">private chat</a> for supporters.</i>
