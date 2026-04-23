btn-back =
    .general = ⬅️ Back
    .menu = ↩️ Main menu
    .menu-return = ↩️ Return to main menu
    .dashboard = ↩️ Return to dashboard

btn-common =
    .notification-close = ❌ Close
    .devices-empty = ⚠️ You have no connected devices
    .cancel = Cancel

    .squad-choice = { $selected ->
    [1] 🔘
    *[0] ⚪
    } { $name }

    .duration = ⌛ { $value ->
    [0] { unlimited }
    *[OTHER] { unit-day }
    }

btn-devices =
    .delete-all = 🗑 Delete all devices
    .reissue = 🔄 Reissue subscription
    .confirm-delete = ✅ Yes, delete
    .confirm-reissue = ✅ Yes, reset
    .cancel-reissue = ❌ No

    .item = { $platform_icon } { $platform } { $device_model ->
    [0] { space }
    *[HAS] ({ $device_model }){ space }
    }— { $created_at }

btn-remnashop-info =
    .release-latest = 👀 View release
    .how-upgrade = ❓ Upgrade guide
    .github = ⭐ GitHub
    .telegram = 👪 Telegram
    .telegram-proxy = 🛡 Telegram Proxy
    .project-channel = 📣 Project Channel
    .donate = 💰 Support the developer
    .docs = 📖 Documentation

btn-requirement =
    .rules-accept = ✅ Accept the rules
    .channel-join = ❤️ Open channel
    .channel-confirm = ✅ Confirm

btn-menu =
    .trial = <e id="5406756500108501710">🎁</e> TRY FOR FREE
    .connect = <e id="5447410659077661506">🚀</e> Connect
    .devices = <e id="5271604874419647061">📱</e> Devices
    .subscription = <e id="5406683434124859552">💳</e> Subscription
    .invite = <e id="5424818078833715060">👥</e> Invite
    .support = <e id="5395695537687123235">🆘</e> Support
    .dashboard = <e id="5341715473882955310">🛠</e> Dashboard

    .connect-not-available =
    <e id="5420323339723881652">⚠️</e> { $status ->
    [LIMITED] TRAFFIC LIMIT REACHED
    [EXPIRED] SUBSCRIPTION EXPIRED
    *[OTHER] SUBSCRIPTION UNAVAILABLE
    } <e id="5420323339723881652">⚠️</e>

btn-invite =
    .about = ❓ About the reward
    .copy = 📋 Copy link
    .send = 📩 Invite
    .qr = 🧾 QR code
    .withdraw-points = 💎 Redeem points

btn-goto =
    .subscription = 💳 Buy subscription
    .promocode = 🎟 Redeem promo code
    .invite = 👥 Invite
    .subscription-renew = 🔄 Renew subscription
    .user-profile = 👤 Open user profile
    .referrer-profile = 🤝 Open referrer profile
    .contact-support = 📩 Contact support

btn-subscription =
    .plan = 💳 Go to checkout
    .new = 💸 Buy subscription
    .renew = 🔄 Renew
    .change = 🔃 Change
    .promocode = 🎟 Redeem promo code
    .payment-method = { gateway-type } | { $final_amount ->
    [0] 🎁
    *[HAS] { $final_amount }{ $currency }
    }
    .pay = 💳 Pay
    .get = 🎁 Get for free
    .back-plans = ⬅️ Back to plan selection
    .back-duration = ⬅️ Change duration
    .back-payment-method = ⬅️ Change payment method
    .connect = 🚀 Connect

    .duration = { $period } | { $final_amount ->
    [0] 🎁
    *[HAS] { $final_amount }{ $currency }
    }
