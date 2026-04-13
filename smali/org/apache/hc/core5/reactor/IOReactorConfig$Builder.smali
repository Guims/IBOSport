.class public Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/reactor/IOReactorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static defaultMaxIOThreadCount:I = -0x1


# instance fields
.field private backlogSize:I

.field private ioThreadCount:I

.field private rcvBufSize:I

.field private selectInterval:Lorg/apache/hc/core5/util/TimeValue;

.field private sndBufSize:I

.field private soKeepAlive:Z

.field private soLinger:Lorg/apache/hc/core5/util/TimeValue;

.field private soReuseAddress:Z

.field private soTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private socksProxyAddress:Ljava/net/SocketAddress;

.field private socksProxyPassword:Ljava/lang/String;

.field private socksProxyUsername:Ljava/lang/String;

.field private tcpNoDelay:Z

.field private trafficClass:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->selectInterval:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {}, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->getDefaultMaxIOThreadCount()I

    move-result v0

    iput v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->ioThreadCount:I

    sget-object v0, Lorg/apache/hc/core5/util/Timeout;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/Timeout;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soTimeout:Lorg/apache/hc/core5/util/Timeout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soReuseAddress:Z

    sget-object v1, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_SECOND:Lorg/apache/hc/core5/util/TimeValue;

    iput-object v1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soLinger:Lorg/apache/hc/core5/util/TimeValue;

    iput-boolean v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soKeepAlive:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->tcpNoDelay:Z

    iput v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->trafficClass:I

    iput v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->sndBufSize:I

    iput v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->rcvBufSize:I

    iput v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->backlogSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyAddress:Ljava/net/SocketAddress;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyUsername:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyPassword:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultMaxIOThreadCount()I
    .locals 1

    sget v0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->defaultMaxIOThreadCount:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static setDefaultMaxIOThreadCount(I)V
    .locals 0

    sput p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->defaultMaxIOThreadCount:I

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/reactor/IOReactorConfig;
    .locals 15

    new-instance v0, Lorg/apache/hc/core5/reactor/IOReactorConfig;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->selectInterval:Lorg/apache/hc/core5/util/TimeValue;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    :goto_0
    iget v2, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->ioThreadCount:I

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-static {v3}, Lorg/apache/hc/core5/util/Timeout;->defaultsToDisabled(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soReuseAddress:Z

    iget-object v5, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soLinger:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {v5}, Lorg/apache/hc/core5/util/TimeValue;->defaultsToNegativeOneMillisecond(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soKeepAlive:Z

    iget-boolean v7, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->tcpNoDelay:Z

    iget v8, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->trafficClass:I

    iget v9, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->sndBufSize:I

    iget v10, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->rcvBufSize:I

    iget v11, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->backlogSize:I

    iget-object v12, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyAddress:Ljava/net/SocketAddress;

    iget-object v13, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyUsername:Ljava/lang/String;

    iget-object v14, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v14}, Lorg/apache/hc/core5/reactor/IOReactorConfig;-><init>(Lorg/apache/hc/core5/util/TimeValue;ILorg/apache/hc/core5/util/Timeout;ZLorg/apache/hc/core5/util/TimeValue;ZZIIIILjava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setBacklogSize(I)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->backlogSize:I

    return-object p0
.end method

.method public setIoThreadCount(I)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->ioThreadCount:I

    return-object p0
.end method

.method public setRcvBufSize(I)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->rcvBufSize:I

    return-object p0
.end method

.method public setSelectInterval(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->selectInterval:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setSndBufSize(I)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->sndBufSize:I

    return-object p0
.end method

.method public setSoKeepAlive(Z)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soKeepAlive:Z

    return-object p0
.end method

.method public setSoLinger(ILjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soLinger:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setSoLinger(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soLinger:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setSoReuseAddress(Z)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soReuseAddress:Z

    return-object p0
.end method

.method public setSoTimeout(ILjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setSoTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->soTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setSocksProxyAddress(Ljava/net/SocketAddress;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyAddress:Ljava/net/SocketAddress;

    return-object p0
.end method

.method public setSocksProxyPassword(Ljava/lang/String;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setSocksProxyUsername(Ljava/lang/String;)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->socksProxyUsername:Ljava/lang/String;

    return-object p0
.end method

.method public setTcpNoDelay(Z)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->tcpNoDelay:Z

    return-object p0
.end method

.method public setTrafficClass(I)Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/reactor/IOReactorConfig$Builder;->trafficClass:I

    return-object p0
.end method
