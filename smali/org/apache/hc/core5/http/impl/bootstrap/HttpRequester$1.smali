.class Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;
.super Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

.field final synthetic val$connectionHolder:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

.field final synthetic val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

.field final synthetic val$response:Lorg/apache/hc/core5/http/ClassicHttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Lorg/apache/hc/core5/http/HttpEntity;Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$connectionHolder:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;-><init>(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-void
.end method

.method private abortConnection()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$connectionHolder:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->discardConnection()V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->releaseConnection()V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->abortConnection()V

    return-void
.end method

.method private releaseConnection()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$connectionHolder:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->getConnection()Lorg/apache/hc/core5/http/io/HttpClientConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

    invoke-static {v1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->access$000(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;)Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->keepAlive(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$connectionHolder:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$connectionHolder:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->discardConnection()V

    return-void

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->val$connectionHolder:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->discardConnection()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->releaseConnection()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;

    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1$1;

    invoke-direct {v2, p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1$1;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/io/EofSensorWatcher;)V

    return-object v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$1;->abortConnection()V

    return-void
.end method
