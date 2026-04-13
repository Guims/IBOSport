.class public Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/routing/HttpRouteDirector;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;->INSTANCE:Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public directStep(Lorg/apache/hc/client5/http/RouteInfo;Lorg/apache/hc/client5/http/RouteInfo;)I
    .locals 3

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->isSecure()Z

    move-result v0

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->isSecure()Z

    move-result v1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public firstStep(Lorg/apache/hc/client5/http/RouteInfo;)I
    .locals 1

    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public nextStep(Lorg/apache/hc/client5/http/RouteInfo;Lorg/apache/hc/client5/http/RouteInfo;)I
    .locals 2

    const-string v0, "Planned route"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;->proxiedStep(Lorg/apache/hc/client5/http/RouteInfo;Lorg/apache/hc/client5/http/RouteInfo;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;->directStep(Lorg/apache/hc/client5/http/RouteInfo;Lorg/apache/hc/client5/http/RouteInfo;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;->firstStep(Lorg/apache/hc/client5/http/RouteInfo;)I

    move-result p1

    return p1
.end method

.method public proxiedStep(Lorg/apache/hc/client5/http/RouteInfo;Lorg/apache/hc/client5/http/RouteInfo;)I
    .locals 7

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result v0

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_4

    invoke-interface {p1, v4}, Lorg/apache/hc/client5/http/RouteInfo;->getHopTarget(I)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v5

    invoke-interface {p2, v4}, Lorg/apache/hc/client5/http/RouteInfo;->getHopTarget(I)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/hc/core5/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-le v0, v1, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->isLayered()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->isLayered()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v2

    :cond_8
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->isTunnelled()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 p1, 0x3

    return p1

    :cond_9
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->isLayered()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->isLayered()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x5

    return p1

    :cond_a
    invoke-interface {p1}, Lorg/apache/hc/client5/http/RouteInfo;->isSecure()Z

    move-result p1

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->isSecure()Z

    move-result p2

    if-eq p1, p2, :cond_b

    return v2

    :cond_b
    return v3
.end method
