.class public Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;

.field static final SOCKET_FACTORY_REGISTRY:Ljava/lang/String; = "http.socket-factory-registry"


# instance fields
.field private final dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

.field private final socketFactoryRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/client5/http/SchemePortResolver;",
            "Lorg/apache/hc/client5/http/DnsResolver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Socket factory registry"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->socketFactoryRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    sget-object p3, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    :goto_1
    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    return-void
.end method

.method private getSocketFactoryRegistry(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    const-string v0, "http.socket-factory-registry"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/config/Lookup;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->socketFactoryRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 8

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p4

    invoke-static {v0, v1, p4}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p4

    :goto_0
    move-object v4, p4

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/io/SocketConfig;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/io/SocketConfig;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p7

    const-string v0, "Connection"

    invoke-static {v2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Host"

    invoke-static {v5, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Socket config"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Context"

    invoke-static {v10, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v1, v10}, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->getSocketFactoryRegistry(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/hc/core5/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;

    if-eqz v3, :cond_d

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    new-array v0, v13, [Ljava/net/InetAddress;

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v0, v12

    move-object v14, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "{} resolving remote address"

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v4}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v4, v1, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/hc/client5/http/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "{} resolved to {}"

    invoke-interface {v0, v6, v8, v9}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move-object v14, v4

    :goto_0
    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v15

    iget-object v0, v1, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-interface {v0, v5}, Lorg/apache/hc/client5/http/SchemePortResolver;->resolve(Lorg/apache/hc/core5/http/HttpHost;)I

    move-result v4

    move v6, v12

    :goto_1
    array-length v0, v14

    if-ge v6, v0, :cond_c

    aget-object v0, v14, v6

    array-length v8, v14

    sub-int/2addr v8, v13

    if-ne v6, v8, :cond_3

    move/from16 v16, v13

    goto :goto_2

    :cond_3
    move/from16 v16, v12

    :goto_2
    invoke-interface {v3, v10}, Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;->createSocket(Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v8

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_4
    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoReuseAddress()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setReuseAddress(Z)V

    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->isTcpNoDelay()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoKeepAlive()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setKeepAlive(Z)V

    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v9

    if-lez v9, :cond_5

    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_5
    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSndBufSize()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSndBufSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_6
    invoke-virtual {v11}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoLinger()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result v9

    if-ltz v9, :cond_7

    invoke-virtual {v8, v13, v9}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_7
    invoke-interface {v2, v8}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    move v9, v6

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v1, p4

    filled-new-array {v12, v13, v7, v6, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "{}:{} connecting {}->{} ({})"

    invoke-interface {v0, v13, v12}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v8

    move-object v8, v1

    move v1, v4

    move-object v4, v12

    :goto_3
    move v12, v9

    move-object/from16 v9, p6

    goto :goto_4

    :cond_8
    move v1, v4

    move-object v4, v8

    move-object/from16 v8, p4

    goto :goto_3

    :goto_4
    :try_start_0
    invoke-interface/range {v3 .. v10}, Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;->connectSocket(Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    invoke-interface {v2, v15}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "{}:{} connected {}->{} as {}"

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v9, v7, v6, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v4, v8}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    if-eqz v16, :cond_a

    sget-object v1, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v2, v3, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{}:{} connection to {} failed ({}); terminating operation"

    invoke-interface {v1, v3, v2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-static {v0, v5, v14}, Lorg/apache/hc/client5/http/ConnectExceptionSupport;->enhance(Ljava/io/IOException;Lorg/apache/hc/core5/net/NamedEndpoint;[Ljava/net/InetAddress;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a
    sget-object v4, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->LOG:LO5/a;

    invoke-interface {v4}, LO5/a;->c()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v8, v9, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "{}:{} connection to {} failed ({}); retrying connection to the next address"

    invoke-interface {v4, v6, v0}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v6, v12, 0x1

    move-object/from16 v10, p7

    move v4, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_c
    :goto_5
    return-void

    :cond_d
    new-instance v0, Lorg/apache/hc/client5/http/UnsupportedSchemeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " protocol is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 8

    invoke-static {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->getSocketFactoryRegistry(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-interface {v0, p2}, Lorg/apache/hc/client5/http/SchemePortResolver;->resolve(Lorg/apache/hc/core5/http/HttpHost;)I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    const-string p2, "Connection is closed"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/UnsupportedSchemeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " protocol does not support connection upgrade"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/hc/client5/http/UnsupportedSchemeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " protocol is not supported"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
