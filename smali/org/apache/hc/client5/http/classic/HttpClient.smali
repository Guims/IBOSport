.class public interface abstract Lorg/apache/hc/client5/http/classic/HttpClient;
.super Ljava/lang/Object;


# virtual methods
.method public abstract execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/HttpResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public executeOpen(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/classic/HttpClient;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/ClassicHttpResponse;

    return-object p1
.end method
