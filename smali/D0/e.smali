.class public final synthetic LD0/e;
.super Ljava/lang/Object;

# interfaces
.implements LD0/q;
.implements Lg2/f;


# instance fields
.field public final synthetic b:Z

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LD0/e;->q:Ljava/lang/Object;

    iput-object p2, p0, LD0/e;->r:Ljava/lang/Object;

    iput-boolean p3, p0, LD0/e;->b:Z

    iput-object p4, p0, LD0/e;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(ILandroidx/media3/common/TrackGroup;[I)Lp3/Y;
    .locals 11

    iget-object v0, p0, LD0/e;->q:Ljava/lang/Object;

    check-cast v0, LD0/t;

    iget-object v1, p0, LD0/e;->r:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, LD0/l;

    iget-object v1, p0, LD0/e;->s:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, LD0/g;

    invoke-direct {v9, v0}, LD0/g;-><init>(LD0/t;)V

    aget v10, v1, p1

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    iget v1, p2, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v1, :cond_0

    new-instance v2, LD0/h;

    aget v7, p3, v5

    iget-boolean v8, p0, LD0/e;->b:Z

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, LD0/h;-><init>(ILandroidx/media3/common/TrackGroup;ILD0/l;IZLD0/g;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lp3/E;->i()Lp3/Y;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 9

    iget-object v0, p0, LD0/e;->q:Ljava/lang/Object;

    check-cast v0, LL3/b;

    iget-object v1, p0, LD0/e;->r:Ljava/lang/Object;

    check-cast v1, LL2/i;

    iget-object v2, p0, LD0/e;->s:Ljava/lang/Object;

    check-cast v2, LE3/b;

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, LL2/i;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean p1, p0, LD0/e;->b:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {p1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, LA/o;

    const/16 v6, 0xb

    invoke-direct {v5, v0, v6, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, LE3/x;->a:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0x2

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v7, v4

    :goto_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move v3, v6

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-long v4, v7, v4

    move v6, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p1

    :cond_2
    :goto_2
    invoke-virtual {v1, v2}, LL2/i;->b(Ljava/lang/Object;)V

    return-void
.end method
