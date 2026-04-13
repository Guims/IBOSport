.class public Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final httpclient:Lorg/apache/hc/client5/http/classic/HttpClient;

.field private final metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/classic/HttpClient;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->httpclient:Lorg/apache/hc/client5/http/classic/HttpClient;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->httpclient:Lorg/apache/hc/client5/http/classic/HttpClient;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "TT;>;)",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/FutureTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "TT;>;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getScheduledConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->httpclient:Lorg/apache/hc/client5/http/classic/HttpClient;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;-><init>(Lorg/apache/hc/client5/http/classic/HttpClient;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;)V

    new-instance p1, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;

    invoke-direct {p1, v3, v1}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;-><init>(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;)V

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Close has been called on this httpclient instance."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public metrics()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionService;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    return-object v0
.end method
