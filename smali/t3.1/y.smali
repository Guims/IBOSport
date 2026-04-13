.class public final Lt3/y;
.super Lt3/h;


# virtual methods
.method public final m(Lt3/s;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lt3/o;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lt3/o;->i(Lt3/s;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lt3/o;->u:LC2/b;

    invoke-virtual {v0, p0, v3, p1}, LC2/b;->i(Lt3/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, v1}, Lt3/o;->f(Lt3/o;Z)V

    return v2

    :cond_0
    new-instance v0, Lt3/e;

    invoke-direct {v0, p0, p1}, Lt3/e;-><init>(Lt3/y;Lt3/s;)V

    sget-object v4, Lt3/o;->u:LC2/b;

    invoke-virtual {v4, p0, v3, v0}, LC2/b;->i(Lt3/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v1, Lt3/p;->b:Lt3/p;

    invoke-interface {p1, v0, v1}, Lt3/s;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v1, Lt3/b;

    invoke-direct {v1, p1}, Lt3/b;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lt3/b;->b:Lt3/b;

    :goto_0
    sget-object p1, Lt3/o;->u:LC2/b;

    invoke-virtual {p1, p0, v0, v1}, LC2/b;->i(Lt3/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    :cond_1
    iget-object v0, p0, Lt3/o;->b:Ljava/lang/Object;

    :cond_2
    instance-of v2, v0, Lt3/a;

    if-eqz v2, :cond_3

    check-cast v0, Lt3/a;

    iget-boolean v0, v0, Lt3/a;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return v1
.end method
