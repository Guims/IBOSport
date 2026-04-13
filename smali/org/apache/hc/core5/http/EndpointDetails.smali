.class public abstract Lorg/apache/hc/core5/http/EndpointDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpConnectionMetrics;


# instance fields
.field private final localAddress:Ljava/net/SocketAddress;

.field private final remoteAddress:Ljava/net/SocketAddress;

.field private final socketTimeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/EndpointDetails;->remoteAddress:Ljava/net/SocketAddress;

    iput-object p2, p0, Lorg/apache/hc/core5/http/EndpointDetails;->localAddress:Ljava/net/SocketAddress;

    iput-object p3, p0, Lorg/apache/hc/core5/http/EndpointDetails;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/EndpointDetails;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public abstract getReceivedBytesCount()J
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/EndpointDetails;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public abstract getRequestCount()J
.end method

.method public abstract getResponseCount()J
.end method

.method public abstract getSentBytesCount()J
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/EndpointDetails;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/EndpointDetails;->localAddress:Ljava/net/SocketAddress;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/net/InetAddressUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    const-string v1, "<->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/EndpointDetails;->remoteAddress:Ljava/net/SocketAddress;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/net/InetAddressUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
