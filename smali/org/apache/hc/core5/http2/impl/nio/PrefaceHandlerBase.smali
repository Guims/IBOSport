.class abstract Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;


# instance fields
.field private final completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

.field private final protocolHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "I/O session"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->protocolHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->protocolHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/apache/hc/core5/http/nio/command/CommandSupport;->cancelCommands(Lorg/apache/hc/core5/reactor/IOSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_2
    throw p1
.end method

.method public exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->protocolHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;

    :try_start_0
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/hc/core5/http/nio/command/CommandSupport;->failCommands(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public startProtocol(Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->protocolHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, v0, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-static {p2}, Lorg/apache/hc/core5/io/SocketTimeoutExceptionFactory;->create(Lorg/apache/hc/core5/util/Timeout;)Ljava/net/SocketTimeoutException;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method
