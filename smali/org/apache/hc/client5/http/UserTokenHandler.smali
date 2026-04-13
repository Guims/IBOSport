.class public interface abstract Lorg/apache/hc/client5/http/UserTokenHandler;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p3}, Lorg/apache/hc/client5/http/UserTokenHandler;->getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;
.end method
