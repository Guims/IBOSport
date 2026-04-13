.class Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->executeNext()V
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
.field final synthetic this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

.field final synthetic val$remoteAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 6

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v3, v3, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{}:{} connected {}->{} as {}"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->access$100(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteAddresses:[Ljava/net/InetAddress;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{}:{} connection to {} failed ({}); terminating operation"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    check-cast p1, Ljava/io/IOException;

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteAddresses:[Ljava/net/InetAddress;

    invoke-static {p1, v2, v0}, Lorg/apache/hc/client5/http/ConnectExceptionSupport;->enhance(Ljava/io/IOException;Lorg/apache/hc/core5/net/NamedEndpoint;[Ljava/net/InetAddress;)Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void

    :cond_2
    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    filled-new-array {v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "{}:{} connection to {} failed ({}); retrying connection to the next address"

    invoke-interface {v0, v1, p1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->executeNext()V

    return-void
.end method
