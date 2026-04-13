.class Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->lambda$doExecute$0(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

.field final synthetic val$c:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$exchangeId:Ljava/lang/String;

.field final synthetic val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

.field final synthetic val$outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

.field final synthetic val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/ComplexFuture;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$c:Lorg/apache/hc/core5/http/protocol/HttpContext;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$exchangeId:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} message exchange successfully completed"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->releaseEndpoint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    throw v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->access$100()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$exchangeId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} request failed: {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->discardEndpoint()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    throw p1

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    throw v0

    :catchall_2
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    throw p1
.end method

.method public handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$c:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->informationResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 3

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$c:Lorg/apache/hc/core5/http/protocol/HttpContext;

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1$1;

    invoke-direct {v2, p0}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1$1;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
