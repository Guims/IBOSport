.class public Lorg/apache/hc/client5/http/impl/classic/BasicHttpClientResponseHandler;
.super Lorg/apache/hc/client5/http/impl/classic/AbstractHttpClientResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/client5/http/impl/classic/AbstractHttpClientResponseHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/AbstractHttpClientResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleEntity(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/classic/BasicHttpClientResponseHandler;->handleEntity(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleEntity(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->toString(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/hc/core5/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/hc/client5/http/ClientProtocolException;

    invoke-direct {v0, p1}, Lorg/apache/hc/client5/http/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/classic/BasicHttpClientResponseHandler;->handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/client5/http/impl/classic/AbstractHttpClientResponseHandler;->handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
