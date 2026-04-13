.class public Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;
.super Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

# interfaces
.implements Lorg/apache/hc/core5/http2/H2TransportMetrics;


# instance fields
.field private final framesTransferred:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;->framesTransferred:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getFramesTransferred()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;->framesTransferred:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementFramesTransferred()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;->framesTransferred:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method
