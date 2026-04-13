.class Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final callback:Lorg/apache/hc/core5/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field private ended:J

.field private final httpclient:Lorg/apache/hc/client5/http/classic/HttpClient;

.field private final metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

.field private final request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

.field private final responseHandler:Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final scheduled:J

.field private started:J


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/classic/HttpClient;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/classic/HttpClient;",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "TV;>;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TV;>;",
            "Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->scheduled:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    iput-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->ended:J

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->httpclient:Lorg/apache/hc/client5/http/classic/HttpClient;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->responseHandler:Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getScheduledConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->httpclient:Lorg/apache/hc/client5/http/classic/HttpClient;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->responseHandler:Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/hc/client5/http/classic/HttpClient;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->ended:J

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getSuccessfulConnections()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getRequests()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getTasks()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    return-object v0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getFailedConnections()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->ended:J

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getRequests()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getTasks()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->increment(J)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->metrics:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v0

    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V

    :cond_0
    return-void
.end method

.method public getEnded()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->ended:J

    return-wide v0
.end method

.method public getScheduled()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->scheduled:J

    return-wide v0
.end method

.method public getStarted()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->started:J

    return-wide v0
.end method
