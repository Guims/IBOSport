.class Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/pool/LaxConnPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerRoutePool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lorg/apache/hc/core5/io/ModalCloseable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final allocated:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final available:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;>;"
        }
    .end annotation
.end field

.field private final connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ConnPoolListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final connPoolStats:Lorg/apache/hc/core5/pool/ConnPoolStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ConnPoolStats<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/DisposalCallback<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final leased:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile max:I

.field private final pending:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest<",
            "TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final policy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

.field private final releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final timeToLive:Lorg/apache/hc/core5/util/TimeValue;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/ConnPoolStats;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/pool/ConnPoolListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/pool/PoolReusePolicy;",
            "Lorg/apache/hc/core5/pool/ConnPoolStats<",
            "TT;>;",
            "Lorg/apache/hc/core5/pool/DisposalCallback<",
            "TC;>;",
            "Lorg/apache/hc/core5/pool/ConnPoolListener<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->route:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    iput-object p4, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->policy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    iput-object p5, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->connPoolStats:Lorg/apache/hc/core5/pool/ConnPoolStats;

    iput-object p6, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;

    iput-object p7, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->allocated:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, 0x0

    invoke-direct {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

    iput p2, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->max:I

    return-void
.end method

.method private addLeased(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->route:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->connPoolStats:Lorg/apache/hc/core5/pool/ConnPoolStats;

    invoke-interface {p1, v0, v1}, Lorg/apache/hc/core5/pool/ConnPoolListener;->onLease(Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolStats;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Pool entry already present in the set of leased entries"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->max:I

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->allocated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->allocated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v1, v2, :cond_2

    new-instance v0, Lorg/apache/hc/core5/pool/PoolEntry;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->route:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    iget-object v3, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/core5/pool/PoolEntry;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/DisposalCallback;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private deallocatePoolEntry()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->allocated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private getAvailableEntry(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/pool/PoolEntry;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Lorg/apache/hc/core5/pool/PoolEntry;->getExpiryDeadline()Lorg/apache/hc/core5/util/Deadline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v2, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    invoke-virtual {v2}, Lorg/apache/hc/core5/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v2, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_2
    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeLeased(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->route:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->connPoolStats:Lorg/apache/hc/core5/pool/ConnPoolStats;

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/pool/ConnPoolListener;->onRelease(Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolStats;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Pool entry is not present in the set of leased entries"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private servicePendingRequest()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->FIRST_SUCCESSFUL:Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->servicePendingRequests(Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;)V

    return-void
.end method

.method private servicePendingRequests(Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;)V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->getState()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->getDeadline()Lorg/apache/hc/core5/util/Deadline;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/apache/hc/core5/util/DeadlineTimeoutException;->from(Lorg/apache/hc/core5/util/Deadline;)Lorg/apache/hc/core5/util/DeadlineTimeoutException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->failed(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->getAvailableEntry(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->createPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->addLeased(Lorg/apache/hc/core5/pool/PoolEntry;)V

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->completed(Lorg/apache/hc/core5/pool/PoolEntry;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    :cond_4
    sget-object v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->FIRST_SUCCESSFUL:Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public enumAvailable(Lorg/apache/hc/core5/function/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/pool/PoolEntry;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->deallocatePoolEntry()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    sget-object p1, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;->ALL:Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->servicePendingRequests(Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$RequestServiceStrategy;)V

    return-void
.end method

.method public enumLeased(Lorg/apache/hc/core5/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->deallocatePoolEntry()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAvailableCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public getLeasedCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->max:I

    return v0
.end method

.method public getPendingCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public final getRoute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public lease(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection pool shut down"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$1;

    invoke-direct {v0, p0, p3}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool$1;-><init>(Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iget-object p3, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object p3, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->getAvailableEntry(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->createPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-direct {p0, p3}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->addLeased(Lorg/apache/hc/core5/pool/PoolEntry;)V

    invoke-virtual {v0, p3}, Lorg/apache/hc/core5/concurrent/BasicFuture;->completed(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    iget-object p3, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    new-instance v3, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;

    invoke-direct {v3, p1, p2, v0}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/BasicFuture;)V

    invoke-interface {p3, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->servicePendingRequest()V

    :cond_3
    return-object v0
.end method

.method public release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->removeLeased(Lorg/apache/hc/core5/pool/PoolEntry;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getExpiryDeadline()Lorg/apache/hc/core5/util/Deadline;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lorg/apache/hc/core5/pool/LaxConnPool$1;->$SwitchMap$org$apache$hc$core5$pool$PoolReusePolicy:[I

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->policy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {p2, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected ConnPoolPolicy value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->policy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p2, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {p2, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->deallocatePoolEntry()V

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->releaseSeqNum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-direct {p0}, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->servicePendingRequest()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->max:I

    return-void
.end method

.method public shutdown(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :goto_2
    iget-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->cancel()Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[route: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->leased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->available:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validatePendingRequests()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$PerRoutePool;->pending:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->getFuture()Lorg/apache/hc/core5/concurrent/BasicFuture;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->getDeadline()Lorg/apache/hc/core5/util/Deadline;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/apache/hc/core5/util/DeadlineTimeoutException;->from(Lorg/apache/hc/core5/util/Deadline;)Lorg/apache/hc/core5/util/DeadlineTimeoutException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->failed(Ljava/lang/Exception;)Z

    :cond_2
    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method
