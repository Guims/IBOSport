.class public final LE1/D;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public a:Z

.field public final b:Z

.field public final synthetic c:LE1/E;


# direct methods
.method public constructor <init>(LE1/E;Z)V
    .locals 0

    iput-object p1, p0, LE1/D;->c:LE1/E;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, LE1/D;->b:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LE1/D;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, LE1/D;->b:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, p0, p2, v0}, LC2/a;->q(Landroid/content/Context;LE1/D;Landroid/content/IntentFilter;I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    iput-boolean v2, p0, LE1/D;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LE1/D;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LE1/D;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final c(Landroid/os/Bundle;LE1/f;I)V
    .locals 2

    :try_start_0
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, LE1/D;->c:LE1/E;

    iget-object p2, p2, LE1/E;->d:Ljava/lang/Object;

    check-cast p2, LE1/A;

    const-string p3, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    sget p3, Lcom/google/android/gms/internal/play_billing/a1;->a:I

    const-class p3, Lcom/google/android/gms/internal/play_billing/a1;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget v0, Lcom/google/android/gms/internal/play_billing/a1;->a:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/A1;->c:Lcom/google/android/gms/internal/play_billing/A1;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/d1;->q()Lcom/google/android/gms/internal/play_billing/a1;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/play_billing/a1;->a:I

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/Q1;->n([BLcom/google/android/gms/internal/play_billing/a1;)Lcom/google/android/gms/internal/play_billing/Q1;

    move-result-object p1

    check-cast p2, LA/j;

    invoke-virtual {p2, p1}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_0
    iget-object p1, p0, LE1/D;->c:LE1/E;

    iget-object p1, p1, LE1/E;->d:Ljava/lang/Object;

    check-cast p1, LE1/A;

    const/16 v0, 0x17

    invoke-static {v0, p3, p2}, LE1/z;->b(IILE1/f;)Lcom/google/android/gms/internal/play_billing/Q1;

    move-result-object p2

    check-cast p1, LA/j;

    invoke-virtual {p1, p2}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    iget-object p1, p0, LE1/D;->c:LE1/E;

    iget-object v0, p1, LE1/E;->d:Ljava/lang/Object;

    check-cast v0, LE1/A;

    iget-object p1, p1, LE1/E;->c:Ljava/lang/Object;

    check-cast p1, Lib/player/base/helper/c;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "BillingBroadcastManager"

    const/4 v4, 0x1

    if-nez v1, :cond_0

    const-string p2, "Bundle is null."

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, LE1/B;->i:LE1/f;

    const/16 v1, 0xb

    invoke-static {v1, v4, p2}, LE1/z;->b(IILE1/f;)Lcom/google/android/gms/internal/play_billing/Q1;

    move-result-object v1

    check-cast v0, LA/j;

    invoke-virtual {v0, v1}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, v2}, Lib/player/base/helper/c;->k(LE1/f;Ljava/util/List;)V

    return-void

    :cond_0
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/play_billing/o0;->c(Landroid/content/Intent;Ljava/lang/String;)LE1/f;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v6, "INTENT_SOURCE"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "LAUNCH_BILLING_FLOW"

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    const-string v6, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, v5, LE1/f;->a:I

    if-eqz p2, :cond_3

    invoke-virtual {p0, v1, v5, v4}, LE1/D;->c(Landroid/os/Bundle;LE1/f;I)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-virtual {p1, v5, p2}, Lib/player/base/helper/c;->k(LE1/f;Ljava/util/List;)V

    return-void

    :cond_3
    const-string p2, "AlternativeBillingListener and UserChoiceBillingListener is null."

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, LE1/B;->i:LE1/f;

    const/16 v1, 0x4d

    invoke-static {v1, v4, p2}, LE1/z;->b(IILE1/f;)Lcom/google/android/gms/internal/play_billing/Q1;

    move-result-object v1

    check-cast v0, LA/j;

    invoke-virtual {v0, v1}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-virtual {p1, p2, v0}, Lib/player/base/helper/c;->k(LE1/f;Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p2, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v3, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "BillingHelper"

    if-eqz p2, :cond_9

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found purchase list of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/o0;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    move-object v2, v6

    goto :goto_5

    :cond_9
    :goto_4
    const-string p2, "INAPP_PURCHASE_DATA"

    invoke-virtual {v1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/play_billing/o0;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object p2

    if-nez p2, :cond_a

    const-string p2, "Couldn\'t find single purchase data as well."

    invoke-static {v7, p2}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_5
    iget p2, v5, LE1/f;->a:I

    if-nez p2, :cond_b

    invoke-static {v4}, LE1/z;->d(I)Lcom/google/android/gms/internal/play_billing/S1;

    move-result-object p2

    check-cast v0, LA/j;

    invoke-virtual {v0, p2}, LA/j;->C(Lcom/google/android/gms/internal/play_billing/S1;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v1, v5, v4}, LE1/D;->c(Landroid/os/Bundle;LE1/f;I)V

    :goto_6
    invoke-virtual {p1, v5, v2}, Lib/player/base/helper/c;->k(LE1/f;Ljava/util/List;)V

    return-void
.end method
