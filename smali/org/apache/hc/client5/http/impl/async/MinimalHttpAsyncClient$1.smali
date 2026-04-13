.class Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->leaseEndpoint(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field final synthetic val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 8

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$100(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;)Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->getConnectionInitiator()Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$000(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    new-instance v7, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;

    invoke-direct {v7, p0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;-><init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->connect(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method
