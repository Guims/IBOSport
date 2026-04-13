.class Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecRuntime;


# instance fields
.field private final connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

.field private final endpointRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final log:LO5/a;

.field private final manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

.field private final pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile reusable:Z

.field private volatile state:Ljava/lang/Object;

.field private final tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private volatile validDuration:Lorg/apache/hc/core5/util/TimeValue;


# direct methods
.method public constructor <init>(LO5/a;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/client5/http/config/TlsConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO5/a;",
            "Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/client5/http/config/TlsConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->validDuration:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->lambda$execute$0(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->reusable:Z

    return p1
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)LO5/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-object p0
.end method

.method private discardEndpoint(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 5

    const-string v0, "{} discarding endpoint"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    const-string v3, "{} endpoint closed"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    sget-object v2, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void

    :goto_1
    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    sget-object v3, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v0, p1, v1, v3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    throw v2
.end method

.method private static synthetic lambda$execute$0(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)Z
    .locals 0

    invoke-interface {p0}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->cancel()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/client5/http/protocol/HttpClientContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
            ">;)",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->state:Ljava/lang/Object;

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectionRequestTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v4

    iget-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {p4}, LO5/a;->c()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    const-string v0, "{} acquiring endpoint ({})"

    invoke-interface {p4, p1, v4, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    new-instance v5, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;

    invoke-direct {v5, p0, p1, p5}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Ljava/lang/String;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/Operations;->cancellable(Ljava/util/concurrent/Future;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p5, p0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/Operations;->nonCancellable()Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/protocol/HttpClientContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
            ">;)",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/Operations;->nonCancellable()Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    const-string v2, "{} connecting endpoint ({})"

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    new-instance v6, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$2;

    invoke-direct {v6, p0, p2, p2}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$2;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    move-object v5, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->connect(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/Operations;->cancellable(Ljava/util/concurrent/Future;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public discardEndpoint()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->discardEndpoint(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    :cond_0
    return-void
.end method

.method public ensureValid()Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Endpoint not acquired / already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    const-string v1, "{} start execution {}"

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getResponseTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_1
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/RequestConfig;->isHardCancellationEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/apache/hc/client5/http/impl/async/n;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lorg/apache/hc/client5/http/impl/async/n;-><init>(ILjava/lang/Object;)V

    return-object p1

    :cond_2
    move-object v1, p0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    invoke-virtual {p0, v5, v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;

    :goto_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/Operations;->nonCancellable()Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public fork()Lorg/apache/hc/client5/http/async/AsyncExecRuntime;
    .locals 6

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;-><init>(LO5/a;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/client5/http/config/TlsConfig;)V

    return-object v0
.end method

.method public isEndpointAcquired()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndpointConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public markConnectionNonReusable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->reusable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->state:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->validDuration:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->reusable:Z

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->state:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->validDuration:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public releaseEndpoint()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->reusable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    const-string v2, "{} releasing valid endpoint"

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->state:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->validDuration:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v1, v0, v2, v3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->discardEndpoint(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    :cond_2
    return-void
.end method

.method public upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/protocol/HttpClientContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->log:LO5/a;

    const-string v2, "{} upgrading endpoint"

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->manager:Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    new-instance v3, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;

    invoke-direct {v3, p0, p2, p2}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-interface {v1, v0, v2, p1, v3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public validateConnection()Z
    .locals 3

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->reusable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->discardEndpoint(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    :cond_2
    return v1
.end method
