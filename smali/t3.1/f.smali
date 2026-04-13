.class public final Lt3/f;
.super LC2/b;


# virtual methods
.method public final I(Lt3/n;Lt3/n;)V
    .locals 0

    iput-object p2, p1, Lt3/n;->b:Lt3/n;

    return-void
.end method

.method public final J(Lt3/n;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lt3/n;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final g(Lt3/o;Lt3/c;Lt3/c;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lt3/o;->q:Lt3/c;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lt3/o;->q:Lt3/c;

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

.method public final i(Lt3/o;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lt3/o;->b:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lt3/o;->b:Ljava/lang/Object;

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

.method public final j(Lt3/o;Lt3/n;Lt3/n;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lt3/o;->r:Lt3/n;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lt3/o;->r:Lt3/n;

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

.method public final s(Lt3/o;)Lt3/c;
    .locals 2

    sget-object v0, Lt3/c;->d:Lt3/c;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lt3/o;->q:Lt3/c;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lt3/o;->q:Lt3/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final t(Lt3/o;)Lt3/n;
    .locals 2

    sget-object v0, Lt3/n;->c:Lt3/n;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lt3/o;->r:Lt3/n;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lt3/o;->r:Lt3/n;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
