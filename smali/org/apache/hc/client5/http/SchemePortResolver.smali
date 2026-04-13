.class public interface abstract Lorg/apache/hc/client5/http/SchemePortResolver;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public resolve(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)I
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    invoke-interface {p0, v0}, Lorg/apache/hc/client5/http/SchemePortResolver;->resolve(Lorg/apache/hc/core5/http/HttpHost;)I

    move-result p1

    return p1
.end method

.method public abstract resolve(Lorg/apache/hc/core5/http/HttpHost;)I
.end method
