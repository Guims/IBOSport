.class public final Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x2000

.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;


# instance fields
.field private final chunkSize:J

.field private final maxChunksToCheck:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1}, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "chunkSize"

    invoke-static {p1, p2, v0}, Lorg/apache/hc/core5/util/Args;->positive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->chunkSize:J

    const-string p1, "maxChunksToCheck"

    invoke-static {p3, p4, p1}, Lorg/apache/hc/core5/util/Args;->positive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->maxChunksToCheck:J

    return-void
.end method

.method private nextWriteStartsNewChunk(JJ)Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->chunkSize:J

    div-long v0, p1, v0

    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->maxChunksToCheck:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr p1, p3

    iget-wide p3, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->chunkSize:J

    div-long/2addr p1, p3

    iget-wide p3, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->maxChunksToCheck:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public isEarlyResponseDetected(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Ljava/io/InputStream;JJ)Z
    .locals 0

    invoke-direct {p0, p4, p5, p6, p7}, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->nextWriteStartsNewChunk(JJ)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/hc/core5/util/Timeout;->ONE_MILLISECOND:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/io/BHttpConnection;->isDataAvailable(Lorg/apache/hc/core5/util/Timeout;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultResponseOutOfOrderStrategy{chunkSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->chunkSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxChunksToCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/io/MonitoringResponseOutOfOrderStrategy;->maxChunksToCheck:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
