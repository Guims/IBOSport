.class final Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final address:Ljava/net/SocketAddress;

.field final attachment:Ljava/lang/Object;

.field final future:Lorg/apache/hc/core5/concurrent/BasicFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/BasicFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->address:Ljava/net/SocketAddress;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->attachment:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->cancel()V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/ListenerEndpoint;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->completed(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->failed(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ListenerEndpointRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
