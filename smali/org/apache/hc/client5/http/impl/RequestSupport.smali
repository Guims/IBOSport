.class public final Lorg/apache/hc/client5/http/impl/RequestSupport;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractPathPrefix(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/lang/String;
    .locals 5

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/net/URIBuilder;->setFragment(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->clearParameters()Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->normalizeSyntax()Lorg/apache/hc/core5/net/URIBuilder;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIBuilder;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "/"

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v1, v3, v4}, Lorg/apache/hc/core5/net/PercentCodec;->encode(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
