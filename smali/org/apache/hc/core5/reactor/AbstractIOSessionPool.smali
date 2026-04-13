.class public abstract Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/io/ModalCloseable;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionPool:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;ZLjava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getSessionInternal(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;ZLjava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method private getSessionInternal(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;ZLjava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;",
            "ZTT;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, p2, v0}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closeSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/io/CloseMode;)V

    iput-object v1, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p2}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result p2

    if-nez p2, :cond_1

    iput-object v1, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    :cond_1
    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p5, p2}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->requestQueue:Ljava/util/Queue;

    invoke-interface {p2, p5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-eqz p2, :cond_3

    iput-object v1, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    :cond_3
    iget-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    if-nez p2, :cond_4

    new-instance p2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;

    invoke-direct {p2, p0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;-><init>(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;)V

    invoke-virtual {p0, p3, p4, p2}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->connectSession(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    :cond_4
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public final close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public final close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, v3, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closeSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/io/CloseMode;)V

    iput-object v4, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    iget-object v3, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v4, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->sessionFuture:Ljava/util/concurrent/Future;

    :cond_1
    :goto_2
    iget-object v3, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->requestQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V

    goto :goto_2

    :cond_2
    monitor-exit v1

    goto :goto_0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_4
    return-void
.end method

.method public final closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    sub-long/2addr v0, v2

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    iget-object v3, v2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz v3, :cond_1

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v3}, Lorg/apache/hc/core5/reactor/IOSession;->getLastReadTime()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_2

    iget-object v3, v2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v4, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v3, v4}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closeSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/io/CloseMode;)V

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v2

    goto :goto_1

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public abstract closeSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/io/CloseMode;)V
.end method

.method public abstract connectSession(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end method

.method public final enumAvailable(Lorg/apache/hc/core5/function/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    iget-object v2, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz v2, :cond_0

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v2}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public getPoolEntry(Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    invoke-direct {v0}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getRoutes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSession(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation

    const-string v0, "Endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection pool shut down"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    new-instance v4, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {v4, p3}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getPoolEntry(Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    move-result-object v5

    new-instance v2, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$1;-><init>(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)V

    const/4 p1, 0x0

    move-object v10, v2

    move-object v8, v6

    move-object v9, v7

    move v7, p1

    move-object v6, v5

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getSessionInternal(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;ZLjava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I/O sessions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->sessionPool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract validateSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/function/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
