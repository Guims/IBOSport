.class public final Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;
.super Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

.field private final connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    sget-object v4, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;

    sget-object v5, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;

    new-instance v7, Lorg/apache/hc/client5/http/impl/async/e;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Lorg/apache/hc/client5/http/impl/async/e;-><init>(I)V

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    invoke-direct {p0, v0, p2, p4}, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;-><init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;)V

    new-instance p1, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->getConnectionInitiator()Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    move-result-object p2

    invoke-direct {p1, p2, p6}, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;-><init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/client5/http/DnsResolver;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    new-instance p3, Lorg/apache/hc/client5/http/impl/async/f;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    invoke-direct {p2, p1, p3, p7}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;-><init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/function/Resolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->lambda$new$0(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public static synthetic access$000()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic b(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->lambda$new$1(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/concurrent/Future;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->lambda$null$2(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->lambda$execute$3(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method private synthetic lambda$execute$3(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 11

    move-object/from16 v3, p5

    instance-of v0, v3, Lorg/apache/hc/client5/http/config/Configurable;

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/apache/hc/client5/http/config/Configurable;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/config/Configurable;->getConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v8

    new-instance v9, Lorg/apache/hc/core5/http/HttpHost;

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    iget-object v10, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;-><init>(Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;)V

    invoke-virtual {v10, v9, v8, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->getSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/n;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/client5/http/impl/async/n;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p2}, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;-><init>(Lorg/apache/hc/core5/io/CloseMode;)V

    sget-object v1, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p0, v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$null$2(Ljava/util/concurrent/Future;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->close()V

    return-void
.end method

.method public execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation

    new-instance v5, Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    invoke-direct {v5}, Lorg/apache/hc/core5/concurrent/ComplexCancellable;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->isRunning()Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    :try_start_1
    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-object p2, v0

    move-object v3, p1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-static {}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0

    goto :goto_0

    :goto_2
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/m;
    :try_end_2
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    :try_start_3
    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/async/m;-><init>(Lorg/apache/hc/core5/io/ModalCloseable;Ljava/lang/Object;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Ljava/lang/Object;I)V

    invoke-interface {v3, v0, p3}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object v5

    :catch_3
    move-exception v0

    :goto_3
    move-object p2, v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    :goto_4
    move-object v3, p1

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_4

    :cond_1
    move-object v3, p1

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Request execution cancelled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    invoke-interface {v3, p2}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-object v5
.end method

.method public bridge synthetic register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V

    return-void
.end method
