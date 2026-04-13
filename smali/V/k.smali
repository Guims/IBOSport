.class public final LV/k;
.super LV/c;


# virtual methods
.method public final b(Ljava/lang/Object;LX4/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, LV/j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LV/j;

    iget v1, v0, LV/j;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LV/j;->u:I

    goto :goto_0

    :cond_0
    new-instance v0, LV/j;

    invoke-direct {v0, p0, p2}, LV/j;-><init>(LV/k;LX4/c;)V

    :goto_0
    iget-object p2, v0, LV/j;->s:Ljava/lang/Object;

    iget v1, v0, LV/j;->u:I

    const/4 v2, 0x1

    sget-object v3, LS4/i;->a:LS4/i;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, LV/j;->r:LK5/y;

    iget-object v1, v0, LV/j;->q:LK5/s;

    iget-object v0, v0, LV/j;->b:LK5/s;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p0, LV/c;->c:LV/a;

    iget-object p2, p2, LV/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, LV/c;->a:LK5/n;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "file"

    iget-object v5, p0, LV/c;->b:LK5/x;

    invoke-static {v5, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, LK5/n;->g(LK5/x;)LK5/s;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, LK5/s;->a(LK5/s;)LK5/k;

    move-result-object p2

    invoke-static {p2}, LE2/g;->a(LK5/D;)LK5/y;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    sget-object v5, LX/f;->a:LX/f;

    iput-object v1, v0, LV/j;->b:LK5/s;

    iput-object v1, v0, LV/j;->q:LK5/s;

    iput-object p2, v0, LV/j;->r:LK5/y;

    iput v2, v0, LV/j;->u:I

    invoke-virtual {v5, p1, p2}, LX/f;->c(Ljava/lang/Object;LK5/y;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-object p1, LW4/a;->b:LW4/a;

    if-ne v3, p1, :cond_3

    return-object p1

    :cond_3
    move-object p1, p2

    move-object v0, v1

    :goto_1
    :try_start_3
    invoke-virtual {v1}, LK5/s;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    :try_start_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    move-object p1, v4

    :goto_3
    move-object p2, v3

    :goto_4
    move-object v1, v0

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v1

    :goto_5
    if-eqz p1, :cond_5

    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-static {p2, p1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    move-object v1, v0

    goto :goto_9

    :cond_5
    :goto_6
    move-object p1, p2

    move-object p2, v4

    goto :goto_4

    :goto_7
    if-nez p1, :cond_7

    :try_start_7
    invoke-static {p2}, Le5/g;->c(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v1, :cond_6

    :try_start_8
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v4

    :cond_6
    :goto_8
    move-object p1, v3

    goto :goto_b

    :catchall_6
    move-exception p1

    goto :goto_9

    :cond_7
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :goto_9
    if-eqz v1, :cond_8

    :try_start_a
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception p2

    invoke-static {p1, p2}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_8
    :goto_a
    move-object v6, v4

    move-object v4, p1

    move-object p1, v6

    :goto_b
    if-nez v4, :cond_9

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    return-object v3

    :cond_9
    throw v4

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This scope has already been closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
