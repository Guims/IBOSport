.class public Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;
.super Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;


# instance fields
.field private final connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Resolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOSessionListener;",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    sget-object v6, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL_IMMEDIATE_CALLBACK:Lorg/apache/hc/core5/function/Callback;

    sget-object v7, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/function/Resolver;)V

    new-instance p1, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-direct {p1, p0, p6, p7}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;-><init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/function/Resolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V

    iput-object p1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->lambda$execute$0(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method private execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/concurrent/CancellableDependency;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    const-string v0, "Exchange handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Timeout"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Context"

    invoke-static {p5, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v3, p4

    move-object v7, p5

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/a;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {v4, v1, v7}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_1
    move-object v4, p1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :goto_2
    invoke-interface {v4, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 11

    invoke-interface/range {p6 .. p6}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p6 .. p6}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v2, v0, v1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    new-instance v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    move-object v4, p0

    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v3 .. v10}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-virtual {v0, v2, p1, v3}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getSession(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Request authority not specified"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public final execute(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Request producer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Response consumer"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Timeout"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    move-object p5, p4

    new-instance p4, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {p4, p6}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    move-object p6, p2

    new-instance p2, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$2;

    invoke-direct {v1, p0, p4, p4}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$2;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;Lorg/apache/hc/core5/concurrent/BasicFuture;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V

    invoke-direct {p2, p1, p6, v1}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    if-eqz v0, :cond_0

    move-object p6, v0

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->create()Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object p1

    move-object p6, p1

    goto :goto_0

    :goto_1
    invoke-direct/range {p1 .. p6}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object p4
.end method

.method public final execute(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation

    const-string v0, "Exchange handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Timeout"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Context"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;

    invoke-direct {v4}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object v4
.end method

.method public execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getRoutes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    return-object v0
.end method

.method public setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method
