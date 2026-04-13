.class Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final attempt:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field final synthetic val$connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

.field final synthetic val$localAddress:Ljava/net/SocketAddress;

.field final synthetic val$remoteAddresses:[Ljava/net/InetAddress;

.field final synthetic val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;[Ljava/net/InetAddress;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->this$0:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteAddresses:[Ljava/net/InetAddress;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$localAddress:Ljava/net/SocketAddress;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$attachment:Ljava/lang/Object;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public executeNext()V
    .locals 8

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteAddresses:[Ljava/net/InetAddress;

    aget-object v0, v1, v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v1

    invoke-direct {v3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->access$000()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    filled-new-array {v1, v2, v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{}:{} connecting {}->{} ({})"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$attachment:Ljava/lang/Object;

    new-instance v7, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;

    invoke-direct {v7, p0, v3}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2$1;-><init>(Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;Ljava/net/InetSocketAddress;)V

    invoke-interface/range {v1 .. v7}, Lorg/apache/hc/core5/reactor/ConnectionInitiator;->connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester$2;->executeNext()V

    return-void
.end method
