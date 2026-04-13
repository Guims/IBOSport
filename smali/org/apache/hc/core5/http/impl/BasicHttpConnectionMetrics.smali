.class public final Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpConnectionMetrics;


# instance fields
.field private final inTransportMetric:Lorg/apache/hc/core5/http/io/HttpTransportMetrics;

.field private final outTransportMetric:Lorg/apache/hc/core5/http/io/HttpTransportMetrics;

.field private final requestCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final responseCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/HttpTransportMetrics;Lorg/apache/hc/core5/http/io/HttpTransportMetrics;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->inTransportMetric:Lorg/apache/hc/core5/http/io/HttpTransportMetrics;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->outTransportMetric:Lorg/apache/hc/core5/http/io/HttpTransportMetrics;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->responseCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getReceivedBytesCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->inTransportMetric:Lorg/apache/hc/core5/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->responseCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->outTransportMetric:Lorg/apache/hc/core5/http/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public incrementRequestCount()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method public incrementResponseCount()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->responseCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method
