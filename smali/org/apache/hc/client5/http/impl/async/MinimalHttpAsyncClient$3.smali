.class Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->lambda$execute$2(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
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

.field final synthetic val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

.field final synthetic val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field final synthetic val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$responseTimeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->cancel()V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;-><init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;-><init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;Ljava/util/concurrent/atomic/AtomicInteger;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$responseTimeout:Lorg/apache/hc/core5/util/Timeout;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method
