.class Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->sendRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final socketInputStream:Ljava/io/InputStream;

.field final socketOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;

.field totalBytes:J

.field final synthetic val$request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

.field final synthetic val$socketHolder:Lorg/apache/hc/core5/http/impl/io/SocketHolder;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;Lorg/apache/hc/core5/http/impl/io/SocketHolder;Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->this$0:Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->val$socketHolder:Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->val$request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public checkForEarlyResponse(JI)V
    .locals 9

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->this$0:Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->access$000(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;)Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->val$request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->this$0:Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketInputStream:Ljava/io/InputStream;

    int-to-long v7, p3

    move-wide v5, p1

    invoke-interface/range {v1 .. v8}, Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;->isEarlyResponseDetected(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Ljava/io/InputStream;JJ)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/impl/io/ResponseOutOfOrderException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/impl/io/ResponseOutOfOrderException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->checkForEarlyResponse(JI)V

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->checkForEarlyResponse(JI)V

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->checkForEarlyResponse(JI)V

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->totalBytes:J

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
