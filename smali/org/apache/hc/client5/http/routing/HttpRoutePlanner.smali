.class public interface abstract Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public abstract determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;
.end method
