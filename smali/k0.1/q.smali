.class public final Lk0/q;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lk0/d;

.field public final b:Lk0/y;

.field public final c:Lk0/o;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lk0/d;Lk0/o;)V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk0/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lk0/d;Lk0/o;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lk0/d;Lk0/o;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lk0/q;->a:Lk0/d;

    iput-object p1, p0, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lk0/q;->c:Lk0/o;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/q;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lk0/q;->e:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lk0/q;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lk0/m;

    invoke-direct {p1, p0}, Lk0/m;-><init>(Lk0/q;)V

    check-cast p3, Lk0/w;

    invoke-virtual {p3, p2, p1}, Lk0/w;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lk0/y;

    move-result-object p1

    iput-object p1, p0, Lk0/q;->b:Lk0/y;

    iput-boolean p5, p0, Lk0/q;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lk0/q;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lk0/q;->h:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lk0/p;

    invoke-direct {v2, p1}, Lk0/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, Lk0/q;->g()V

    iget-object v0, p0, Lk0/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lk0/q;->b:Lk0/y;

    iget-object v2, v1, Lk0/y;->a:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Lk0/y;->a(I)Lk0/x;

    move-result-object v2

    iget-object v1, v1, Lk0/y;->a:Landroid/os/Handler;

    iget-object v3, v2, Lk0/x;->a:Landroid/os/Message;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v2}, Lk0/x;->a()V

    :cond_1
    iget-object v1, p0, Lk0/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(ILk0/n;)V
    .locals 3

    invoke-virtual {p0}, Lk0/q;->g()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, LA4/a;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p1, p2, v2}, LA4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object p1, p0, Lk0/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 5

    invoke-virtual {p0}, Lk0/q;->g()V

    iget-object v0, p0, Lk0/q;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lk0/q;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/p;

    iget-object v3, p0, Lk0/q;->c:Lk0/o;

    iput-boolean v1, v2, Lk0/p;->d:Z

    iget-boolean v4, v2, Lk0/p;->c:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v2, Lk0/p;->c:Z

    iget-object v4, v2, Lk0/p;->a:Ljava/lang/Object;

    iget-object v2, v2, Lk0/p;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v2}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lk0/o;->g(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p0}, Lk0/q;->g()V

    iget-object v0, p0, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/p;

    iget-object v3, v2, Lk0/p;->a:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lk0/p;->d:Z

    iget-boolean v3, v2, Lk0/p;->c:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lk0/p;->c:Z

    iget-object v3, v2, Lk0/p;->a:Ljava/lang/Object;

    iget-object v4, v2, Lk0/p;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v4}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v4

    iget-object v5, p0, Lk0/q;->c:Lk0/o;

    invoke-interface {v5, v3, v4}, Lk0/o;->g(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(ILk0/n;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk0/q;->c(ILk0/n;)V

    invoke-virtual {p0}, Lk0/q;->b()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lk0/q;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lk0/q;->b:Lk0/y;

    iget-object v1, v1, Lk0/y;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    return-void
.end method
