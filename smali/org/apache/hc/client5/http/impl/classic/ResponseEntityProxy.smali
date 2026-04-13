.class Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;
.super Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;

# interfaces
.implements Lorg/apache/hc/core5/http/io/EofSensorWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;
    }
.end annotation


# instance fields
.field private final execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpEntity;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;-><init>(Lorg/apache/hc/core5/http/HttpEntity;)V

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    return-void
.end method

.method public static synthetic a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->lambda$getTrailers$0(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isEndpointConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->disconnectEndpoint()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    :cond_1
    return-void
.end method

.method private discardConnection()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    :cond_0
    return-void
.end method

.method public static enhance(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;

    invoke-direct {v1, v0, p1}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;-><init>(Lorg/apache/hc/core5/http/HttpEntity;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    invoke-interface {p0, v1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getTrailers$0(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream;->getFooters()[Lorg/apache/hc/core5/http/Header;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/hc/core5/http/Header;

    :goto_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->close()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->discardConnection()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    const/4 p1, 0x0

    return p1

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->discardConnection()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    throw p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/EofSensorInputStream;

    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/io/EofSensorWatcher;)V

    return-object v0
.end method

.method public getTrailers()Lorg/apache/hc/core5/function/Supplier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/c;

    invoke-direct {v1, v0}, Lorg/apache/hc/client5/http/impl/classic/c;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to retrieve input stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->releaseEndpoint()V

    :cond_0
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    const/4 p1, 0x0

    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isEndpointAcquired()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->releaseConnection()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    if-nez v0, :cond_2

    :goto_3
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    return v1

    :cond_2
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->discardConnection()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;->access$000()Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;

    move-result-object p1

    :goto_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->discardConnection()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->cleanup()V

    throw p1
.end method
