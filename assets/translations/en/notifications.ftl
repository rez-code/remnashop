ntf-error =
    .unknown = ⚠️ <i>Something went wrong.</i>
    .permission-denied = ⚠️ <i>You do not have enough permissions.</i>
    .log-not-found = ⚠️ <i>Log file not found.</i>
    .logs-disabled = ⚠️ <i>File logging is disabled.</i>

    .lost-context = ⚠️ <i>Something went wrong. Restart the dialog with /start.</i>
    .lost-context-restart = ⚠️ <i>Something went wrong. The dialog has been restarted.</i>

ntf-common =
    .trial-unavailable = ⚠️ <i>The trial subscription is temporarily unavailable.</i>
    .throttling = ⚠️ <i>You are sending too many requests. Please wait.</i>
    .double-click-confirm = ⚠️ <i>Tap once again to confirm the action.</i>
    .squads-empty = ⚠️ <i>No squads found. Check that they exist in the panel.</i>

    .withdraw-points = ❌ <i>You do not have enough points for this exchange.</i>
    .internal-squads-empty = ❌ <i>Select at least one internal squad.</i>

    .invalid-value = ❌ <i>Invalid value.</i>
    .value-updated = ✅ <i>The setting has been updated.</i>

    .plan-not-found = ❌ <i>The plan was not found or is unavailable.</i>

    .connect-not-available =
    ⚠️ { $status ->
    [LIMITED]
    You have used all available traffic. { $is_trial ->
    [0] { $traffic_strategy ->
        [NO_RESET] Renew your subscription to reset traffic and continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also renew the subscription to reset traffic right away.
        }
    *[1] { $traffic_strategy ->
        [NO_RESET] Buy a subscription to continue using the service!
        *[RESET] Traffic will be restored in { $reset_time }. You can also buy a subscription to keep using the service without limits.
        }
    }
    [EXPIRED]
    { $is_trial ->
    [0] Your subscription has expired. Renew it or buy a new one.
    *[1] Your free trial has ended. Buy a subscription to continue using the service.
    }
    *[OTHER] There was an error while checking the status, or the subscription has been disabled. Contact support.
    }

ntf-command =
    .paysupport = 💸 <b>To request a refund, please contact support.</b>
    .rules = ⚠️ <b>Please read the <a href="{ $url }">Terms of Use</a> before using the service.</b>
    .help = 🆘 <b>Tap the button below to contact support.</b>

ntf-requirement =
    .channel-join-required = ❇️ Join our channel to receive <b>free days, promotions, and updates</b>. After joining, tap "Confirm".
    .channel-join-required-left = ⚠️ You left the channel. Join again to continue using the bot.
    .rules-accept-required = ⚠️ <b>Before using the service, read and accept the <a href="{ $url }">Terms of Use</a>.</b>
    .channel-join-error = ⚠️ We cannot verify your channel subscription. Check it and try again.

ntf-user =
    .not-found = <i>❌ User not found.</i>
    .transaction-not-found = ❌ <i>Transaction not found.</i>
    .transactions-empty = ❌ <i>The transaction list is empty.</i>
    .subscription-empty = ❌ <i>No active subscription found.</i>
    .subscription-deleted = ✅ <i>The subscription has been deleted.</i>
    .plans-empty = ❌ <i>No available plans.</i>
    .devices-empty = ❌ <i>The device list is empty.</i>
    .allowed-plans-empty = ❌ <i>No available plans for granting access.</i>
    .message-success = ✅ <i>The message has been sent.</i>
    .message-failed = ❌ <i>Failed to send the message.</i>

    .sync-already = ✅ <i>The subscription data is already in sync.</i>
    .sync-missing-data = ⚠️ <i>Synchronization is impossible. Subscription data is missing both in the panel and in the bot.</i>
    .sync-success = ✅ <i>The subscription has been synchronized.</i>

    .invalid-expire-time = ❌ <i>Unable to { $operation ->
    [ADD] extend
    *[SUB] reduce
    } the subscription for the specified number of days.</i>

    .invalid-points = ❌ <i>Unable to { $operation ->
    [ADD] add
    *[SUB] deduct
    } the specified amount of points.</i>

ntf-access =
    .maintenance = 🚧 <i>The bot is under maintenance. Please try again later.</i>
    .registration-disabled = ❌ <i>Registration for new users is disabled.</i>
    .registration-invite-only = ❌ <i>Registration is available by invitation only.</i>
    .payments-disabled = 🚧 <i>Payments are temporarily unavailable. You will be notified when they are restored.</i>
    .payments-restored = ❇️ <i>Payments have been restored. You can now buy or renew a subscription. Thank you for waiting.</i>

ntf-gateway =
    .not-configured = ❌ <i>The payment gateway is not configured.</i>
    .not-configurable = ❌ <i>This payment gateway has no configurable settings.</i>
    .test-payment-created = ✅ <i><a href="{ $url }">Test payment</a> has been created.</i>
    .test-payment-error = ❌ <i>Failed to create a test payment.</i>
    .test-payment-confirmed = ✅ <i>The test payment has been processed successfully.</i>

ntf-subscription =
    .plans-unavailable = ❌ <i>No plans are available right now.</i>
    .gateways-unavailable = ❌ <i>No payment methods are available right now.</i>
    .renew-plan-unavailable = ❌ <i>Your current plan is outdated and cannot be renewed.</i>
    .payment-creation-failed = ❌ <i>Failed to create the payment. Please try again later.</i>

ntf-devices =
    .deleted = ✅ <i>The device has been deleted.</i>
    .all-deleted = ✅ <i>All devices have been deleted.</i>
    .reissued = ✅ <i>The subscription has been reissued successfully.</i>
