.class public final LA5/j;
.super Ljava/lang/Object;

# interfaces
.implements Lw5/e;


# instance fields
.field public volatile A:Z

.field public volatile B:LA5/e;

.field public volatile C:LA5/n;

.field public final D:Lw5/y;

.field public final E:Lw5/B;

.field public final b:LA5/p;

.field public final q:LA5/i;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public s:Ljava/lang/Object;

.field public t:LA5/f;

.field public u:LA5/n;

.field public v:Z

.field public w:LA5/e;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lw5/y;Lw5/B;)V
    .locals 2

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA5/j;->D:Lw5/y;

    iput-object p2, p0, LA5/j;->E:Lw5/B;

    iget-object p2, p1, Lw5/y;->q:Lv0/f;

    iget-object p2, p2, Lv0/f;->b:Ljava/lang/Object;

    check-cast p2, LA5/p;

    iput-object p2, p0, LA5/j;->b:LA5/p;

    iget-object p1, p1, Lw5/y;->t:Lt1/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LA5/i;

    invoke-direct {p1, p0}, LA5/i;-><init>(LA5/j;)V

    const/4 p2, 0x0

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, LK5/H;->g(J)LK5/H;

    iput-object p1, p0, LA5/j;->q:LA5/i;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LA5/j;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, LA5/j;->z:Z

    return-void
.end method

.method public static final a(LA5/j;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, LA5/j;->A:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LA5/j;->E:Lw5/B;

    iget-object p0, p0, Lw5/B;->b:Lw5/r;

    invoke-virtual {p0}, Lw5/r;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(LA5/n;)V
    .locals 2

    sget-object v0, Lx5/b;->a:[B

    iget-object v0, p0, LA5/j;->u:LA5/n;

    if-nez v0, :cond_0

    iput-object p1, p0, LA5/j;->u:LA5/n;

    iget-object p1, p1, LA5/n;->o:Ljava/util/ArrayList;

    new-instance v0, LA5/h;

    iget-object v1, p0, LA5/j;->s:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, LA5/h;-><init>(LA5/j;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    sget-object v0, Lx5/b;->a:[B

    iget-object v0, p0, LA5/j;->u:LA5/n;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LA5/j;->i()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, LA5/j;->u:LA5/n;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lx5/b;->d(Ljava/net/Socket;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    iget-boolean v0, p0, LA5/j;->v:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, LA5/j;->q:LA5/i;

    invoke-virtual {v0}, LK5/d;->i()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    :cond_6
    return-object v0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LA5/j;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LA5/j;->A:Z

    iget-object v0, p0, LA5/j;->B:LA5/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, LA5/e;->f:LB5/e;

    invoke-interface {v0}, LB5/e;->cancel()V

    :cond_1
    iget-object v0, p0, LA5/j;->C:LA5/n;

    if-eqz v0, :cond_2

    iget-object v0, v0, LA5/n;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lx5/b;->d(Ljava/net/Socket;)V

    :cond_2
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, LA5/j;

    iget-object v1, p0, LA5/j;->D:Lw5/y;

    iget-object v2, p0, LA5/j;->E:Lw5/B;

    invoke-direct {v0, v1, v2}, LA5/j;-><init>(Lw5/y;Lw5/B;)V

    return-object v0
.end method

.method public final d(Lw5/f;)V
    .locals 5

    iget-object v0, p0, LA5/j;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, LE5/n;->a:LE5/n;

    sget-object v0, LE5/n;->a:LE5/n;

    invoke-virtual {v0}, LE5/n;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LA5/j;->s:Ljava/lang/Object;

    iget-object v0, p0, LA5/j;->D:Lw5/y;

    iget-object v0, v0, Lw5/y;->b:LK1/c;

    new-instance v1, LA5/g;

    invoke-direct {v1, p0, p1}, LA5/g;-><init>(LA5/j;Lw5/f;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LA5/j;->E:Lw5/B;

    iget-object p1, p1, Lw5/B;->b:Lw5/r;

    iget-object p1, p1, Lw5/r;->e:Ljava/lang/String;

    iget-object v2, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/g;

    iget-object v4, v3, LA5/g;->r:LA5/j;

    iget-object v4, v4, LA5/j;->E:Lw5/B;

    iget-object v4, v4, Lw5/B;->b:Lw5/r;

    iget-object v4, v4, Lw5/r;->e:Ljava/lang/String;

    invoke-static {v4, p1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    iget-object v2, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LA5/g;

    iget-object v4, v3, LA5/g;->r:LA5/j;

    iget-object v4, v4, LA5/j;->E:Lw5/B;

    iget-object v4, v4, Lw5/B;->b:Lw5/r;

    iget-object v4, v4, Lw5/r;->e:Ljava/lang/String;

    invoke-static {v4, p1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    iget-object p1, v3, LA5/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v1, LA5/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    invoke-virtual {v0}, LK1/c;->w()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    const-string p1, "Already Executed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LA5/j;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, LA5/j;->B:LA5/e;

    if-eqz p1, :cond_0

    iget-object v1, p1, LA5/e;->f:LB5/e;

    invoke-interface {v1}, LB5/e;->cancel()V

    iget-object v1, p1, LA5/e;->d:LA5/j;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, LA5/j;->g(LA5/e;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, LA5/j;->w:LA5/e;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Lw5/H;
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, LA5/j;->D:Lw5/y;

    iget-object v0, v0, Lw5/y;->r:Ljava/util/List;

    invoke-static {v2, v0}, LT4/m;->v(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, LB5/a;

    iget-object v1, p0, LA5/j;->D:Lw5/y;

    invoke-direct {v0, v1}, LB5/a;-><init>(Lw5/y;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LB5/a;

    iget-object v1, p0, LA5/j;->D:Lw5/y;

    iget-object v1, v1, Lw5/y;->y:Lw5/b;

    invoke-direct {v0, v1}, LB5/a;-><init>(Lw5/b;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ly5/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LA5/a;->a:LA5/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LA5/j;->D:Lw5/y;

    iget-object v0, v0, Lw5/y;->s:Ljava/util/List;

    invoke-static {v2, v0}, LT4/m;->v(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    new-instance v0, LB5/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LB5/g;

    iget-object v5, p0, LA5/j;->E:Lw5/B;

    iget-object v1, p0, LA5/j;->D:Lw5/y;

    iget v6, v1, Lw5/y;->K:I

    iget v7, v1, Lw5/y;->L:I

    iget v8, v1, Lw5/y;->M:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, LB5/g;-><init>(LA5/j;Ljava/util/ArrayList;ILA5/e;Lw5/B;III)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, LA5/j;->E:Lw5/B;

    invoke-virtual {v0, v4}, LB5/g;->b(Lw5/B;)Lw5/H;

    move-result-object v0

    iget-boolean v4, v1, LA5/j;->A:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-virtual {p0, v2}, LA5/j;->h(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lx5/b;->c(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, LA5/j;->h(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, LA5/j;->h(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_2
    throw v0
.end method

.method public final g(LA5/e;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    const-string v0, "exchange"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LA5/j;->B:LA5/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_5

    :cond_0
    monitor-enter p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, LA5/j;->x:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, LA5/j;->y:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v0, p0, LA5/j;->x:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean v0, p0, LA5/j;->y:Z

    :cond_4
    iget-boolean p2, p0, LA5/j;->x:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, LA5/j;->y:Z

    if-nez p3, :cond_5

    move p3, p1

    goto :goto_1

    :cond_5
    move p3, v0

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, LA5/j;->y:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, LA5/j;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move v0, p1

    :cond_6
    move p2, v0

    move v0, p3

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, v0

    :goto_3
    monitor-exit p0

    if-eqz v0, :cond_8

    const/4 p3, 0x0

    iput-object p3, p0, LA5/j;->B:LA5/e;

    iget-object p3, p0, LA5/j;->u:LA5/n;

    if-eqz p3, :cond_8

    monitor-enter p3

    :try_start_1
    iget v0, p3, LA5/n;->l:I

    add-int/2addr v0, p1

    iput v0, p3, LA5/n;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, LA5/j;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_5
    return-object p4
.end method

.method public final h(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LA5/j;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LA5/j;->z:Z

    iget-boolean v0, p0, LA5/j;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LA5/j;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, LA5/j;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final i()Ljava/net/Socket;
    .locals 7

    iget-object v0, p0, LA5/j;->u:LA5/n;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    sget-object v1, Lx5/b;->a:[B

    iget-object v1, v0, LA5/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LA5/j;

    invoke-static {v6, p0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, LA5/j;->u:LA5/n;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, LA5/n;->p:J

    iget-object v1, p0, LA5/j;->b:LA5/p;

    iget-object v3, v1, LA5/p;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v1, LA5/p;->b:Lz5/b;

    sget-object v5, Lx5/b;->a:[B

    iget-boolean v5, v0, LA5/n;->i:Z

    if-nez v5, :cond_2

    iget-object v0, v1, LA5/p;->c:LA5/o;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lz5/b;->c(Lz5/a;J)V

    return-object v2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, LA5/n;->i:Z

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lz5/b;->a()V

    :cond_3
    iget-object v0, v0, LA5/n;->c:Ljava/net/Socket;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
