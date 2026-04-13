.class public final Lo/e;
.super Lcom/bumptech/glide/d;


# virtual methods
.method public final c(Lo/g;Lo/c;Lo/c;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lo/g;->q:Lo/c;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lo/g;->q:Lo/c;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final d(Lo/g;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lo/g;->b:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lo/g;->b:Ljava/lang/Object;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final e(Lo/g;Lo/f;Lo/f;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lo/g;->r:Lo/f;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lo/g;->r:Lo/f;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final o(Lo/f;Lo/f;)V
    .locals 0

    iput-object p2, p1, Lo/f;->b:Lo/f;

    return-void
.end method

.method public final p(Lo/f;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lo/f;->a:Ljava/lang/Thread;

    return-void
.end method
