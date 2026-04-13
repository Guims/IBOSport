.class public interface abstract Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public getRetryInterval(Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/IOException;ILorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 0

    sget-object p1, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    return-object p1
.end method

.method public abstract getRetryInterval(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;
.end method

.method public abstract retryRequest(Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/IOException;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z
.end method

.method public abstract retryRequest(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z
.end method
