.class Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->completed(Lorg/apache/hc/core5/pool/PoolEntry;)V
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
.field final synthetic this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;

.field final synthetic val$endpoint:Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

.field final synthetic val$poolEntry:Lorg/apache/hc/core5/pool/PoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;Lorg/apache/hc/core5/pool/PoolEntry;Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$poolEntry:Lorg/apache/hc/core5/pool/PoolEntry;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$endpoint:Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$endpoint:Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;->releaseAndDiscard()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$endpoint:Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;->releaseAndDiscard()V

    throw v0
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$timeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$poolEntry:Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->assignConnection(Lorg/apache/hc/core5/io/ModalCloseable;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;

    iget-object p1, p1, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$endpoint:Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->this$1:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$endpoint:Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;->releaseAndDiscard()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$1$1;->val$endpoint:Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;->releaseAndDiscard()V

    throw p1
.end method
