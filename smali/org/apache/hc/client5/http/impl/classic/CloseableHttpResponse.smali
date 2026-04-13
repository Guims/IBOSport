.class public final Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/ClassicHttpResponse;


# instance fields
.field private final execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

.field private final response:Lorg/apache/hc/core5/http/ClassicHttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/ClassicHttpResponse;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    return-void
.end method

.method public static adapt(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    return-object p0

    :cond_1
    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    invoke-direct {v1, p0, v0}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;-><init>(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    return-object v1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addHeader(Lorg/apache/hc/core5/http/Header;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->disconnectEndpoint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-interface {v1}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public countHeaders(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->countHeaders(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    return v0
.end method

.method public getEntity()Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public getHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->getHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders()[Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/MessageHeaders;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->getHeaders(Ljava/lang/String;)[Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->getLastHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Lorg/apache/hc/core5/http/Header;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeader(Lorg/apache/hc/core5/http/Header;)Z

    move-result p1

    return p1
.end method

.method public removeHeaders(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setCode(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpResponse;->setCode(I)V

    return-void
.end method

.method public setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHeader(Lorg/apache/hc/core5/http/Header;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setHeader(Lorg/apache/hc/core5/http/Header;)V

    return-void
.end method

.method public varargs setHeaders([Lorg/apache/hc/core5/http/Header;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setHeaders([Lorg/apache/hc/core5/http/Header;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->response:Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
