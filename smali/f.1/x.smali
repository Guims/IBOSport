.class public final Lf/x;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf/x;->a:I

    iput-object p2, p0, Lf/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget v0, p0, Lf/x;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/x;->b:Ljava/lang/Object;

    check-cast v0, Lr0/e;

    iget-object v1, v0, Lr0/e;->i:Landroidx/media3/common/AudioAttributes;

    iget-object v2, v0, Lr0/e;->h:Lcom/bumptech/glide/f;

    invoke-static {p1, p2, v1, v2}, Lr0/b;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/e;->a(Lr0/b;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p2, p0, Lf/x;->b:Ljava/lang/Object;

    check-cast p2, Lk0/t;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x9

    const/4 v6, 0x6

    const/4 v7, 0x4

    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v1, :cond_4

    if-eq v4, v6, :cond_6

    if-eq v4, v5, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    const/4 v2, 0x7

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v2, v6

    goto :goto_1

    :pswitch_2
    sget v0, Lk0/C;->a:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_8

    move v2, v5

    goto :goto_1

    :cond_5
    :pswitch_3
    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    :pswitch_4
    move v2, v1

    goto :goto_1

    :pswitch_5
    move v2, v7

    goto :goto_1

    :pswitch_6
    const/4 v2, 0x3

    goto :goto_1

    :cond_7
    :goto_0
    move v2, v3

    :catch_0
    :cond_8
    :goto_1
    sget v0, Lk0/C;->a:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_9

    if-ne v2, v1, :cond_9

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lk0/s;

    invoke-direct {v2, p2}, Lk0/s;-><init>(Lk0/t;)V

    invoke-static {p1}, LR1/c;->l(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, p1, v2}, LJ/c;->s(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lk0/s;)V

    invoke-static {v0, v2}, LJ/c;->t(Landroid/telephony/TelephonyManager;Lk0/s;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v1, p2}, Lk0/t;->a(ILk0/t;)V

    goto :goto_2

    :cond_9
    invoke-static {v2, p2}, Lk0/t;->a(ILk0/t;)V

    :goto_2
    return-void

    :pswitch_7
    iget-object p1, p0, Lf/x;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/g;

    invoke-virtual {p1}, Landroidx/fragment/app/g;->h()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
