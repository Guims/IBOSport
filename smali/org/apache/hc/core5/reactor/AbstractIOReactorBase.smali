.class abstract Lorg/apache/hc/core5/reactor/AbstractIOReactorBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ConnectionInitiator;
.implements Lorg/apache/hc/core5/reactor/IOReactorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation

    const-string v0, "Remote endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/apache/hc/core5/reactor/IOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractIOReactorBase;->getWorkerSelector()Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOWorkers$Selector;->next()Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/hc/core5/reactor/IOReactorShutdownException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-interface {p0}, Lorg/apache/hc/core5/reactor/IOReactor;->initiateShutdown()V

    throw p1

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;

    const-string p2, "I/O reactor has been shut down"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getWorkerSelector()Lorg/apache/hc/core5/reactor/IOWorkers$Selector;
.end method
