.class Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

.field final synthetic val$remoteAddress:Ljava/net/SocketAddress;

.field final synthetic val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->this$0:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$remoteAddress:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 5

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$remoteAddress:Ljava/net/SocketAddress;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{}:{} connection to {} failed ({}); terminating operation"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    check-cast p1, Ljava/io/IOException;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$remoteAddress:Ljava/net/SocketAddress;

    instance-of v3, v2, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/net/InetAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v3, v4

    goto :goto_0

    :cond_1
    new-array v3, v4, [Ljava/net/InetAddress;

    :goto_0
    invoke-static {p1, v1, v3}, Lorg/apache/hc/client5/http/ConnectExceptionSupport;->enhance(Ljava/io/IOException;Lorg/apache/hc/core5/net/NamedEndpoint;[Ljava/net/InetAddress;)Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
