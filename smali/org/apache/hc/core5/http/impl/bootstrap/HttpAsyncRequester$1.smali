.class Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->doConnect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/pool/PoolEntry<",
        "Lorg/apache/hc/core5/http/HttpHost;",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$host:Lorg/apache/hc/core5/http/HttpHost;

.field final synthetic val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

.field final synthetic val$timeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$host:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$timeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$attachment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->completed(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$InternalAsyncClientEndpoint;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$InternalAsyncClientEndpoint;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/pool/PoolEntry;)V

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/reactor/IOSession;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$host:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$timeout:Lorg/apache/hc/core5/util/Timeout;

    new-instance v4, Lorg/apache/hc/core5/reactor/EndpointParameters;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$attachment:Ljava/lang/Object;

    invoke-direct {v4, v2, v5}, Lorg/apache/hc/core5/reactor/EndpointParameters;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;)V

    new-instance v5, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;

    invoke-direct {v5, p0, p1, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;Lorg/apache/hc/core5/pool/PoolEntry;Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->requestSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
