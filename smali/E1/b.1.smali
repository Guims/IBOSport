.class public LE1/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/Handler;

.field public volatile e:LE1/E;

.field public final f:Landroid/content/Context;

.field public final g:LA/j;

.field public volatile h:Lcom/google/android/gms/internal/play_billing/d;

.field public volatile i:LE1/q;

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public final u:Lu2/j;

.field public final v:Z

.field public w:Ljava/util/concurrent/ExecutorService;

.field public volatile x:Lcom/google/android/gms/internal/play_billing/z0;

.field public final y:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lu2/j;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LE1/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, LE1/b;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, LE1/b;->d:Landroid/os/Handler;

    iput v0, p0, LE1/b;->k:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, LE1/b;->y:Ljava/lang/Long;

    invoke-static {}, LE1/b;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LE1/b;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, LE1/b;->f:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/a2;->r()Lcom/google/android/gms/internal/play_billing/Z1;

    move-result-object p2

    invoke-static {}, LE1/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v3, p2, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/a2;->q(Lcom/google/android/gms/internal/play_billing/a2;Ljava/lang/String;)V

    iget-object v2, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v3, p2, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/a2;->p(Lcom/google/android/gms/internal/play_billing/a2;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/a2;->o(Lcom/google/android/gms/internal/play_billing/a2;J)V

    iget-object v0, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/a2;

    new-instance v1, LA/j;

    invoke-direct {v1, v0, p2}, LA/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/a2;)V

    iput-object v1, p0, LE1/b;->g:LA/j;

    const-string p2, "BillingClient"

    const-string v0, "Billing client should have a valid listener but the provided is null."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, LE1/E;

    iget-object v0, p0, LE1/b;->f:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, LE1/b;->g:LA/j;

    invoke-direct {p2, v0, v1, v2}, LE1/E;-><init>(Landroid/content/Context;Lib/player/base/helper/c;LA/j;)V

    iput-object p2, p0, LE1/b;->e:LE1/E;

    iput-object p1, p0, LE1/b;->u:Lu2/j;

    iget-object p1, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu2/j;Landroid/content/Context;Lib/player/base/helper/c;)V
    .locals 5

    invoke-static {}, LE1/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LE1/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, LE1/b;->b:I

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, LE1/b;->d:Landroid/os/Handler;

    iput v1, p0, LE1/b;->k:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, LE1/b;->y:Ljava/lang/Long;

    iput-object v0, p0, LE1/b;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, LE1/b;->f:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/a2;->r()Lcom/google/android/gms/internal/play_billing/Z1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v4, p2, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/a2;->q(Lcom/google/android/gms/internal/play_billing/a2;Ljava/lang/String;)V

    iget-object v0, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v4, p2, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/a2;->p(Lcom/google/android/gms/internal/play_billing/a2;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v0, p2, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/play_billing/a2;->o(Lcom/google/android/gms/internal/play_billing/a2;J)V

    iget-object v0, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/a2;

    new-instance v2, LA/j;

    invoke-direct {v2, v0, p2}, LA/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/a2;)V

    iput-object v2, p0, LE1/b;->g:LA/j;

    if-nez p3, :cond_0

    const-string p2, "BillingClient"

    const-string v0, "Billing client should have a valid listener but the provided is null."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, LE1/E;

    iget-object v0, p0, LE1/b;->f:Landroid/content/Context;

    iget-object v2, p0, LE1/b;->g:LA/j;

    invoke-direct {p2, v0, p3, v2}, LE1/E;-><init>(Landroid/content/Context;Lib/player/base/helper/c;LA/j;)V

    iput-object p2, p0, LE1/b;->e:LE1/E;

    iput-object p1, p0, LE1/b;->u:Lu2/j;

    iput-boolean v1, p0, LE1/b;->v:Z

    iget-object p1, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2

    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p1, p1

    new-instance p5, LE1/k;

    const/4 v0, 0x1

    invoke-direct {p5, p0, v0, p3}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string p2, "Async task throws exception!"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VERSION_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "7.1.1"

    return-object v0
.end method


# virtual methods
.method public a(LE1/a;Lib/player/base/helper/a;)V
    .locals 8

    invoke-virtual {p0}, LE1/b;->c()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    sget-object p1, LE1/B;->k:LE1/f;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {p2, p1}, Lib/player/base/helper/a;->a(LE1/f;)V

    return-void

    :cond_0
    iget-object v0, p1, LE1/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, LE1/B;->h:LE1/f;

    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1, p1}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {p2, p1}, Lib/player/base/helper/a;->a(LE1/f;)V

    return-void

    :cond_1
    iget-boolean v0, p0, LE1/b;->m:Z

    if-nez v0, :cond_2

    sget-object p1, LE1/B;->b:LE1/f;

    const/16 v0, 0x1b

    invoke-virtual {p0, v0, v1, p1}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {p2, p1}, Lib/player/base/helper/a;->a(LE1/f;)V

    return-void

    :cond_2
    new-instance v2, LE1/l;

    const/4 v0, 0x2

    invoke-direct {v2, p0, p2, p1, v0}, LE1/l;-><init>(LE1/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v5, LE1/k;

    const/4 p1, 0x4

    invoke-direct {v5, p0, p1, p2}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0}, LE1/b;->s()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, LE1/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    invoke-static/range {v2 .. v7}, LE1/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, LE1/b;->h()LE1/f;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v1, p1}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {p2, p1}, Lib/player/base/helper/a;->a(LE1/f;)V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 5

    const/16 v0, 0xc

    :try_start_0
    invoke-static {v0}, LE1/z;->d(I)Lcom/google/android/gms/internal/play_billing/S1;

    move-result-object v0

    invoke-virtual {p0, v0}, LE1/b;->m(Lcom/google/android/gms/internal/play_billing/S1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, LE1/b;->e:LE1/E;

    if-eqz v1, :cond_0

    iget-object v1, p0, LE1/b;->e:LE1/E;

    iget-object v2, v1, LE1/E;->e:Ljava/lang/Object;

    check-cast v2, LE1/D;

    iget-object v3, v1, LE1/E;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, LE1/D;->b(Landroid/content/Context;)V

    iget-object v1, v1, LE1/E;->f:Ljava/lang/Object;

    check-cast v1, LE1/D;

    invoke-virtual {v1, v3}, LE1/D;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_2
    const-string v2, "BillingClient"

    const-string v3, "There was an exception while shutting down broadcast manager while ending connection!"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    :goto_1
    :try_start_3
    const-string v1, "BillingClient"

    const-string v2, "Unbinding from service."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LE1/b;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_4
    const-string v2, "BillingClient"

    const-string v3, "There was an exception while unbinding from the service while ending connection!"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_2
    const/4 v1, 0x3

    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    iget-object v2, p0, LE1/b;->w:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, LE1/b;->w:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, LE1/b;->x:Lcom/google/android/gms/internal/play_billing/z0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_3
    move-exception v2

    goto :goto_4

    :goto_3
    :try_start_8
    invoke-virtual {p0, v1}, LE1/b;->n(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    goto :goto_6

    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v2

    :try_start_b
    const-string v3, "BillingClient"

    const-string v4, "There was an exception while shutting down the executor service while ending connection!"

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_3

    :goto_5
    :try_start_c
    monitor-exit v0

    return-void

    :catchall_6
    move-exception v2

    invoke-virtual {p0, v1}, LE1/b;->n(I)V

    throw v2

    :goto_6
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LE1/b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, LE1/b;->i:LE1/q;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Landroid/app/Activity;LE1/d;)LE1/f;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    const-string v8, "BUY_INTENT"

    const-string v0, "proxyPackageVersion"

    iget-object v2, v1, LE1/b;->e:LE1/E;

    const/4 v9, 0x2

    if-eqz v2, :cond_42

    iget-object v2, v1, LE1/b;->e:LE1/E;

    iget-object v2, v2, LE1/E;->c:Ljava/lang/Object;

    check-cast v2, Lib/player/base/helper/c;

    if-eqz v2, :cond_42

    invoke-virtual {v1}, LE1/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, LE1/B;->k:LE1/f;

    invoke-virtual {v1, v9, v9, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v0}, LE1/b;->w(LE1/f;)V

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v5, LE1/d;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_41

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/C;->iterator()Ljava/util/Iterator;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/z;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/z;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/z;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    check-cast v4, LE1/c;

    iget-object v6, v4, LE1/c;->a:LE1/h;

    iget-object v11, v6, LE1/h;->c:Ljava/lang/String;

    iget-object v6, v6, LE1/h;->d:Ljava/lang/String;

    const-string v12, "subs"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x9

    const-string v14, "BillingClient"

    if-eqz v12, :cond_4

    iget-boolean v12, v1, LE1/b;->j:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "Current client doesn\'t support subscriptions."

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LE1/B;->m:LE1/f;

    invoke-virtual {v1, v13, v9, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v0}, LE1/b;->w(LE1/f;)V

    return-object v0

    :cond_4
    :goto_2
    iget-object v12, v5, LE1/d;->b:Ljava/lang/Object;

    check-cast v12, Lh3/e;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/play_billing/C;

    invoke-interface {v12}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v15, LE1/x;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-interface {v12, v15}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-boolean v12, v5, LE1/d;->a:Z

    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean v12, v1, LE1/b;->l:Z

    if-eqz v12, :cond_40

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x1

    if-le v12, v15, :cond_7

    iget-boolean v12, v1, LE1/b;->p:Z

    if-eqz v12, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "Current client doesn\'t support multi-item purchases."

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LE1/B;->n:LE1/f;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v9, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v0}, LE1/b;->w(LE1/f;)V

    return-object v0

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    iget-boolean v12, v1, LE1/b;->q:Z

    if-eqz v12, :cond_8

    goto :goto_5

    :cond_8
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LE1/B;->p:LE1/f;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v9, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v0}, LE1/b;->w(LE1/f;)V

    return-object v0

    :cond_9
    :goto_5
    iget-object v12, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, LE1/B;->j:LE1/f;

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object/from16 v21, v11

    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_a
    iget-object v12, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/play_billing/C;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LE1/c;

    const/16 v16, 0x1

    move/from16 v13, v16

    :goto_6
    iget-object v15, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->size()I

    move-result v15

    const/16 v18, 0x0

    const-string v10, "play_pass_subs"

    if-ge v13, v15, :cond_d

    iget-object v15, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/play_billing/C;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LE1/c;

    iget-object v9, v15, LE1/c;->a:LE1/h;

    iget-object v9, v9, LE1/h;->d:Ljava/lang/String;

    move-object/from16 v20, v6

    iget-object v6, v12, LE1/c;->a:LE1/h;

    iget-object v6, v6, LE1/h;->d:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v15, LE1/c;->a:LE1/h;

    iget-object v6, v6, LE1/h;->d:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    const-string v6, "All products should have same ProductType."

    const/4 v9, 0x5

    invoke-static {v9, v6}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v12

    move-object/from16 v23, v8

    move-object/from16 v21, v11

    goto/16 :goto_a

    :cond_c
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v20

    const/4 v9, 0x2

    goto :goto_6

    :cond_d
    move-object/from16 v20, v6

    iget-object v6, v12, LE1/c;->a:LE1/h;

    iget-object v9, v6, LE1/h;->b:Lorg/json/JSONObject;

    const-string v12, "packageName"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v21, v11

    iget-object v11, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/play_billing/C;

    move-object/from16 v22, v15

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v23, v8

    const/4 v8, 0x0

    :goto_8
    const-string v7, "."

    if-ge v8, v15, :cond_11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v24, v8

    move-object/from16 v8, v17

    check-cast v8, LE1/c;

    iget-object v8, v8, LE1/c;->a:LE1/h;

    move-object/from16 v17, v11

    iget-object v11, v8, LE1/h;->d:Ljava/lang/String;

    move/from16 v25, v15

    const-string v15, "subs"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v11, v8, LE1/h;->c:Ljava/lang/String;

    iget-object v15, v8, LE1/h;->c:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "ProductId can not be duplicated. Invalid product id: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x5

    invoke-static {v9, v6}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v12

    goto/16 :goto_a

    :cond_e
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, LE1/h;->d:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v8, LE1/h;->d:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v8, LE1/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_9

    :cond_f
    const-string v6, "All products must have the same package name."

    const/4 v9, 0x5

    invoke-static {v9, v6}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v12

    goto :goto_a

    :cond_10
    :goto_9
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v11, v17

    move/from16 v15, v25

    goto :goto_8

    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "OldProductId must not be one of the products to be purchased. Invalid old product id: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x5

    invoke-static {v9, v6}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v12

    goto :goto_a

    :cond_13
    const/4 v9, 0x5

    invoke-virtual {v6}, LE1/h;->a()LE1/g;

    move-result-object v6

    if-eqz v6, :cond_14

    iget-object v6, v6, LE1/g;->c:Lu2/j;

    if-eqz v6, :cond_14

    const-string v6, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay."

    invoke-static {v9, v6}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v12

    goto :goto_a

    :cond_14
    sget-object v12, LE1/B;->j:LE1/f;

    :goto_a
    sget-object v6, LE1/B;->j:LE1/f;

    if-eq v12, v6, :cond_15

    const/16 v0, 0x78

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v12}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v12}, LE1/b;->w(LE1/f;)V

    return-object v12

    :cond_15
    iget-boolean v6, v1, LE1/b;->l:Z

    if-eqz v6, :cond_38

    iget-boolean v6, v1, LE1/b;->m:Z

    iget-object v7, v1, LE1/b;->u:Lu2/j;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, LE1/b;->u:Lu2/j;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v1, LE1/b;->v:Z

    iget-object v8, v1, LE1/b;->c:Ljava/lang/String;

    iget-object v9, v1, LE1/b;->y:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v1, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move v12, v6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {v6, v8, v9, v10}, Lcom/google/android/gms/internal/play_billing/o0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    iget-object v8, v5, LE1/d;->b:Ljava/lang/Object;

    check-cast v8, Lh3/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "accountId"

    move-object/from16 v9, v18

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    move-object/from16 v9, v18

    :goto_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, "obfuscatedProfileId"

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    new-instance v8, Ljava/util/ArrayList;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v10, "skusToReplace"

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_18
    iget-object v8, v5, LE1/d;->b:Ljava/lang/Object;

    check-cast v8, Lh3/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v8, v5, LE1/d;->b:Ljava/lang/Object;

    check-cast v8, Lh3/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "oldSkuPurchaseToken"

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "oldSkuPurchaseId"

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget-object v8, v5, LE1/d;->b:Ljava/lang/Object;

    check-cast v8, Lh3/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    iget-object v8, v5, LE1/d;->b:Ljava/lang/Object;

    check-cast v8, Lh3/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "originalExternalTransactionId"

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "paymentsPurchaseParams"

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz v12, :cond_1d

    const-string v8, "enablePendingPurchases"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_c

    :cond_1d
    const/4 v9, 0x1

    :goto_c
    if-eqz v7, :cond_1e

    const-string v7, "enableAlternativeBilling"

    invoke-virtual {v6, v7, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1e
    iget-object v7, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/play_billing/C;

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/play_billing/a;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/play_billing/a;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/O0;->n()Lcom/google/android/gms/internal/play_billing/N0;

    move-result-object v7

    iget-object v8, v5, LE1/d;->c:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/play_billing/C;

    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/play_billing/a;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/play_billing/a;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/play_billing/s;

    invoke-direct {v9, v11}, Lcom/google/android/gms/internal/play_billing/s;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/play_billing/p;->a:Ljava/util/stream/Collector;

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v9, v7, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/O0;

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/play_billing/O0;->o(Lcom/google/android/gms/internal/play_billing/O0;Ljava/lang/Iterable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/play_billing/O0;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/S0;->b()[B

    move-result-object v7

    const-string v8, "subscriptionProductReplacementParamsList"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const-string v8, "SKU_OFFER_ID_TOKEN_LIST"

    const-string v9, "additionalSkuTypes"

    const-string v10, "additionalSkus"

    const-string v11, "skuDetailsTokens"

    if-nez v7, :cond_24

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_23

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_20

    invoke-virtual {v6, v11, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x1

    if-le v7, v11, :cond_21

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v11, v15, :cond_22

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v9, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_21
    move-object/from16 v19, v0

    move-object/from16 v24, v4

    move-object/from16 v22, v14

    goto/16 :goto_10

    :cond_22
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_23
    invoke-static {v13}, LB/f;->k(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v0

    move-object/from16 v22, v14

    const/4 v0, 0x0

    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_2b

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LE1/c;

    move-object/from16 v24, v4

    iget-object v4, v14, LE1/c;->a:LE1/h;

    iget-object v1, v4, LE1/h;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v4, LE1/h;->f:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v1, v14, LE1/c;->b:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v4, LE1/h;->g:Ljava/lang/String;

    iget-object v14, v4, LE1/h;->i:Ljava/util/ArrayList;

    if-eqz v14, :cond_27

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_27

    iget-object v4, v4, LE1/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v25, v1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v14, :cond_28

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    add-int/lit8 v1, v1, 0x1

    move/from16 v27, v1

    move-object/from16 v1, v26

    check-cast v1, LE1/g;

    move-object/from16 v26, v4

    iget-object v4, v1, LE1/g;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v1, v1, LE1/g;->b:Ljava/lang/String;

    goto :goto_f

    :cond_26
    move-object/from16 v4, v26

    move/from16 v1, v27

    goto :goto_e

    :cond_27
    move-object/from16 v25, v1

    :cond_28
    move-object/from16 v1, v25

    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    if-lez v0, :cond_2a

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE1/c;

    iget-object v1, v1, LE1/c;->a:LE1/h;

    iget-object v1, v1, LE1/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE1/c;

    iget-object v1, v1, LE1/c;->a:LE1/h;

    iget-object v1, v1, LE1/h;->d:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v24

    goto/16 :goto_d

    :cond_2b
    move-object/from16 v24, v4

    invoke-virtual {v6, v8, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "AUTO_PAY_BALANCE_THRESHOLD_LIST"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v6, v11, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2c
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "SKU_SERIALIZED_DOCID_LIST"

    invoke-virtual {v6, v0, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2e
    :goto_10
    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v1, p0

    if-eqz v0, :cond_2f

    iget-boolean v0, v1, LE1/b;->n:Z

    if-eqz v0, :cond_30

    :cond_2f
    move-object/from16 v4, v24

    goto :goto_11

    :cond_30
    sget-object v0, LE1/B;->o:LE1/f;

    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v0}, LE1/b;->w(LE1/f;)V

    return-object v0

    :goto_11
    iget-object v0, v4, LE1/c;->a:LE1/h;

    iget-object v0, v0, LE1/h;->b:Lorg/json/JSONObject;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, v4, LE1/c;->a:LE1/h;

    iget-object v0, v0, LE1/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "skuPackageName"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :goto_12
    const/4 v7, 0x0

    goto :goto_13

    :cond_31
    const/4 v9, 0x0

    goto :goto_12

    :goto_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "accountName"

    invoke-virtual {v6, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_33

    const-string v0, "Activity\'s intent is null."

    move-object/from16 v8, v22

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_33
    move-object/from16 v8, v22

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "proxyPackage"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, v19

    :try_start_1
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_14

    :catch_0
    move-object/from16 v2, v19

    :catch_1
    const-string v0, "package not found"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_14
    iget-boolean v0, v1, LE1/b;->q:Z

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    const/16 v13, 0x11

    :goto_15
    move v2, v13

    goto :goto_16

    :cond_35
    iget-boolean v0, v1, LE1/b;->o:Z

    if-eqz v0, :cond_36

    if-eqz v9, :cond_36

    const/16 v13, 0xf

    goto :goto_15

    :cond_36
    iget-boolean v0, v1, LE1/b;->m:Z

    if-eqz v0, :cond_37

    const/16 v2, 0x9

    goto :goto_16

    :cond_37
    const/4 v13, 0x6

    goto :goto_15

    :goto_16
    new-instance v0, LE1/m;

    move-object/from16 v5, p2

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    invoke-direct/range {v0 .. v6}, LE1/m;-><init>(LE1/b;ILjava/lang/String;Ljava/lang/String;LE1/d;Landroid/os/Bundle;)V

    iget-object v13, v1, LE1/b;->d:Landroid/os/Handler;

    invoke-virtual {v1}, LE1/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    const-wide/16 v10, 0x1388

    const/4 v12, 0x0

    move-object v9, v0

    invoke-static/range {v9 .. v14}, LE1/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_17

    :cond_38
    move-object v8, v14

    move-object/from16 v7, v18

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    new-instance v9, LE1/l;

    const/4 v0, 0x1

    invoke-direct {v9, v1, v3, v4, v0}, LE1/l;-><init>(LE1/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v13, v1, LE1/b;->d:Landroid/os/Handler;

    invoke-virtual {v1}, LE1/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    const-wide/16 v10, 0x1388

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, LE1/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_17
    if-nez v0, :cond_39

    :try_start_2
    sget-object v0, LE1/B;->d:LE1/f;

    const/16 v2, 0x19

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v0}, LE1/b;->w(LE1/f;)V

    return-object v0

    :catch_2
    move-exception v0

    goto/16 :goto_1f

    :catch_3
    move-exception v0

    goto/16 :goto_20

    :catch_4
    move-exception v0

    goto/16 :goto_20

    :cond_39
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/play_billing/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/play_billing/o0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to buy item, Error response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v3
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_3a

    :goto_18
    const/4 v9, 0x1

    :goto_19
    const/4 v11, 0x1

    goto :goto_1b

    :cond_3a
    :try_start_3
    const-string v0, "LOG_REASON"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3b

    goto :goto_18

    :cond_3b
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_3c

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/d1;->n(I)I

    move-result v9

    goto :goto_19

    :catchall_0
    move-exception v0

    goto :goto_1a

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type for bundle log reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_18

    :goto_1a
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Failed to get log reason from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_18

    :goto_1b
    if-ne v9, v11, :cond_3d

    const/16 v9, 0x17

    :cond_3d
    if-nez v2, :cond_3e

    :goto_1c
    move-object v10, v7

    :goto_1d
    const/4 v2, 0x2

    goto :goto_1e

    :cond_3e
    :try_start_5
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1d

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to get additional log details from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :goto_1e
    invoke-virtual {v1, v9, v2, v3, v10}, LE1/b;->v(IILE1/f;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LE1/b;->w(LE1/f;)V

    return-object v3

    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v7, p1

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    sget-object v0, LE1/B;->j:LE1/f;

    return-object v0

    :goto_1f
    const-string v2, "Exception while launching billing flow. Try to reconnect"

    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, LE1/B;->k:LE1/f;

    invoke-static {v0}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4, v2, v0}, LE1/b;->v(IILE1/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LE1/b;->w(LE1/f;)V

    return-object v2

    :goto_20
    const-string v2, "Time out while launching billing flow. Try to reconnect"

    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, LE1/B;->l:LE1/f;

    invoke-static {v0}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4, v2, v0}, LE1/b;->v(IILE1/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LE1/b;->w(LE1/f;)V

    return-object v2

    :cond_40
    move v4, v9

    move-object v8, v14

    const-string v0, "Current client doesn\'t support extra params for buy intent."

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LE1/B;->g:LE1/f;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v4, v0}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v0}, LE1/b;->w(LE1/f;)V

    return-object v0

    :cond_41
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_42
    move v4, v9

    sget-object v0, LE1/B;->r:LE1/f;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4, v0}, LE1/b;->u(IILE1/f;)V

    return-object v0
.end method

.method public e(LE1/i;Lib/player/base/helper/a;)V
    .locals 8

    invoke-virtual {p0}, LE1/b;->c()Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_0

    sget-object p1, LE1/B;->k:LE1/f;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, LE1/b;->u(IILE1/f;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1, v0}, Lib/player/base/helper/a;->b(LE1/f;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    iget-boolean v0, p0, LE1/b;->q:Z

    if-nez v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Querying product details is not supported."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, LE1/B;->p:LE1/f;

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v1, p1}, LE1/b;->u(IILE1/f;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1, v0}, Lib/player/base/helper/a;->b(LE1/f;Ljava/util/ArrayList;)V

    return-void

    :cond_1
    new-instance v2, LE1/l;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, p2, v0}, LE1/l;-><init>(LE1/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v5, LE1/k;

    const/4 p1, 0x2

    invoke-direct {v5, p0, p1, p2}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0}, LE1/b;->s()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, LE1/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    invoke-static/range {v2 .. v7}, LE1/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, LE1/b;->h()LE1/f;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v1, p1}, LE1/b;->u(IILE1/f;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1, v0}, Lib/player/base/helper/a;->b(LE1/f;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public f(Lcom/bumptech/glide/f;)V
    .locals 8

    iget-object v0, p0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LE1/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LE1/b;->t()LE1/f;

    move-result-object v1

    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    iget v1, p0, LE1/b;->b:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "Client is already in the process of connecting to billing service."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LE1/B;->e:LE1/f;

    const/16 v3, 0x25

    invoke-virtual {p0, v3, v2, v1}, LE1/b;->u(IILE1/f;)V

    monitor-exit v0

    goto/16 :goto_2

    :cond_1
    iget v1, p0, LE1/b;->b:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const-string v1, "BillingClient"

    const-string v3, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LE1/B;->k:LE1/f;

    const/16 v3, 0x26

    invoke-virtual {p0, v3, v2, v1}, LE1/b;->u(IILE1/f;)V

    monitor-exit v0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0, v3}, LE1/b;->n(I)V

    invoke-virtual {p0}, LE1/b;->o()V

    const-string v1, "BillingClient"

    const-string v4, "Starting in-app billing setup."

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, LE1/q;

    invoke-direct {v1, p0, p1}, LE1/q;-><init>(LE1/b;Lcom/bumptech/glide/f;)V

    iput-object v1, p0, LE1/b;->i:LE1/q;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/16 v5, 0x29

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/16 v5, 0x28

    if-eqz v1, :cond_7

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v7, "com.android.vending"

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, LE1/b;->c:Ljava/lang/String;

    const-string v5, "playBillingLibraryVersion"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v5, p0, LE1/b;->b:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, LE1/b;->t()LE1/f;

    move-result-object v1

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_3
    iget v5, p0, LE1/b;->b:I

    if-eq v5, v3, :cond_4

    const-string v1, "BillingClient"

    const-string v3, "Client state no longer CONNECTING, returning service disconnected."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LE1/B;->k:LE1/f;

    const/16 v3, 0x75

    invoke-virtual {p0, v3, v2, v1}, LE1/b;->u(IILE1/f;)V

    monitor-exit v0

    goto :goto_2

    :cond_4
    iget-object v5, p0, LE1/b;->i:LE1/q;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BillingClient"

    const-string v1, "Service was bonded successfully."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const-string v0, "BillingClient"

    const-string v1, "Connection to Billing service is blocked."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x27

    goto :goto_1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    const-string v0, "BillingClient"

    const-string v1, "The device doesn\'t have valid Play Store."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "BillingClient"

    const-string v1, "The device doesn\'t have valid Play Store."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual {p0, v4}, LE1/b;->n(I)V

    const-string v0, "BillingClient"

    const-string v1, "Billing service unavailable on device."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LE1/B;->c:LE1/f;

    invoke-virtual {p0, v5, v2, v1}, LE1/b;->u(IILE1/f;)V

    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/f;->O(LE1/f;)V

    :cond_9
    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final h()LE1/f;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object v2, p0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :try_start_0
    aget v3, v0, v1

    iget v4, p0, LE1/b;->b:I

    if-ne v4, v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LE1/B;->k:LE1/f;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, LE1/B;->i:LE1/f;

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized k()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LE1/b;->w:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/play_billing/o0;->a:I

    new-instance v1, LE1/n;

    invoke-direct {v1}, LE1/n;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LE1/b;->w:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LE1/b;->w:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l(Lcom/google/android/gms/internal/play_billing/Q1;)V
    .locals 5

    const-string v0, "Unable to log."

    :try_start_0
    iget-object v1, p0, LE1/b;->g:LA/j;

    iget v2, p0, LE1/b;->k:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, LA/j;->q:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/g1;->g()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/Z1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/a2;->n(Lcom/google/android/gms/internal/play_billing/a2;I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/a2;

    iput-object v2, v1, LA/j;->q:Ljava/lang/Object;

    invoke-virtual {v1, p1}, LA/j;->B(Lcom/google/android/gms/internal/play_billing/Q1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "BillingLogger"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v1, "BillingClient"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/play_billing/S1;)V
    .locals 5

    const-string v0, "Unable to log."

    :try_start_0
    iget-object v1, p0, LE1/b;->g:LA/j;

    iget v2, p0, LE1/b;->k:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, LA/j;->q:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/g1;->g()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/Z1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/a2;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/a2;->n(Lcom/google/android/gms/internal/play_billing/a2;I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/a2;

    iput-object v2, v1, LA/j;->q:Ljava/lang/Object;

    invoke-virtual {v1, p1}, LA/j;->C(Lcom/google/android/gms/internal/play_billing/S1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "BillingLogger"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v1, "BillingClient"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n(I)V
    .locals 6

    const-string v0, "Setting clientState from "

    iget-object v1, p0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, LE1/b;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v2, "BillingClient"

    iget v3, p0, LE1/b;->b:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    const-string v3, "CLOSED"

    goto :goto_0

    :cond_1
    const-string v3, "CONNECTED"

    goto :goto_0

    :cond_2
    const-string v3, "CONNECTING"

    goto :goto_0

    :cond_3
    const-string v3, "DISCONNECTED"

    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    const-string v4, "CLOSED"

    goto :goto_1

    :cond_4
    const-string v4, "CONNECTED"

    goto :goto_1

    :cond_5
    const-string v4, "CONNECTING"

    goto :goto_1

    :cond_6
    const-string v4, "DISCONNECTED"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, LE1/b;->b:I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o()V
    .locals 5

    iget-object v0, p0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE1/b;->i:LE1/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, LE1/b;->f:Landroid/content/Context;

    iget-object v3, p0, LE1/b;->i:LE1/q;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v1, p0, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    iput-object v1, p0, LE1/b;->i:LE1/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    const-string v3, "BillingClient"

    const-string v4, "There was an exception while unbinding service!"

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iput-object v1, p0, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    iput-object v1, p0, LE1/b;->i:LE1/q;

    goto :goto_0

    :catchall_2
    move-exception v2

    iput-object v1, p0, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    iput-object v1, p0, LE1/b;->i:LE1/q;

    throw v2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;
    .locals 1

    const-string v0, "BillingClient"

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x7

    invoke-static {p4}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p3, p1, p4}, LE1/b;->v(IILE1/f;Ljava/lang/String;)V

    new-instance p2, LA/d;

    iget p3, p1, LE1/f;->a:I

    iget-object p1, p1, LE1/f;->b:Ljava/lang/String;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p1, p4}, LA/d;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-object p2
.end method

.method public final q(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/j;
    .locals 2

    const/16 v0, 0x9

    invoke-static {p4}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, p1, v1}, LE1/b;->v(IILE1/f;Ljava/lang/String;)V

    const-string p2, "BillingClient"

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, LA/j;

    const/16 p3, 0x9

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3, p4}, LA/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    return-object p2
.end method

.method public final r(Lib/player/base/helper/a;LE1/f;ILjava/lang/Exception;)V
    .locals 2

    const-string v0, "BillingClient"

    const-string v1, "Error in acknowledge purchase!"

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    invoke-static {p4}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, LE1/b;->v(IILE1/f;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lib/player/base/helper/a;->a(LE1/f;)V

    return-void
.end method

.method public final s()Landroid/os/Handler;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LE1/b;->d:Landroid/os/Handler;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public final t()LE1/f;
    .locals 3

    const-string v0, "BillingClient"

    const-string v1, "Service connection is valid. No need to re-initialize."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S1;->p()Lcom/google/android/gms/internal/play_billing/R1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/S1;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/S1;->o(Lcom/google/android/gms/internal/play_billing/S1;I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/n2;->o()Lcom/google/android/gms/internal/play_billing/m2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/n2;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/n2;->n(Lcom/google/android/gms/internal/play_billing/n2;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/S1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/n2;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/S1;->n(Lcom/google/android/gms/internal/play_billing/S1;Lcom/google/android/gms/internal/play_billing/n2;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/S1;

    invoke-virtual {p0, v0}, LE1/b;->m(Lcom/google/android/gms/internal/play_billing/S1;)V

    sget-object v0, LE1/B;->j:LE1/f;

    return-object v0
.end method

.method public final u(IILE1/f;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, LE1/z;->b(IILE1/f;)Lcom/google/android/gms/internal/play_billing/Q1;

    move-result-object p1

    invoke-virtual {p0, p1}, LE1/b;->l(Lcom/google/android/gms/internal/play_billing/Q1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v(IILE1/f;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3, p4}, LE1/z;->c(IILE1/f;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/Q1;

    move-result-object p1

    invoke-virtual {p0, p1}, LE1/b;->l(Lcom/google/android/gms/internal/play_billing/Q1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(LE1/f;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LE1/k;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, LE1/b;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
