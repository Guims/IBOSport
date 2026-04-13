.class public final Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;
.super Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/reactor/AbstractIOSessionPool<",
        "Lorg/apache/hc/core5/http/HttpHost;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final addressResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

.field private final tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

.field private volatile validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/function/Resolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;-><init>()V

    sget-object v0, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    const-string v0, "Connection initiator"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->addressResolver:Lorg/apache/hc/core5/function/Resolver;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->lambda$validateSession$0(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;)Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-object p0
.end method

.method private static synthetic lambda$validateSession$0(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    invoke-interface {p2, p3}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public closeSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    if-ne p2, v0, :cond_0

    sget-object p2, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v0, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p1, p2, v0}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public bridge synthetic connectSession(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->connectSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public connectSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->addressResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    new-instance v4, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;

    move-object v9, p3

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;-><init>(Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    move-object v2, v7

    move-object v5, v8

    const/4 p1, 0x0

    const/4 v6, 0x0

    move-object v7, v4

    move-object v4, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/hc/core5/reactor/ConnectionInitiator;->connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    return-object v0
.end method

.method public setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public validateSession(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/function/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {v0}, Lorg/apache/hc/core5/util/TimeValue;->isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLastReadTime()J

    move-result-wide v1

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLastWriteTime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/core5/http2/nio/command/PingCommand;

    new-instance v2, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;

    new-instance v3, Lorg/apache/hc/core5/http2/nio/pool/a;

    invoke-direct {v3, p1, v0, p2}, Lorg/apache/hc/core5/http2/nio/pool/a;-><init>(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;)V

    invoke-direct {v2, v3}, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;-><init>(Lorg/apache/hc/core5/function/Callback;)V

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http2/nio/command/PingCommand;-><init>(Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;)V

    sget-object p2, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p1, v1, p2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    return-void
.end method
