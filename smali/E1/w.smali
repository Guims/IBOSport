.class public final LE1/w;
.super LE1/b;


# instance fields
.field public volatile A:I

.field public volatile B:Lcom/google/android/gms/internal/play_billing/h;

.field public volatile C:LE1/v;

.field public volatile D:Lcom/google/android/gms/internal/play_billing/A0;

.field public final z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lu2/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LE1/b;-><init>(Lu2/j;Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, LE1/w;->A:I

    iput-object p2, p0, LE1/w;->z:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lu2/j;Landroid/content/Context;Lib/player/base/helper/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LE1/b;-><init>(Lu2/j;Landroid/content/Context;Lib/player/base/helper/c;)V

    const/4 p1, 0x0

    iput p1, p0, LE1/w;->A:I

    iput-object p2, p0, LE1/w;->z:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/google/android/gms/internal/play_billing/y0;
    .locals 4

    invoke-virtual {p0}, LE1/w;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service is not ready."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "Billing Override Service connection is disconnected."

    invoke-static {p1, v0}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object p1

    const/16 v0, 0x6a

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1, p1}, LE1/w;->B(IILE1/f;)V

    new-instance p1, Lcom/google/android/gms/internal/play_billing/u0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, LE1/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, LE1/t;-><init>(IILjava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/play_billing/r2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/u2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lcom/google/android/gms/internal/play_billing/r2;->c:Lcom/google/android/gms/internal/play_billing/u2;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/t2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/play_billing/t2;-><init>(Lcom/google/android/gms/internal/play_billing/r2;)V

    iput-object v1, p1, Lcom/google/android/gms/internal/play_billing/r2;->b:Lcom/google/android/gms/internal/play_billing/t2;

    const-class v2, LE1/t;

    iput-object v2, p1, Lcom/google/android/gms/internal/play_billing/r2;->a:Ljava/io/Serializable;

    :try_start_0
    invoke-virtual {v0, p1}, LE1/t;->r(Lcom/google/android/gms/internal/play_billing/r2;)V

    const-string v0, "billingOverrideService.getBillingOverride"

    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/r2;->a:Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/p1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/p1;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/q2;->u:Lcom/google/android/gms/internal/play_billing/d1;

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/t2;->q:Lcom/google/android/gms/internal/play_billing/s2;

    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/internal/play_billing/d1;->w(Lcom/google/android/gms/internal/play_billing/q2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/q2;->d(Lcom/google/android/gms/internal/play_billing/q2;)V

    :cond_1
    return-object v1
.end method

.method public final B(IILE1/f;)V
    .locals 0

    invoke-static {p1, p2, p3}, LE1/z;->b(IILE1/f;)Lcom/google/android/gms/internal/play_billing/Q1;

    move-result-object p1

    const-string p2, "ApiFailure should not be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p2, p0, LE1/b;->g:LA/j;

    invoke-virtual {p2, p1}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V

    return-void
.end method

.method public final C(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 7

    invoke-virtual {p0, p1}, LE1/w;->A(I)Lcom/google/android/gms/internal/play_billing/y0;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, LE1/w;->D:Lcom/google/android/gms/internal/play_billing/A0;

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/A0;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/gms/internal/play_billing/A0;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/play_billing/E0;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/play_billing/E0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, LE1/w;->D:Lcom/google/android/gms/internal/play_billing/A0;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_1
    :goto_1
    iget-object v2, p0, LE1/w;->D:Lcom/google/android/gms/internal/play_billing/A0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/play_billing/H0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lcom/google/android/gms/internal/play_billing/H0;->w:Lcom/google/android/gms/internal/play_billing/y0;

    new-instance v4, Lcom/google/android/gms/internal/play_billing/F0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/google/android/gms/internal/play_billing/F0;->b:Lcom/google/android/gms/internal/play_billing/H0;

    const-wide/16 v5, 0x6f54

    check-cast v2, Lcom/google/android/gms/internal/play_billing/E0;

    invoke-virtual {v2, v4, v5, v6, v1}, Lcom/google/android/gms/internal/play_billing/E0;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/play_billing/H0;->x:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/r0;->b:Lcom/google/android/gms/internal/play_billing/r0;

    invoke-interface {v0, v4, v1}, Lcom/google/android/gms/internal/play_billing/y0;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v0, v3

    :goto_2
    new-instance v1, Lk0/t;

    invoke-direct {v1, p0, p1, p2, p3}, Lk0/t;-><init>(LE1/w;ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, LE1/b;->x:Lcom/google/android/gms/internal/play_billing/z0;

    if-nez p1, :cond_5

    invoke-virtual {p0}, LE1/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/z0;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/z0;

    goto :goto_4

    :cond_3
    instance-of p2, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p2, :cond_4

    new-instance p2, Lcom/google/android/gms/internal/play_billing/E0;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/E0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    :goto_3
    move-object p1, p2

    goto :goto_4

    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/play_billing/B0;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/B0;-><init>(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_3

    :goto_4
    iput-object p1, p0, LE1/b;->x:Lcom/google/android/gms/internal/play_billing/z0;

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_5
    :goto_5
    iget-object p1, p0, LE1/b;->x:Lcom/google/android/gms/internal/play_billing/z0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    new-instance p2, Lcom/google/android/gms/internal/play_billing/t0;

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/t0;-><init>(Lcom/google/android/gms/internal/play_billing/y0;Lk0/t;)V

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/y0;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final a(LE1/a;Lib/player/base/helper/a;)V
    .locals 3

    new-instance v0, LE1/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, LE1/r;-><init>(ILjava/lang/Object;)V

    new-instance v1, LE1/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, LE1/s;-><init>(LE1/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v1}, LE1/w;->C(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 4

    monitor-enter p0

    const/16 v0, 0x1b

    :try_start_0
    invoke-static {v0}, LE1/z;->d(I)Lcom/google/android/gms/internal/play_billing/S1;

    move-result-object v0

    const-string v1, "ApiSuccess should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, LE1/b;->g:LA/j;

    invoke-virtual {v1, v0}, LA/j;->C(Lcom/google/android/gms/internal/play_billing/S1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, LE1/w;->C:LE1/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, LE1/w;->B:Lcom/google/android/gms/internal/play_billing/h;

    if-eqz v1, :cond_0

    const-string v1, "BillingClientTesting"

    const-string v2, "Unbinding from Billing Override Service."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LE1/w;->z:Landroid/content/Context;

    iget-object v2, p0, LE1/w;->C:LE1/v;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, LE1/v;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LE1/v;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, LE1/w;->C:LE1/v;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, LE1/w;->B:Lcom/google/android/gms/internal/play_billing/h;

    iget-object v2, p0, LE1/w;->D:Lcom/google/android/gms/internal/play_billing/A0;

    if-eqz v2, :cond_1

    iget-object v2, p0, LE1/w;->D:Lcom/google/android/gms/internal/play_billing/A0;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/B0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/B0;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, LE1/w;->D:Lcom/google/android/gms/internal/play_billing/A0;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v2, "BillingClientTesting"

    const-string v3, "There was an exception while ending Billing Override Service connection!"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_2
    :try_start_3
    iput v0, p0, LE1/w;->A:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    invoke-super {p0}, LE1/b;->b()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_3
    :try_start_4
    iput v0, p0, LE1/w;->A:I

    throw v1

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final d(Landroid/app/Activity;LE1/d;)LE1/f;
    .locals 8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LE1/w;->A(I)Lcom/google/android/gms/internal/play_billing/y0;

    move-result-object v1

    const-string v2, "BillingClientTesting"

    const/4 v3, 0x0

    const/16 v4, 0x1c

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x6f54

    invoke-interface {v1, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    instance-of v5, v1, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/16 v5, 0x6b

    sget-object v6, LE1/B;->s:LE1/f;

    invoke-virtual {p0, v5, v4, v6}, LE1/w;->B(IILE1/f;)V

    const-string v4, "An error occurred while retrieving billing override."

    invoke-static {v2, v4, v1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const/16 v5, 0x72

    sget-object v6, LE1/B;->s:LE1/f;

    invoke-virtual {p0, v5, v4, v6}, LE1/w;->B(IILE1/f;)V

    const-string v4, "Asynchronous call to Billing Override Service timed out."

    invoke-static {v2, v4, v1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-lez v3, :cond_1

    const-string p1, "Billing override value was set by a license tester."

    invoke-static {v3, p1}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object p1

    const/16 p2, 0x69

    invoke-virtual {p0, p2, v0, p1}, LE1/w;->B(IILE1/f;)V

    invoke-virtual {p0, p1}, LE1/b;->w(LE1/f;)V

    goto :goto_3

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, LE1/b;->d(Landroid/app/Activity;LE1/d;)LE1/f;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    sget-object p2, LE1/B;->i:LE1/f;

    const/16 v1, 0x73

    invoke-virtual {p0, v1, v0, p2}, LE1/w;->B(IILE1/f;)V

    const-string v0, "An internal error occurred."

    invoke-static {v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    return-object p1
.end method

.method public final e(LE1/i;Lib/player/base/helper/a;)V
    .locals 3

    new-instance v0, LE1/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, LE1/r;-><init>(ILjava/lang/Object;)V

    new-instance v1, LE1/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, LE1/s;-><init>(LE1/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0, v1}, LE1/w;->C(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Lcom/bumptech/glide/f;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LE1/w;->z()Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service connection is valid. No need to re-initialize."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, LE1/z;->d(I)Lcom/google/android/gms/internal/play_billing/S1;

    move-result-object v0

    const-string v1, "ApiSuccess should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, LE1/b;->g:LA/j;

    invoke-virtual {v1, v0}, LA/j;->C(Lcom/google/android/gms/internal/play_billing/S1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget v0, p0, LE1/w;->A:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "BillingClientTesting"

    const-string v1, "Client is already in the process of connecting to Billing Override Service."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto/16 :goto_2

    :cond_1
    :try_start_2
    iget v0, p0, LE1/w;->A:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service connection is disconnected."

    const/4 v2, -0x1

    invoke-static {v2, v0}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v0

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1, v0}, LE1/w;->B(IILE1/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto/16 :goto_2

    :cond_2
    :try_start_3
    iput v2, p0, LE1/w;->A:I

    const-string v0, "BillingClientTesting"

    const-string v3, "Starting Billing Override Service setup."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LE1/v;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p0}, LE1/v;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LE1/w;->C:LE1/v;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.apps.play.billingtestcompanion"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, LE1/w;->z:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0x29

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_6

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v6, "com.google.android.apps.play.billingtestcompanion"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x27

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, LE1/w;->z:Landroid/content/Context;

    iget-object v5, p0, LE1/w;->C:LE1/v;

    invoke-virtual {v0, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BillingClientTesting"

    const-string v1, "Billing Override Service was bonded successfully."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_2

    :cond_3
    :try_start_4
    const-string v0, "BillingClientTesting"

    const-string v2, "Connection to Billing Override Service is blocked."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v2, v7

    goto :goto_1

    :cond_4
    const-string v0, "BillingClientTesting"

    const-string v2, "The device doesn\'t have valid Play Billing Lab."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v2, v5

    :cond_6
    :goto_1
    iput v4, p0, LE1/w;->A:I

    const-string v0, "BillingClientTesting"

    const-string v3, "Billing Override Service unavailable on device."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service unavailable on device."

    const/4 v3, 0x2

    invoke-static {v3, v0}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, LE1/w;->B(IILE1/f;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    :goto_2
    invoke-super {p0, p1}, LE1/b;->f(Lcom/bumptech/glide/f;)V

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final synthetic x(LE1/a;Lib/player/base/helper/a;)V
    .locals 0

    invoke-super {p0, p1, p2}, LE1/b;->a(LE1/a;Lib/player/base/helper/a;)V

    return-void
.end method

.method public final synthetic y(LE1/i;Lib/player/base/helper/a;)V
    .locals 0

    invoke-super {p0, p1, p2}, LE1/b;->e(LE1/i;Lib/player/base/helper/a;)V

    return-void
.end method

.method public final declared-synchronized z()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, LE1/w;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LE1/w;->B:Lcom/google/android/gms/internal/play_billing/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, LE1/w;->C:LE1/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
