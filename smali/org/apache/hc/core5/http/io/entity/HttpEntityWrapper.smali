.class public Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpEntity;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wrapped entity"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpEntity;

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->getTrailers()Lorg/apache/hc/core5/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrapper ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
