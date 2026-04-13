.class public abstract Lorg/apache/hc/client5/http/impl/classic/AbstractHttpClientResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleEntity(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpEntity;",
            ")TT;"
        }
    .end annotation
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/classic/AbstractHttpClientResponseHandler;->handleEntity(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    new-instance v0, Lorg/apache/hc/client5/http/HttpResponseException;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/client5/http/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
