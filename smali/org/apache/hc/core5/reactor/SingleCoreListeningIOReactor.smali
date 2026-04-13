.class Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;
.super Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ConnectionAcceptor;


# instance fields
.field private final callback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ChannelEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final endpoints:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

.field private final requestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final selectTimeoutMillis:J


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ChannelEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;-><init>(Lorg/apache/hc/core5/function/Callback;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->callback:Lorg/apache/hc/core5/function/Callback;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->requestQueue:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->endpoints:Ljava/util/concurrent/ConcurrentMap;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSelectInterval()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->selectTimeoutMillis:J

    return-void
.end method

.method private processEvent(Ljava/nio/channels/SelectionKey;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->callback:Lorg/apache/hc/core5/function/Callback;

    new-instance v4, Lorg/apache/hc/core5/reactor/ChannelEntry;

    iget-object v2, v2, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->attachment:Ljava/lang/Object;

    invoke-direct {v4, v1, v2}, Lorg/apache/hc/core5/reactor/ChannelEntry;-><init>(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->endpoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processEvents(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->processSessionRequests()V

    :cond_0
    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    invoke-direct {p0, v1}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->processEvent(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method private processSessionRequests()V
    .locals 8

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->address:Ljava/net/SocketAddress;

    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v4}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->isSoReuseAddress()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v4}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getRcvBufSize()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v4}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getRcvBufSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v4}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getBacklogSize()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    const/16 v4, 0x10

    invoke-virtual {v2, v1, v4}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;

    iget-object v5, v0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->attachment:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-direct {v4, v1, v5, v3}, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;-><init>(Ljava/nio/channels/SelectionKey;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->endpoints:Ljava/util/concurrent/ConcurrentMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->completed(Lorg/apache/hc/core5/reactor/ListenerEndpoint;)V

    goto :goto_0

    :catch_1
    move-exception v4

    new-instance v5, Ljava/net/BindException;

    const-string v6, "Socket bind failure for socket %s, address=%s, BacklogSize=%d: %s"

    iget-object v7, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v7}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getBacklogSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v1, v7, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-static {v2}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->failed(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final doExecute()V
    .locals 4

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    iget-wide v2, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->selectTimeoutMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->processEvents(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public doTerminate()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEndpoints()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->endpoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/reactor/ListenerEndpoint;

    invoke-interface {v2}, Lorg/apache/hc/core5/reactor/ListenerEndpoint;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUTTING_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-direct {v0, p3}, Lorg/apache/hc/core5/concurrent/BasicFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iget-object p3, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->requestQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;-><init>(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/BasicFuture;)V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-object v0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;

    const-string p2, "I/O reactor has been shut down"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listen(Ljava/net/SocketAddress;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->endpoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->close()V

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->requestQueue:Ljava/util/Queue;

    new-instance v3, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;

    iget-object v4, v1, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->address:Ljava/net/SocketAddress;

    iget-object v1, v1, Lorg/apache/hc/core5/reactor/ListenerEndpointImpl;->attachment:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;-><init>(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/BasicFuture;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void
.end method
