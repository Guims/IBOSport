.class final Lorg/apache/hc/core5/reactor/InternalDataChannel;
.super Lorg/apache/hc/core5/reactor/InternalChannel;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ProtocolIOSession;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final closedSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/reactor/InternalDataChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/reactor/IOEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final initialEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

.field private final ioSession:Lorg/apache/hc/core5/reactor/IOSession;

.field private final ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private final protocolUpgradeHandlerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

.field private final tlsSessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/reactor/IOSessionListener;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOSessionListener;",
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/reactor/InternalDataChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/InternalChannel;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->initialEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iput-object p5, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closedSessions:Ljava/util/Queue;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->tlsSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lorg/apache/hc/core5/function/Decorator;->decorate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    :cond_0
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->eventHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->protocolUpgradeHandlerMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private ensureHandler(Lorg/apache/hc/core5/reactor/IOSession;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object p1

    const-string v0, "IO event handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public channel()Ljava/nio/channels/ByteChannel;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->channel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public clearEvent(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    return-void
.end method

.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closedSessions:Ljava/util/Queue;

    invoke-interface {p1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closedSessions:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    throw p1

    :cond_1
    return-void
.end method

.method public disconnected()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/reactor/IOSessionListener;->disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_0
    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/reactor/IOEventHandler;->disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_1
    return-void
.end method

.method public enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method public getEventMask()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getEventMask()I

    move-result v0

    return v0
.end method

.method public getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->eventHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOEventHandler;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialEndpoint()Lorg/apache/hc/core5/net/NamedEndpoint;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->initialEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    return-object v0
.end method

.method public getLastEventTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReadTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastReadTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastWriteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOSession$Status;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getStatus()Lorg/apache/hc/core5/reactor/IOSession$Status;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->tlsSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCommands()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->hasCommands()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lorg/apache/hc/core5/reactor/IOSessionListener;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    :cond_0
    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onIOEvent(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->tlsSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/reactor/IOSessionListener;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ensureHandler(Lorg/apache/hc/core5/reactor/IOSession;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/reactor/IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->updateReadTime()V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/reactor/IOSessionListener;->inputReady(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ensureHandler(Lorg/apache/hc/core5/reactor/IOSession;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V

    :cond_3
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getEventMask()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->updateWriteTime()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSessionListener;->outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ensureHandler(Lorg/apache/hc/core5/reactor/IOSession;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public onTLSSessionEnd(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)V
    .locals 2

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->closedSessions:Ljava/util/Queue;

    invoke-interface {p1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onTLSSessionStart(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSessionListener;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_0
    return-void
.end method

.method public onTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/reactor/IOSessionListener;->timeout(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ensureHandler(Lorg/apache/hc/core5/reactor/IOSession;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public poll()Lorg/apache/hc/core5/reactor/Command;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->poll()Lorg/apache/hc/core5/reactor/Command;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public registerProtocol(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;)V
    .locals 1

    const-string v0, "Application protocol ID"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Protocol upgrade handler"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->protocolUpgradeHandlerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEvent(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void
.end method

.method public setEventMask(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    if-eqz p2, :cond_0

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->initialEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->initialEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    if-eqz p2, :cond_1

    sget-object p2, Lorg/apache/hc/core5/reactor/ssl/SSLMode;->CLIENT:Lorg/apache/hc/core5/reactor/ssl/SSLMode;

    :goto_2
    move-object v3, p2

    goto :goto_3

    :cond_1
    sget-object p2, Lorg/apache/hc/core5/reactor/ssl/SSLMode;->SERVER:Lorg/apache/hc/core5/reactor/ssl/SSLMode;

    goto :goto_2

    :goto_3
    new-instance v9, Lorg/apache/hc/core5/reactor/b;

    const/4 p2, 0x0

    invoke-direct {v9, p0, p2}, Lorg/apache/hc/core5/reactor/b;-><init>(Lorg/apache/hc/core5/io/ModalCloseable;I)V

    new-instance v10, Lorg/apache/hc/core5/reactor/b;

    const/4 p2, 0x1

    invoke-direct {v10, p0, p2}, Lorg/apache/hc/core5/reactor/b;-><init>(Lorg/apache/hc/core5/io/ModalCloseable;I)V

    new-instance v11, Lorg/apache/hc/core5/reactor/InternalDataChannel$1;

    move-object/from16 p2, p7

    invoke-direct {v11, p0, p2, p2}, Lorg/apache/hc/core5/reactor/InternalDataChannel$1;-><init>(Lorg/apache/hc/core5/reactor/InternalDataChannel;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/ssl/SSLMode;Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->tlsSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_4
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lorg/apache/hc/core5/function/Decorator;->decorate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/core5/reactor/IOSession;

    goto :goto_5

    :cond_2
    move-object p2, v0

    :goto_5
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSessionListener;->startTls(Lorg/apache/hc/core5/reactor/IOSession;)V

    goto :goto_6

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :cond_3
    :goto_6
    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->beginHandshake(Lorg/apache/hc/core5/reactor/IOSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_7
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->onException(Ljava/lang/Exception;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TLS already activated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switchProtocol(Ljava/lang/String;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Application protocol ID"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->protocolUpgradeHandlerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;->upgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported protocol: "

    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateReadTime()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->updateReadTime()V

    return-void
.end method

.method public updateWriteTime()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->updateWriteTime()V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->eventHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/InternalDataChannel;->currentSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method
