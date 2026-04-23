# Menu
msg-main-menu =
    { hdr-user-profile }
    { frg-user }

    { hdr-subscription }
    { $status ->
    [ACTIVE]
    { frg-subscription }
    [EXPIRED]
    <blockquote>
    • Subscription expired.

    <i>{ $is_trial ->
    [0] Your subscription has expired. Renew it to continue using the service.
    *[1] Your free trial has ended. Buy a subscription to continue using the service.
    }</i>
    </blockquote>
    [LIMITED]
    <blockquote>
    • Your traffic has been exhausted.

    <i>{ $is_trial ->
    [0] { $traffic_strategy ->
        [NO_RESET] Renew your subscription to reset traffic and continue using the service.
        *[RESET] Traffic will be restored in { $reset_time }. You can also renew the subscription to reset traffic.
        }
    *[1] { $traffic_strategy ->
        [NO_RESET] Buy a subscription to continue using the service.
        *[RESET] Traffic will be restored in { $reset_time }. You can also buy a subscription to continue using the service without limits.
        }
    }</i>
    </blockquote>
    [DISABLED]
    <blockquote>
    • Your subscription is disabled.

    <i>Contact support to find out why.</i>
    </blockquote>
    *[NONE]
    <blockquote>
    • You do not have an active subscription.

    <i>{ $trial_available ->
    [1] 🎁 A free trial is available for you. Tap the button below to activate it.
    *[0] ↘️ Open the "Subscription" menu to buy access.
    }</i>
    </blockquote>
    }

msg-menu-devices =
    <b>📱 Device management</b>

    Connected: <b>{ $current_count } / { $max_count ->
    [0] { unlimited }
    *[LIMIT] { $max_count }
    }</b>

    { $has_devices ->
    [0] { empty }
    *[HAS] Tap a device to delete it.
    }{ $max_count ->
    [0] { space }
    *[LIMIT] If you need more device slots, change your subscription.
    }

msg-menu-devices-confirm-reissue =
    🔄 <b>Reissue subscription</b>

    ⚠️ After resetting, the old link will <b>stop working</b>, and all devices will need to be reconnected.

    You will need to:
    • Remove the old subscription from the app
    • Add the new link from the "{ btn-menu.connect }" section

    Are you sure you want to reset the link?

msg-menu-devices-confirm-delete =
    🗑 <b>Confirm device deletion</b>

    <b>{ $device_model }</b>
    <blockquote>
    • <b>Platform</b>: { $platform_icon } { $platform }
    • <b>Added</b>: { $created_at }
    </blockquote>

msg-menu-devices-confirm-delete-all =
    🗑 <b>Confirm deletion of all devices</b>

msg-menu-invite =
    <b>👥 Invite friends</b>

    Share your personal link and receive rewards in the form of { $reward_type ->
        [POINTS] <b>points that can be exchanged for a subscription or real money</b>
        [EXTRA_DAYS] <b>free days added to your subscription</b>
        *[OTHER] { $reward_type }
    }!

    <b>📊 Statistics:</b>
    <blockquote>
    👥 Total invited: { $referrals }
    💳 Payments via your link: { $payments }
    { $reward_type ->
    [POINTS] 💎 Your points: { $points }
    *[EXTRA_DAYS] { empty }
    }
    </blockquote>

msg-menu-invite-about =
    <b>🎁 Reward details</b>

    <b>✨ How to get the reward:</b>
    <blockquote>
    { $accrual_strategy ->
    [ON_FIRST_PAYMENT] The reward is credited for the invited user's first subscription purchase.
    [ON_EACH_PAYMENT] The reward is credited for every purchase or renewal made by the invited user.
    *[OTHER] { $accrual_strategy }
    }
    </blockquote>

    <b>💎 What you receive:</b>
    <blockquote>
    { $max_level ->
    [1] For invited friends: { $reward_level_1 }
    *[MORE]
    { $identical_reward ->
    [0]
    1️⃣ For your friends: { $reward_level_1 }
    2️⃣ For users invited by your friends: { $reward_level_2 }
    *[1]
    For your friends and their invited users: { $reward_level_1 }
    }
    }

    { $reward_strategy_type ->
    [AMOUNT] { $reward_type ->
        [POINTS] { space }
        [EXTRA_DAYS] <i>(All extra days are added to your current subscription)</i>
        *[OTHER] { $reward_type }
    }
    [PERCENT] { $reward_type ->
        [POINTS] <i>(A percentage of points based on the invited user's purchase amount)</i>
        [EXTRA_DAYS] <i>(A percentage of extra days based on the invited user's subscription)</i>
        *[OTHER] { $reward_type }
    }
    *[OTHER] { $reward_strategy_type }
    }
    </blockquote>

msg-invite-reward = { $value }{ $reward_strategy_type ->
    [AMOUNT] { $reward_type ->
        [POINTS] { space }{ $value ->
            [one] point
            *[other] points
            }
        [EXTRA_DAYS] { space }extra { $value ->
            [one] day
            *[other] days
            }
        *[OTHER] { $reward_type }
    }
    [PERCENT] % { $reward_type ->
        [POINTS] points
        [EXTRA_DAYS] extra days
        *[OTHER] { $reward_type }
    }
    *[OTHER] { $reward_strategy_type }
}

# Dashboard
msg-dashboard-main = <b>🛠 Dashboard</b>

# Subscription
msg-subscription-main = <b>💳 Subscription</b>
msg-subscription-plans = <b>📦 Choose a plan</b>
msg-subscription-new-success = To start using the service, tap <code>`{ btn-subscription.connect }`</code> and follow the instructions.
msg-subscription-renew-success = Your subscription has been renewed for { $added_duration }.

msg-subscription-plan =
    <b>📦 Plan available via link</b>

    This link gives you access to the <b>{ $name }</b> plan. Tap the button below to choose a duration and payment method.

    { $description ->
    [0] { space }
    *[HAS]
    <blockquote>
    { $description }
    </blockquote>
    }

    { $purchase_type ->
    [RENEW] <i>⚠️ Your current subscription will be <u>extended</u> for the selected period.</i>
    [CHANGE] <i>⚠️ Your current subscription will be <u>replaced</u> with this plan without recalculating the remaining time.</i>
    *[OTHER] { empty }
    }

msg-subscription-details =
    <b>{ $plan }:</b>
    <blockquote>
    { $description ->
    [0] { empty }
    *[HAS]
    { $description }
    }

    • <b>Traffic limit</b>: { $traffic }
    • <b>Device limit</b>: { $devices }
    { $period ->
    [0] { empty }
    *[HAS] • <b>Duration</b>: { $period }
    }
    { $final_amount ->
    [0] { empty }
    *[HAS] • <b>Price</b>: { frg-payment-amount }
    }
    </blockquote>

    <blockquote>
    { $discount_percent ->
    [0] { empty }
    *[HAS] <i>Prices already include { $is_personal_discount ->
        [1] your personal discount of { $discount_percent }%
        *[0] a one-time discount of { $discount_percent }%
        }
        </i>
    }
    </blockquote>

msg-subscription-duration =
    <b>⏳ Choose a duration</b>

    { msg-subscription-details }

    { $plan_is_modified ->
    [1] <i>ℹ️ The plan terms have changed since your last purchase. Current values are shown above.</i>
    *[0] { "" }
    }

msg-subscription-payment-method =
    <b>💳 Choose a payment method</b>

    { msg-subscription-details }

    { $plan_is_modified ->
    [0] { empty }
    *[MODIFIED] <i>ℹ️ The plan terms have changed since your last purchase. Current values are shown above.</i>
    }

msg-subscription-confirm =
    <b>🛒 Confirm { $purchase_type ->
    [RENEW] subscription renewal
    [CHANGE] subscription change
    *[OTHER] subscription purchase
    }</b>

    { msg-subscription-details }

    { $purchase_type ->
    [RENEW] <i>⚠️ Your current subscription will be <u>extended</u> for the selected period.</i>
    [CHANGE] <i>⚠️ Your current subscription will be <u>replaced</u> with the selected plan without recalculating the remaining time.</i>
    *[OTHER] { empty }
    }

    { $plan_is_modified ->
    [0] { empty }
    *[MODIFIED] <i>ℹ️ The plan terms have changed since your last purchase. Current values are shown above.</i>
    }

msg-subscription-trial =
    <b>✅ Trial subscription activated successfully!</b>

    { msg-subscription-new-success }

msg-subscription-success =
    <b>✅ Payment completed successfully!</b>

    { $purchase_type ->
    [NEW] { msg-subscription-new-success }
    [RENEW] { msg-subscription-renew-success }
    [CHANGE] { msg-subscription-change-success }
    *[OTHER] { $purchase_type }
    }

msg-subscription-change-success =
    Your subscription has been changed.

    <b>{ $plan_name }</b>
    { frg-subscription }

msg-subscription-failed =
    <b>❌ Something went wrong!</b>

    Do not worry. Support has already been notified and will contact you soon. Sorry for the inconvenience.
