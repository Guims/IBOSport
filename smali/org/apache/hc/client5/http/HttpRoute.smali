.class public final Lorg/apache/hc/client5/http/HttpRoute;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private final proxyChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private final secure:Z

.field private final targetHost:Lorg/apache/hc/core5/http/HttpHost;

.field private final tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;)V
    .locals 7

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v5, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;Z",
            "Lorg/apache/hc/client5/http/RouteInfo$TunnelType;",
            "Lorg/apache/hc/client5/http/RouteInfo$LayerType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Target host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v0

    const-string v1, "Target port"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    iput-object p1, p0, Lorg/apache/hc/client5/http/HttpRoute;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p2, p0, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    :goto_0
    sget-object p1, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-ne p5, p1, :cond_2

    iget-object p1, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string p2, "Proxy required if tunnelled"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    :cond_2
    iput-boolean p4, p0, Lorg/apache/hc/client5/http/HttpRoute;->secure:Z

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    sget-object p5, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    :goto_2
    iput-object p5, p0, Lorg/apache/hc/client5/http/HttpRoute;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-eqz p6, :cond_4

    goto :goto_3

    :cond_4
    sget-object p6, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    :goto_3
    iput-object p6, p0, Lorg/apache/hc/client5/http/HttpRoute;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/hc/core5/http/HttpHost;Z)V
    .locals 7

    const-string v0, "Proxy host"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz p4, :cond_0

    sget-object p3, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_0
    sget-object p3, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_1

    sget-object p3, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->LAYERED:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v4, p4

    goto :goto_3

    :cond_1
    sget-object p3, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/hc/core5/http/HttpHost;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V
    .locals 7

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Z)V
    .locals 7

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v5, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/hc/core5/http/HttpHost;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V
    .locals 7

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/hc/core5/http/HttpHost;Z)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/client5/http/HttpRoute;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/hc/client5/http/HttpRoute;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->secure:Z

    iget-boolean v3, p1, Lorg/apache/hc/client5/http/HttpRoute;->secure:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    iget-object v3, p1, Lorg/apache/hc/client5/http/HttpRoute;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    iget-object v3, p1, Lorg/apache/hc/client5/http/HttpRoute;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v3, p1, Lorg/apache/hc/client5/http/HttpRoute;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    invoke-static {v1, v3}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-static {v1, v3}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getHopCount()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getHopTarget(I)Lorg/apache/hc/core5/http/HttpHost;
    .locals 4

    const-string v0, "Hop index"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/HttpRoute;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Hop index exceeds tracked route length"

    invoke-static {v2, v3}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/HttpRoute;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    return-object p1
.end method

.method public getLayerType()Lorg/apache/hc/client5/http/RouteInfo$LayerType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProxyHost()Lorg/apache/hc/core5/http/HttpHost;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/HttpHost;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetHost()Lorg/apache/hc/core5/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    return-object v0
.end method

.method public getTunnelType()Lorg/apache/hc/client5/http/RouteInfo$TunnelType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/HttpHost;

    invoke-static {v0, v2}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->secure:Z

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(IZ)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLayered()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    sget-object v1, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->LAYERED:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->secure:Z

    return v0
.end method

.method public isTunnelled()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpRoute;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/HttpRoute;->getHopCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->localAddress:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v3, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_1

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    sget-object v3, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->LAYERED:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    if-ne v1, v3, :cond_2

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->secure:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/hc/client5/http/HttpRoute;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
