.class public Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpTransportMetrics;


# instance fields
.field private final bytesTransferred:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->bytesTransferred:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->bytesTransferred:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementBytesTransferred(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->bytesTransferred:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method
