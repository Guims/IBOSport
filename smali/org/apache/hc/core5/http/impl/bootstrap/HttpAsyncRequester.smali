.class public Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;
.super Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;

# interfaces
.implements Lorg/apache/hc/core5/pool/ConnPoolControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$InternalAsyncClientEndpoint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;",
        "Lorg/apache/hc/core5/pool/ConnPoolControl<",
        "Lorg/apache/hc/core5/http/HttpHost;",
        ">;"
    }
.end annotation


# instance fields
.field private final connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private final handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;)V
    .locals 9
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
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;-><init>(Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V
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
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            "Lorg/apache/hc/core5/util/Timeout;",
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

    const-string p1, "Connection pool"

    invoke-static {p6, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/pool/ManagedConnPool;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-object/from16 p1, p8

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->lambda$execute$0(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;)Lorg/apache/hc/core5/pool/ManagedConnPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    return-object p0
.end method

.method private synthetic lambda$execute$0(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 10

    invoke-interface {p5}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v2, v0, v1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    new-instance v3, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;

    move-object v4, p0

    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v9}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v2, p1, p2, v3}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Request authority not specified"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public closeExpired()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeExpired()V

    return-void
.end method

.method public closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public connect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/util/Timeout;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->doConnect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public doConnect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
            ">;"
        }
    .end annotation

    const-string v0, "Host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Timeout"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {v3, p4}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iget-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-interface {p4, v4, p1, v5, v1}, Lorg/apache/hc/core5/pool/ConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Ljava/util/concurrent/Future;)V

    return-object v3
.end method

.method public doTlsUpgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    new-instance v5, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;

    invoke-direct {v5, p0, p3, p3, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$4;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TLS upgrade not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    new-instance v0, Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-direct {v0, p6}, Lorg/apache/hc/core5/concurrent/BasicFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    new-instance p6, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$3;

    invoke-direct {v1, p0, v0, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$3;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/concurrent/BasicFuture;Lorg/apache/hc/core5/concurrent/BasicFuture;)V

    invoke-direct {p6, p1, p2, v1}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->create()Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object p5

    :goto_0
    invoke-virtual {p0, p6, p3, p4, p5}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object v0
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

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

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

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    const-string v0, "Exchange handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Timeout"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Context"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lorg/apache/hc/client5/http/impl/async/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v6, p4

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/async/m;-><init>(Lorg/apache/hc/core5/io/ModalCloseable;Ljava/lang/Object;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Ljava/lang/Object;I)V

    invoke-interface {v4, v1, v6}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
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

.method public execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->getMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;)I

    move-result p1

    return p1
.end method

.method public getMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getRoutes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->getStats(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolStats;->getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0}, Lorg/apache/hc/core5/pool/ConnPoolStats;->getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->setMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;I)V

    return-void
.end method

.method public setMaxPerRoute(Lorg/apache/hc/core5/http/HttpHost;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->connPool:Lorg/apache/hc/core5/pool/ManagedConnPool;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxTotal(I)V

    return-void
.end method
