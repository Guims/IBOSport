.class public Lorg/apache/hc/core5/http/io/SocketConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/io/SocketConfig$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

.field private static final DEFAULT_SOCKET_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;


# instance fields
.field private final backlogSize:I

.field private final rcvBufSize:I

.field private final sndBufSize:I

.field private final soKeepAlive:Z

.field private final soLinger:Lorg/apache/hc/core5/util/TimeValue;

.field private final soReuseAddress:Z

.field private final soTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final socksProxyAddress:Ljava/net/SocketAddress;

.field private final tcpNoDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMinutes(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT_SOCKET_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    new-instance v0, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->build()Lorg/apache/hc/core5/http/io/SocketConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/util/Timeout;ZLorg/apache/hc/core5/util/TimeValue;ZZIIILjava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-boolean p2, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soReuseAddress:Z

    iput-object p3, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soLinger:Lorg/apache/hc/core5/util/TimeValue;

    iput-boolean p4, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soKeepAlive:Z

    iput-boolean p5, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->tcpNoDelay:Z

    iput p6, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->sndBufSize:I

    iput p7, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->rcvBufSize:I

    iput p8, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->backlogSize:I

    iput-object p9, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->socksProxyAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT_SOCKET_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public static copy(Lorg/apache/hc/core5/http/io/SocketConfig;)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;
    .locals 2

    const-string v0, "Socket config"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setSoTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setSoReuseAddress(Z)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoLinger()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setSoLinger(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setSoKeepAlive(Z)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setTcpNoDelay(Z)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSndBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setSndBufSize(I)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setRcvBufSize(I)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getBacklogSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setBacklogSize(I)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSocksProxyAddress()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;->setSocksProxyAddress(Ljava/net/SocketAddress;)Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/core5/http/io/SocketConfig$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/io/SocketConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBacklogSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->backlogSize:I

    return v0
.end method

.method public getRcvBufSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->rcvBufSize:I

    return v0
.end method

.method public getSndBufSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->sndBufSize:I

    return v0
.end method

.method public getSoLinger()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soLinger:Lorg/apache/hc/core5/util/TimeValue;

    return-object v0
.end method

.method public getSoTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getSocksProxyAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->socksProxyAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public isSoKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soKeepAlive:Z

    return v0
.end method

.method public isSoReuseAddress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soReuseAddress:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->tcpNoDelay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[soTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", soReuseAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soReuseAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", soLinger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soLinger:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", soKeepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->soKeepAlive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tcpNoDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->tcpNoDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sndBufSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->sndBufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcvBufSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->rcvBufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backlogSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->backlogSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", socksProxyAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/SocketConfig;->socksProxyAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
