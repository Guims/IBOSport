.class public final LE1/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Lcom/bumptech/glide/f;

.field public final synthetic b:LE1/b;


# direct methods
.method public synthetic constructor <init>(LE1/b;Lcom/bumptech/glide/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/q;->b:LE1/b;

    iput-object p2, p0, LE1/q;->a:Lcom/bumptech/glide/f;

    return-void
.end method


# virtual methods
.method public final a(LE1/f;)V
    .locals 3

    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE1/q;->b:LE1/b;

    iget v1, v1, LE1/b;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LE1/q;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->O(LE1/f;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    const-string p1, "BillingClient"

    const-string v0, "Billing service died."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v1, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, v0, LE1/b;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->g:LA/j;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/Q1;->q()Lcom/google/android/gms/internal/play_billing/P1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/Q1;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/Q1;->p(Lcom/google/android/gms/internal/play_billing/Q1;I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/U1;->r()Lcom/google/android/gms/internal/play_billing/T1;

    move-result-object v2

    const/16 v3, 0x7a

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/T1;->e(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/P1;->e(Lcom/google/android/gms/internal/play_billing/T1;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Q1;

    invoke-virtual {v0, v1}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->g:LA/j;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/W1;->n()Lcom/google/android/gms/internal/play_billing/W1;

    move-result-object v1

    invoke-virtual {v0, v1}, LA/j;->D(Lcom/google/android/gms/internal/play_billing/W1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, LE1/q;->b:LE1/b;

    iget v1, v1, LE1/b;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-object v1, p0, LE1/q;->b:LE1/b;

    iget v1, v1, LE1/b;->b:I

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, LE1/q;->b:LE1/b;

    invoke-virtual {v1, p1}, LE1/b;->n(I)V

    iget-object v1, p0, LE1/q;->b:LE1/b;

    invoke-virtual {v1}, LE1/b;->o()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, LE1/q;->a:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/c;

    iput-boolean p1, v0, Lib/player/base/helper/c;->a:Z

    const-string p1, "BillingManager"

    const-string v0, "Billing service disconnected. Will need to reconnect."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    :try_start_6
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LE1/q;->b:LE1/b;

    iget-object p1, p1, LE1/b;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget v0, v0, LE1/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LE1/q;->b:LE1/b;

    sget v1, Lcom/google/android/gms/internal/play_billing/c;->c:I

    const-string v1, "com.android.vending.billing.IInAppBillingService"

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/d;

    if-eqz v3, :cond_2

    move-object p2, v2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/d;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/play_billing/b;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v1, v3}, LG2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p2, v2

    :goto_0
    iput-object p2, v0, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LE1/q;->b:LE1/b;

    new-instance v0, LE1/p;

    const/4 p2, 0x0

    invoke-direct {v0, p2, p0}, LE1/p;-><init>(ILjava/lang/Object;)V

    new-instance v3, LA4/f;

    const/4 p2, 0x6

    invoke-direct {v3, p2, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, LE1/b;->s()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v1, 0x7530

    invoke-virtual {p1}, LE1/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static/range {v0 .. v5}, LE1/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, LE1/q;->b:LE1/b;

    invoke-virtual {p1}, LE1/b;->h()LE1/f;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {p1, v1, p2, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {p0, v0}, LE1/q;->a(LE1/f;)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v1, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, v0, LE1/b;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->g:LA/j;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/Q1;->q()Lcom/google/android/gms/internal/play_billing/P1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/Q1;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/Q1;->p(Lcom/google/android/gms/internal/play_billing/Q1;I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/U1;->r()Lcom/google/android/gms/internal/play_billing/T1;

    move-result-object v2

    const/16 v3, 0x79

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/T1;->e(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/P1;->e(Lcom/google/android/gms/internal/play_billing/T1;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Q1;

    invoke-virtual {v0, v1}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->g:LA/j;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l2;->n()Lcom/google/android/gms/internal/play_billing/l2;

    move-result-object v1

    invoke-virtual {v0, v1}, LA/j;->G(Lcom/google/android/gms/internal/play_billing/l2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, LE1/q;->b:LE1/b;

    iget v1, v1, LE1/b;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object v1, p0, LE1/q;->b:LE1/b;

    invoke-virtual {v1, p1}, LE1/b;->n(I)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, LE1/q;->a:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/c;

    iput-boolean p1, v0, Lib/player/base/helper/c;->a:Z

    const-string p1, "BillingManager"

    const-string v0, "Billing service disconnected. Will need to reconnect."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method
