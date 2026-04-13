.class Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpEntity;


# instance fields
.field private consumed:Z

.field private final original:Lorg/apache/hc/core5/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    return-void
.end method

.method public static enhance(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->isEnhanced(Lorg/apache/hc/core5/http/HttpEntity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;

    invoke-direct {v1, v0}, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;-><init>(Lorg/apache/hc/core5/http/HttpEntity;)V

    invoke-interface {p0, v1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    :cond_0
    return-void
.end method

.method public static isEnhanced(Lorg/apache/hc/core5/http/HttpEntity;)Z
    .locals 0

    instance-of p0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    return-object v0
.end method

.method public getTrailerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getTrailerNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTrailers()Lorg/apache/hc/core5/function/Supplier;
    .locals 1
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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->getTrailers()Lorg/apache/hc/core5/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->consumed:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->consumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->consumed:Z

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->original:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
