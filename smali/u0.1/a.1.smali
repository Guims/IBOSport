.class public final Lu0/a;
.super Landroid/os/Handler;


# instance fields
.field public a:Z

.field public final synthetic b:Lu0/c;


# direct methods
.method public constructor <init>(Lu0/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lu0/a;->b:Lu0/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu0/b;

    const/4 v1, 0x1

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lu0/a;->b:Lu0/c;

    iget-object v3, v2, Lu0/c;->k:Lu0/D;

    iget-object v2, v2, Lu0/c;->l:Ljava/util/UUID;

    iget-object v4, v0, Lu0/b;->c:Ljava/lang/Object;

    check-cast v4, Lu0/v;

    check-cast v3, Lu0/B;

    invoke-virtual {v3, v2, v4}, Lu0/B;->a(Ljava/util/UUID;Lu0/v;)[B

    move-result-object v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Lu0/a;->b:Lu0/c;

    iget-object v2, v2, Lu0/c;->k:Lu0/D;

    iget-object v3, v0, Lu0/b;->c:Ljava/lang/Object;

    check-cast v3, Lu0/w;

    check-cast v2, Lu0/B;

    invoke-virtual {v2, v3}, Lu0/B;->b(Lu0/w;)[B

    move-result-object v1
    :try_end_0
    .catch Lu0/E; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :goto_0
    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v1}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lu0/b;

    iget-boolean v4, v3, Lu0/b;->b:Z

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    iget v4, v3, Lu0/b;->d:I

    add-int/2addr v4, v1

    iput v4, v3, Lu0/b;->d:I

    iget-object v5, p0, Lu0/a;->b:Lu0/c;

    iget-object v5, v5, Lu0/c;->i:LE0/m;

    check-cast v5, LE0/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    goto/16 :goto_5

    :cond_3
    new-instance v4, Landroidx/media3/exoplayer/source/v;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    goto :goto_2

    :cond_4
    new-instance v4, LI1/c;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    iget-object v5, p0, Lu0/a;->b:Lu0/c;

    iget-object v5, v5, Lu0/c;->i:LE0/m;

    iget v3, v3, Lu0/b;->d:I

    check-cast v5, LE0/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Landroidx/media3/common/ParserException;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v5, :cond_6

    instance-of v5, v4, Ljava/io/FileNotFoundException;

    if-nez v5, :cond_6

    instance-of v5, v4, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v5, :cond_6

    instance-of v5, v4, LE0/r;

    if-nez v5, :cond_6

    invoke-static {v4}, Landroidx/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    sub-int/2addr v3, v1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v3, v1

    goto :goto_4

    :cond_6
    :goto_3
    move-wide v3, v6

    :goto_4
    cmp-long v1, v3, v6

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lu0/a;->a:Z

    if-nez v1, :cond_8

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_a

    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    move-object v1, v2

    :goto_6
    iget-object v2, p0, Lu0/a;->b:Lu0/c;

    iget-object v2, v2, Lu0/c;->i:LE0/m;

    iget-wide v3, v0, Lu0/b;->a:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Lu0/a;->a:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lu0/a;->b:Lu0/c;

    iget-object v2, v2, Lu0/c;->n:Lg4/P;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lu0/b;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_9

    :cond_9
    :goto_7
    monitor-exit p0

    :goto_8
    return-void

    :goto_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_a
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
