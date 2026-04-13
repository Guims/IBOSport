.class public final Lorg/apache/hc/client5/http/RouteTracker;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/RouteInfo;
.implements Ljava/lang/Cloneable;


# instance fields
.field private connected:Z

.field private layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

.field private secure:Z

.field private final targetHost:Lorg/apache/hc/core5/http/HttpHost;

.field private tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/HttpRoute;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/client5/http/RouteTracker;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Target host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p2, p0, Lorg/apache/hc/client5/http/RouteTracker;->localAddress:Ljava/net/InetAddress;

    sget-object p1, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    iput-object p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object p1, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    iput-object p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public connectProxy(Lorg/apache/hc/core5/http/HttpHost;Z)V
    .locals 3

    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already connected"

    invoke-static {v0, v2}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    filled-new-array {p1}, [Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    iput-boolean p2, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    return-void
.end method

.method public connectTarget(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already connected"

    invoke-static {v0, v2}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/client5/http/RouteTracker;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/hc/client5/http/RouteTracker;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    iget-boolean v3, p1, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    iget-boolean v3, p1, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    iget-object v3, p1, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    iget-object v3, p1, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v3, p1, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    invoke-static {v1, v3}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lorg/apache/hc/client5/http/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v1, v3}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    iget-object p1, p1, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getHopCount()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getHopTarget(I)Lorg/apache/hc/core5/http/HttpHost;
    .locals 4

    const-string v0, "Hop index"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/RouteTracker;->getHopCount()I

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    return-object p1
.end method

.method public getLayerType()Lorg/apache/hc/client5/http/RouteInfo$LayerType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getProxyHost()Lorg/apache/hc/core5/http/HttpHost;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTargetHost()Lorg/apache/hc/core5/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    return-object v0
.end method

.method public getTunnelType()Lorg/apache/hc/client5/http/RouteInfo$TunnelType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v0, v4}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(IZ)I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(IZ)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    return v0
.end method

.method public isLayered()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

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

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    return v0
.end method

.method public isTunnelled()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public layerProtocol(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    const-string v1, "No layered protocol unless connected"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    sget-object v0, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->LAYERED:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    iput-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    sget-object v1, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    iput-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    iput-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    return-void
.end method

.method public toRoute()Lorg/apache/hc/client5/http/HttpRoute;
    .locals 8

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v2, p0, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v3, p0, Lorg/apache/hc/client5/http/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    iget-boolean v5, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    iget-object v6, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    iget-object v7, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/hc/core5/http/HttpHost;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/RouteTracker;->getHopCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "RouteTracker["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->localAddress:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v3, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_2

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->layered:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    sget-object v3, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->LAYERED:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    if-ne v1, v3, :cond_3

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "}->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    if-eqz v1, :cond_5

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/apache/hc/client5/http/RouteTracker;->targetHost:Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tunnelProxy(Lorg/apache/hc/core5/http/HttpHost;Z)V
    .locals 5

    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    const-string v1, "No tunnel unless connected"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    const-string v1, "No tunnel without proxy"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/apache/hc/core5/http/HttpHost;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    iput-object v2, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    iput-boolean p2, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    return-void
.end method

.method public tunnelTarget(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->connected:Z

    const-string v1, "No tunnel unless connected"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->proxyChain:[Lorg/apache/hc/core5/http/HttpHost;

    const-string v1, "No tunnel without proxy"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    iput-object v0, p0, Lorg/apache/hc/client5/http/RouteTracker;->tunnelled:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/RouteTracker;->secure:Z

    return-void
.end method
