.class Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# instance fields
.field private final connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

.field private volatile connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;-><init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/function/Resolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    return-void
.end method

.method private resolveConnectionConfig(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/config/ConnectionConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public getSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 3
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

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->resolveConnectionConfig(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->connPool:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    :goto_0
    new-instance v2, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;

    invoke-direct {v2, p0, p3, v0, p3}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getSession(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method
