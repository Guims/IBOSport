.class Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecRuntime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;
    }
.end annotation


# instance fields
.field private final connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

.field private final log:LO5/a;

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

.field private final sessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LO5/a;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/core5/http/nio/HandlerFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO5/a;",
            "Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->reusable:Z

    return p1
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)LO5/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-object p0
.end method

.method private closeEndpoint(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;)V
    .locals 2

    iget-object v0, p1, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->session:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    const-string v1, "{} endpoint closed"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
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

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    invoke-interface {p3}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    const-string v0, "{} acquiring endpoint ({})"

    invoke-interface {p3, p1, p2, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$1;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-virtual {p3, v2, p2, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->getSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/Operations;->cancellable(Ljava/util/concurrent/Future;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v1, p0

    move-object v5, p5

    invoke-interface {v5, p0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/Operations;->nonCancellable()Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 5
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

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/Operations;->nonCancellable()Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->target:Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    const-string v3, "{} connecting endpoint ({})"

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    new-instance v3, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;

    invoke-direct {v3, p0, v1, v0, p2}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-virtual {v2, v1, p1, v3}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->getSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/Operations;->cancellable(Ljava/util/concurrent/Future;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public discardEndpoint()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->closeEndpoint(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;)V

    :cond_0
    return-void
.end method

.method public ensureValid()Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "I/O session not acquired / already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 11

    new-instance v7, Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    invoke-direct {v7}, Lorg/apache/hc/core5/concurrent/ComplexCancellable;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    move-result-object v3

    iget-object v5, v3, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v5}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    const-string v1, "{} start execution {}"

    invoke-static {v3}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    invoke-direct {p1, p2, v0, v7, p3}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    sget-object p2, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {v5, p1, p2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-object v7

    :cond_1
    iget-object v2, v3, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->target:Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;Ljava/lang/String;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    invoke-virtual {v10, v2, v9, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->getSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    return-object v7
.end method

.method public fork()Lorg/apache/hc/client5/http/async/AsyncExecRuntime;
    .locals 4

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->log:LO5/a;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->connPool:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;-><init>(LO5/a;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/core5/http/nio/HandlerFactory;)V

    return-object v0
.end method

.method public isEndpointAcquired()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

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

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->reusable:Z

    return-void
.end method

.method public markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public releaseEndpoint()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->reusable:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->closeEndpoint(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;)V

    :cond_0
    return-void
.end method

.method public upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/protocol/HttpClientContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public validateConnection()Z
    .locals 3

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->reusable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->sessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->closeEndpoint(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;)V

    :cond_2
    return v1
.end method
