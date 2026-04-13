.class Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;
.super Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ConnectionInitiator;


# static fields
.field private static final MAX_CHANNEL_REQUESTS:I = 0x2710


# instance fields
.field private final channelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/reactor/ChannelEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final closedSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/reactor/InternalDataChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

.field private final ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastTimeoutCheckMillis:J

.field private final reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

.field private final requestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/reactor/IOSessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final selectTimeoutMillis:J

.field private final sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

.field private final sessionShutdownCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private final shutdownInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOSessionListener;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;-><init>(Lorg/apache/hc/core5/function/Callback;)V

    const-string p1, "Event handler factory"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    const-string p1, "I/O reactor config"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/IOReactorConfig;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iput-object p5, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    iput-object p6, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->sessionShutdownCallback:Lorg/apache/hc/core5/function/Callback;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->shutdownInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->closedSessions:Ljava/util/Queue;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->channelQueue:Ljava/util/Queue;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->requestQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSelectInterval()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->selectTimeoutMillis:J

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/InternalDataChannel;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->lambda$processConnectionRequest$1(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/InternalDataChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->lambda$processConnectionRequest$0(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private checkTimeout(Ljava/nio/channels/SelectionKey;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/InternalChannel;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/reactor/InternalChannel;->checkTimeout(J)Z

    :cond_0
    return-void
.end method

.method private closePendingChannels()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->channelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/ChannelEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/hc/core5/reactor/ChannelEntry;->channel:Ljava/nio/channels/SocketChannel;

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closePendingConnectionRequests()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSessionRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->cancel()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initiateSessionShutdown()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->sessionShutdownCallback:Lorg/apache/hc/core5/function/Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

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

    check-cast v1, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/reactor/InternalChannel;

    instance-of v2, v1, Lorg/apache/hc/core5/reactor/InternalDataChannel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->sessionShutdownCallback:Lorg/apache/hc/core5/function/Callback;

    check-cast v1, Lorg/apache/hc/core5/reactor/InternalDataChannel;

    invoke-interface {v2, v1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$processConnectionRequest$0(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$processConnectionRequest$1(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/InternalDataChannel;
    .locals 6

    new-instance v1, Lorg/apache/hc/core5/reactor/IOSessionImpl;

    const-string v0, "c"

    invoke-direct {v1, v0, p2, p3}, Lorg/apache/hc/core5/reactor/IOSessionImpl;-><init>(Ljava/lang/String;Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;)V

    new-instance v0, Lorg/apache/hc/core5/reactor/InternalDataChannel;

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    iget-object v5, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->closedSessions:Ljava/util/Queue;

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/reactor/InternalDataChannel;-><init>(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/reactor/IOSessionListener;Ljava/util/Queue;)V

    invoke-interface {p1, v0, p5}, Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;->createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {p1}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSoTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-object v0
.end method

.method private prepareSocket(Ljava/net/Socket;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->isTcpNoDelay()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->isSoKeepAlive()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSndBufSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSndBufSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getRcvBufSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getTrafficClass()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getTrafficClass()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTrafficClass(I)V

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSoLinger()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/TimeValue;->toSecondsIntBound()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_3
    return-void
.end method

.method private processClosedSessions()V
    .locals 1

    :catch_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->closedSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/InternalDataChannel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->disconnected()V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private processConnectionRequest(Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/reactor/IOSessionRequest;)V
    .locals 6

    iget-object v0, p2, Lorg/apache/hc/core5/reactor/IOSessionRequest;->localAddress:Ljava/net/SocketAddress;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->validateAddress(Ljava/net/SocketAddress;)V

    iget-object v0, p2, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteAddress:Ljava/net/SocketAddress;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->validateAddress(Ljava/net/SocketAddress;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->prepareSocket(Ljava/net/Socket;)V

    iget-object v0, p2, Lorg/apache/hc/core5/reactor/IOSessionRequest;->localAddress:Ljava/net/SocketAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReuseAddress(Z)V

    iget-object v1, p2, Lorg/apache/hc/core5/reactor/IOSessionRequest;->localAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSocksProxyAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSocksProxyAddress()Ljava/net/SocketAddress;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;

    iget-object v2, p2, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteAddress:Ljava/net/SocketAddress;

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v3}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSocksProxyUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v4}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSocksProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandlerFactory;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteAddress:Ljava/net/SocketAddress;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    :goto_0
    :try_start_0
    new-instance v2, Lorg/apache/hc/core5/reactor/c;

    invoke-direct {v2, p1, v0}, Lorg/apache/hc/core5/reactor/c;-><init>(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x9

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    new-instance v3, Lorg/apache/hc/core5/reactor/InternalConnectChannel;

    new-instance v4, Lorg/apache/hc/core5/reactor/d;

    invoke-direct {v4, p0, v1}, Lorg/apache/hc/core5/reactor/d;-><init>(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V

    invoke-direct {v3, v2, p1, p2, v4}, Lorg/apache/hc/core5/reactor/InternalConnectChannel;-><init>(Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/reactor/IOSessionRequest;Lorg/apache/hc/core5/reactor/InternalDataChannelFactory;)V

    if-eqz v0, :cond_2

    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Lorg/apache/hc/core5/reactor/InternalChannel;->handleIOEvent(I)V

    return-void

    :cond_2
    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->assign(Lorg/apache/hc/core5/io/ModalCloseable;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method contract violation only checked exceptions are wrapped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method private processEvents(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/reactor/InternalChannel;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/reactor/InternalChannel;->handleIOEvent(I)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v2, v1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private processPendingChannels()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->channelQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/reactor/ChannelEntry;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/apache/hc/core5/reactor/ChannelEntry;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v2, v2, Lorg/apache/hc/core5/reactor/ChannelEntry;->attachment:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->prepareSocket(Ljava/net/Socket;)V

    invoke-virtual {v3, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v4
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v6, Lorg/apache/hc/core5/reactor/IOSessionImpl;

    const-string v5, "a"

    invoke-direct {v6, v5, v4, v3}, Lorg/apache/hc/core5/reactor/IOSessionImpl;-><init>(Ljava/lang/String;Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;)V

    new-instance v5, Lorg/apache/hc/core5/reactor/InternalDataChannel;

    iget-object v8, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iget-object v9, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    iget-object v10, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->closedSessions:Ljava/util/Queue;

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/reactor/InternalDataChannel;-><init>(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/reactor/IOSessionListener;Ljava/util/Queue;)V

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    invoke-interface {v3, v5, v2}, Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;->createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->reactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v2}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getSoTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    invoke-virtual {v4, v5}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/reactor/InternalChannel;->handleIOEvent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V

    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V

    :goto_1
    throw v1

    :catch_2
    :cond_0
    return-void
.end method

.method private processPendingConnectionRequests()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->requestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/reactor/IOSessionRequest;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0, v2, v1}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->processConnectionRequest(Ljava/nio/channels/SocketChannel;Lorg/apache/hc/core5/reactor/IOSessionRequest;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    invoke-static {v2}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v1, v3}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->failed(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validateActiveChannels()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->lastTimeoutCheckMillis:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->selectTimeoutMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->lastTimeoutCheckMillis:J

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->checkTimeout(Ljava/nio/channels/SelectionKey;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateAddress(Ljava/net/SocketAddress;)V
    .locals 1

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
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

    new-instance v1, Lorg/apache/hc/core5/reactor/IOSessionRequest;

    if-eqz p2, :cond_0

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v2

    invoke-direct {p2, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/core5/reactor/IOSessionRequest;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->requestQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-object v1
.end method

.method public doExecute()V
    .locals 5

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    iget-wide v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->selectTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUTTING_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->shutdownInitiated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->initiateSessionShutdown()V

    :cond_1
    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->closePendingChannels()V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v1

    sget-object v3, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->processEvents(Ljava/util/Set;)V

    :cond_4
    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->validateActiveChannels()V

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->processClosedSessions()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->processPendingChannels()V

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->processPendingConnectionRequests()V

    :cond_5
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    if-ne v0, v3, :cond_0

    :cond_7
    :goto_0
    return-void
.end method

.method public doTerminate()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->closePendingChannels()V

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->closePendingConnectionRequests()V

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->processClosedSessions()V

    return-void
.end method

.method public enqueueChannel(Lorg/apache/hc/core5/reactor/ChannelEntry;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->channelQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;

    const-string v0, "I/O reactor has been shut down"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
