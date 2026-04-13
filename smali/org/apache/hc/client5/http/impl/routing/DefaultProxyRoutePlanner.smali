.class public Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;
.super Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final proxy:Lorg/apache/hc/core5/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;-><init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    const-string p2, "Proxy host"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    return-void
.end method


# virtual methods
.method public determineProxy(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    return-object p1
.end method
