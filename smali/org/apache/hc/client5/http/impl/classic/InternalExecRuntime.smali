.class Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ExecRuntime;
.implements Lorg/apache/hc/core5/concurrent/Cancellable;


# instance fields
.field private final cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

.field private final endpointRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/client5/http/io/ConnectionEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final log:LO5/a;

.field private final manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

.field private final requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

.field private volatile reusable:Z

.field private volatile state:Ljava/lang/Object;

.field private volatile validDuration:Lorg/apache/hc/core5/util/TimeValue;


# direct methods
.method public constructor <init>(LO5/a;Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/concurrent/CancellableDependency;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->validDuration:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method private connectEndpoint(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->isExecutionAborted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v2, "{} connecting endpoint ({})"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    invoke-interface {v1, p1, v0, p2}, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;->connect(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v0, "{} endpoint connected"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;

    const-string p2, "Request aborted"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private discardEndpoint(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)V
    .locals 5

    const-string v0, "{} discarding endpoint"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

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
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    sget-object v2, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;->release(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void

    :goto_1
    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    sget-object v3, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v0, p1, v1, v3}, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;->release(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    throw v2
.end method


# virtual methods
.method public acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 2

    const-string v0, "Route"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectionRequestTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v1, "{} acquiring endpoint ({})"

    invoke-interface {v0, p1, p4, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    invoke-interface {v0, p1, p2, p4, p3}, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;->lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;

    move-result-object p2

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->state:Ljava/lang/Object;

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    :cond_1
    :try_start_0
    invoke-interface {p2, p4}, Lorg/apache/hc/client5/http/io/LeaseRequest;->get(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;->isConnected()Z

    move-result p3

    iput-boolean p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->reusable:Z

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    if-eqz p3, :cond_2

    invoke-interface {p3, p0}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {p3}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string p4, "{} acquired endpoint {}"

    invoke-static {p2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2, p4}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p2

    :goto_2
    new-instance p2, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;

    const-string p3, "Request execution failed"

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    new-instance p2, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;

    const-string p3, "Request aborted"

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    new-instance p2, Lorg/apache/hc/core5/http/ConnectionRequestTimeoutException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/ConnectionRequestTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Endpoint already acquired"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()Z
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v4, "{} cancel"

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->discardEndpoint(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)V

    :cond_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    :cond_0
    return-void
.end method

.method public discardEndpoint()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->discardEndpoint(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)V

    :cond_0
    return-void
.end method

.method public disconnectEndpoint()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v2, "{} endpoint closed"

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ensureValid()Lorg/apache/hc/client5/http/io/ConnectionEndpoint;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Endpoint not acquired / already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p3}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->isExecutionAborted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/config/RequestConfig;->getResponseTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v2, "{} start execution {}"

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;

    const-string p2, "Request aborted"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fork(Lorg/apache/hc/core5/concurrent/CancellableDependency;)Lorg/apache/hc/client5/http/classic/ExecRuntime;
    .locals 4

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;-><init>(LO5/a;Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/concurrent/CancellableDependency;)V

    return-object v0
.end method

.method public isConnectionReusable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->reusable:Z

    return v0
.end method

.method public isEndpointAcquired()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExecutionAborted()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->isCancelled()Z

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

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->reusable:Z

    return-void
.end method

.method public markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->reusable:Z

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->state:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->validDuration:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public releaseEndpoint()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->endpointRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->reusable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v2, "{} releasing valid endpoint"

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->state:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->validDuration:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v1, v0, v2, v3}, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;->release(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->discardEndpoint(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)V

    :cond_2
    return-void
.end method

.method public upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->ensureValid()Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->log:LO5/a;

    const-string v2, "{} upgrading endpoint"

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;->manager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    invoke-interface {v1, v0, p1}, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;->upgrade(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
