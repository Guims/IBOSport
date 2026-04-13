.class public interface abstract Lorg/apache/hc/core5/reactor/ConnectionAcceptor;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getEndpoints()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation
.end method

.method public listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1, p3}, Lorg/apache/hc/core5/reactor/ConnectionAcceptor;->listen(Ljava/net/SocketAddress;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public abstract listen(Ljava/net/SocketAddress;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
