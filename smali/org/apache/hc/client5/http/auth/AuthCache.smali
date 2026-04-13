.class public interface abstract Lorg/apache/hc/client5/http/auth/AuthCache;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthScheme;
.end method

.method public get(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/hc/client5/http/auth/AuthCache;->get(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScheme;)V
    .locals 0

    invoke-interface {p0, p1, p3}, Lorg/apache/hc/client5/http/auth/AuthCache;->put(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    return-void
.end method

.method public abstract put(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthScheme;)V
.end method

.method public abstract remove(Lorg/apache/hc/core5/http/HttpHost;)V
.end method

.method public remove(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/hc/client5/http/auth/AuthCache;->remove(Lorg/apache/hc/core5/http/HttpHost;)V

    return-void
.end method
