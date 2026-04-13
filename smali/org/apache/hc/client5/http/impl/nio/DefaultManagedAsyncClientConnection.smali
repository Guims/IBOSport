.class final Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;
.implements Lorg/apache/hc/core5/util/Identifiable;


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ioSession:Lorg/apache/hc/core5/reactor/IOSession;

.field private final socketTimeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} Close connection"

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    new-instance v1, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;-><init>(Lorg/apache/hc/core5/io/CloseMode;)V

    sget-object v2, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    :cond_1
    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} Shutdown connection {}"

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    return-void
.end method

.method public getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/hc/core5/http/HttpConnection;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/hc/core5/http/HttpConnection;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/hc/core5/http/HttpConnection;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/hc/core5/http/HttpConnection;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->DEFAULT:Lorg/apache/hc/core5/http/HttpVersion;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    instance-of v1, v0, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public passivate()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v1, Lorg/apache/hc/core5/util/Timeout;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

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

    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 10
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

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} start TLS"

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    instance-of v1, v0, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "TLS upgrade not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public submitCommand(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V
    .locals 3

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "{} {} with {} priority"

    invoke-interface {v0, v1, p2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v0, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p2, p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->ioSession:Lorg/apache/hc/core5/reactor/IOSession;

    instance-of v1, v0, Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/ProtocolIOSession;->switchProtocol(Ljava/lang/String;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Protocol switch not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
