.class public final Lcom/google/android/gms/internal/play_billing/t0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/google/android/gms/internal/play_billing/y0;

.field public final q:Lk0/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/y0;Lk0/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/t0;->b:Lcom/google/android/gms/internal/play_billing/y0;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/t0;->q:Lk0/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/t0;->q:Lk0/t;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/t0;->b:Lcom/google/android/gms/internal/play_billing/y0;

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/K0;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/play_billing/K0;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/n0;

    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/j0;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/n0;->b:Ljava/lang/Object;

    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/e0;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/gms/internal/play_billing/e0;

    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/e0;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lk0/t;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    const-string v3, "Future was expected to be done: %s"
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_3

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_7

    :cond_3
    :goto_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lk0/t;->d:Ljava/lang/Object;

    check-cast v3, LE1/w;

    if-lez v2, :cond_4

    iget v2, v0, Lk0/t;->a:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "Billing override value was set by a license tester."

    invoke-static {v1, v4}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v1

    const/16 v4, 0x69

    invoke-virtual {v3, v4, v2, v1}, LE1/w;->B(IILE1/f;)V

    iget-object v0, v0, Lk0/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-object v0, v0, Lk0/t;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_4
    return-void

    :catchall_1
    move-exception v1

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :goto_5
    throw v1

    :catch_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/d1;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-virtual {v0, v1}, Lk0/t;->e(Ljava/lang/Throwable;)V

    return-void

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk0/t;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, LJ/l;

    const-class v1, Lcom/google/android/gms/internal/play_billing/t0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LJ/l;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, LJ/l;->q:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/i;

    iput-object v1, v2, Lcom/google/android/gms/internal/play_billing/i;->b:Lcom/google/android/gms/internal/play_billing/i;

    iput-object v1, v0, LJ/l;->q:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/t0;->q:Lk0/t;

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/i;->a:Ljava/lang/Object;

    invoke-virtual {v0}, LJ/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
