.class public interface abstract Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;"
        }
    .end annotation
.end method

.method public connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;"
        }
    .end annotation

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-interface/range {p1 .. p7}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p2

    return-object p2
.end method

.method public abstract upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;)V
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-eqz p5, :cond_0

    invoke-interface {p5, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
