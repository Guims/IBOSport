.class final Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    return-void
.end method

.method public static synthetic access$000()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->LOG:LO5/a;

    return-object v0
.end method


# virtual methods
.method public connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
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

    new-instance v9, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    move-object/from16 v0, p7

    invoke-direct {v9, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    if-eqz p3, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, p4, p3, p5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{}:{} connecting {} to {} ({})"

    invoke-interface {v0, v3, v2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v8, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;

    invoke-direct {v8, p0, v9, p2, p3}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;-><init>(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v2 .. v8}, Lorg/apache/hc/core5/reactor/ConnectionInitiator;->connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Ljava/util/concurrent/Future;)V

    return-object v9

    :cond_1
    sget-object v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "{} resolving remote address"

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/hc/client5/http/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "{} resolved to {}"

    invoke-interface {v0, v3, v4, v5}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    move-object v1, p0

    move-object v6, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;-><init>(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;[Ljava/net/InetAddress;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object v8

    :catch_0
    move-exception v0

    move-object v8, v9

    invoke-virtual {v8, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-object v8
.end method

.method public connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
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

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
