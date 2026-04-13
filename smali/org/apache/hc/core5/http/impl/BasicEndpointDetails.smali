.class public final Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;
.super Lorg/apache/hc/core5/http/EndpointDetails;


# instance fields
.field private final metrics:Lorg/apache/hc/core5/http/HttpConnectionMetrics;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/http/HttpConnectionMetrics;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/hc/core5/http/EndpointDetails;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;)V

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;->metrics:Lorg/apache/hc/core5/http/HttpConnectionMetrics;

    return-void
.end method


# virtual methods
.method public getReceivedBytesCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;->metrics:Lorg/apache/hc/core5/http/HttpConnectionMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;->metrics:Lorg/apache/hc/core5/http/HttpConnectionMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;->metrics:Lorg/apache/hc/core5/http/HttpConnectionMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnectionMetrics;->getResponseCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;->metrics:Lorg/apache/hc/core5/http/HttpConnectionMetrics;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
