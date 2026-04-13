.class public Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/pool/ConnPoolControl;
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/pool/ConnPoolControl<",
        "Lorg/apache/hc/core5/http/HttpHost;",
        ">;",
        "Lorg/apache/hc/core5/io/ModalCloseable;"
    }
.end annotation


# instance fields
.field private final addressResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

.field private final socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

.field private final sslSessionVerifier:Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;

.field private final sslSetupHandler:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljavax/net/ssl/SSLParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/function/Resolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;",
            "Lorg/apache/hc/core5/http/io/SocketConfig;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljavax/net/ssl/SSLParameters;",
            ">;",
            "Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Request executor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    const-string p1, "HTTP processor"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    const-string p1, "Connection pool"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/pool/ManagedConnPool;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    :goto_0
    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p5, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;

    sget-object p1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    sget-object p2, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-direct {p5, p1, p2}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V

    :goto_1
    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connectFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    if-eqz p6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    move-object p6, p1

    check-cast p6, Ljavax/net/ssl/SSLSocketFactory;

    :goto_2
    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    iput-object p8, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->sslSessionVerifier:Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;

    if-eqz p9, :cond_3

    goto :goto_3

    :cond_3
    sget-object p9, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    :goto_3
    iput-object p9, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->addressResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Ljava/net/Socket;Ljava/net/InetSocketAddress;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->lambda$createSocket$0(Ljava/net/Socket;Ljava/net/InetSocketAddress;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;)Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;)Lorg/apache/hc/core5/pool/ManagedConnPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    return-object p0
.end method

.method private createSocket(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/Socket;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSocksProxyAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Socket;

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSocksProxyAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReuseAddress(Z)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSndBufSize()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSndBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoLinger()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_3
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->addressResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    :try_start_0
    new-instance v3, Lorg/apache/hc/client5/http/socket/a;

    invoke-direct {v3, p0, v0, v1}, Lorg/apache/hc/client5/http/socket/a;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Ljava/net/Socket;Ljava/net/InetSocketAddress;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v3, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v3, v0, v4, v1, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    invoke-interface {v2, v1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->sslSessionVerifier:Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;

    if-eqz v2, :cond_5

    invoke-interface {v2, p1, v1}, Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;->verify(Lorg/apache/hc/core5/http/HttpHost;Ljavax/net/ssl/SSLSession;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    return-object v0

    :cond_6
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "SSL session not available"

    invoke-direct {p1, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_7
    return-object v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method contract violation only checked exceptions are wrapped: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method private synthetic lambda$createSocket$0(Ljava/net/Socket;Ljava/net/InetSocketAddress;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public closeExpired()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeExpired()V

    return-void
.end method

.method public closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    :try_start_0
    invoke-interface {p5, p1}, Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;->handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-object p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p3, v0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p3
.end method

.method public execute(Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->execute(Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p4, v0}, Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;->handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-virtual {v1, p2, v0, p1, p3}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->keepAlive(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpConnection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_3

    :goto_1
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz v0, :cond_1

    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p4

    :try_start_5
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p3
    :try_end_5
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    sget-object p3, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p1, p3}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw p2
.end method

.method public execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 7

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p4, v1}, Lorg/apache/hc/core5/pool/ConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {p4}, Lorg/apache/hc/core5/util/Timeout;->defaultsToDisabled(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p4

    :try_start_0
    invoke-virtual {p4}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v1

    invoke-virtual {p4}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p4

    invoke-interface {v0, v1, v2, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/hc/core5/pool/PoolEntry;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_9

    new-instance v3, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

    invoke-direct {v3, p0, p4}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Lorg/apache/hc/core5/pool/PoolEntry;)V

    :try_start_1
    invoke-virtual {p4}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/io/HttpClientConnection;
    :try_end_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    if-nez v0, :cond_0

    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->createSocket(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connectFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http/io/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/io/HttpClientConnection;

    invoke-virtual {p4, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->assignConnection(Lorg/apache/hc/core5/io/ModalCloseable;)V
    :try_end_2
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_0
    :goto_1
    :try_start_3
    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object p4
    :try_end_3
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    if-nez p4, :cond_1

    :try_start_4
    new-instance p4, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result p1

    invoke-direct {p4, v1, p1}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p4}, Lorg/apache/hc/core5/http/HttpRequest;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V
    :try_end_4
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :try_start_5
    invoke-virtual {p0, v0, p2, p3, p5}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->execute(Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;
    :try_end_5
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v1, p0

    move-object v4, p2

    move-object v6, p5

    :try_start_6
    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Lorg/apache/hc/core5/http/HttpEntity;Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {v5, v0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-object v5

    :catch_3
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    :goto_3
    move-object v1, p0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v1, p0

    move-object v4, p2

    move-object v6, p5

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->getConnection()Lorg/apache/hc/core5/http/io/HttpClientConnection;

    move-result-object p1

    iget-object p2, v1, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-virtual {p2, v4, v5, p1, v6}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->keepAlive(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpConnection;->close()V

    :cond_3
    invoke-virtual {v3}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->releaseConnection()V
    :try_end_6
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    return-object v5

    :goto_4
    invoke-virtual {v3}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->discardConnection()V

    throw p1

    :catch_9
    move-object v1, p0

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v1, p0

    move-object p1, v0

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v1, p0

    move-object p1, v0

    goto :goto_7

    :goto_5
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionRequestTimeoutException;

    const-string p2, "Connection request timeout"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ConnectionRequestTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_6
    new-instance p2, Lorg/apache/hc/core5/http/HttpException;

    const-string p3, "Unexpected failure leasing connection"

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 2

    const-string v0, "HTTP connection"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-virtual {v0, p2, v1, p4}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->preProcess(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-virtual {v0, p2, p1, p3, p4}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    iget-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-virtual {p2, p1, p3, p4}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->postProcess(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    throw p1
.end method

.method public execute(Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->execute(Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getConnPoolControl()Lorg/apache/hc/core5/pool/ConnPoolControl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/ConnPoolControl<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    return-object v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->getMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;)I

    move-result p1

    return p1
.end method

.method public getMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getRoutes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getRoutes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->getStats(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolStats;->getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolStats;->getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public keepAlive(Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-virtual {v0, p2, p3, p1, p4}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->keepAlive(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpConnection;->close()V

    :cond_0
    return p2
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->setMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;I)V

    return-void
.end method

.method public setMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxTotal(I)V

    return-void
.end method
