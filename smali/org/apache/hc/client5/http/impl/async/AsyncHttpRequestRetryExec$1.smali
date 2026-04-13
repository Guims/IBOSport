.class Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->internalExecute(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

.field final synthetic val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final synthetic val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field final synthetic val$exchangeId:Ljava/lang/String;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field final synthetic val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;Lorg/apache/hc/core5/http/HttpRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$exchangeId:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 7

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-boolean v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->retrying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v0, v0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v1, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->scheduler:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-object v6, v0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->delay:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface/range {v1 .. v6}, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;->scheduleExecution(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 9

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v1, v0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v0, v0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v0

    const-string v1, "{} cannot retry non-repeatable request"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$100(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;)Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    move-object v4, p1

    check-cast v4, Ljava/io/IOException;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v5, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v2, v3, v4, v5, v0}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->retryRequest(Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/IOException;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v2

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "{} {}"

    invoke-interface {v2, v5, v3}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v2

    invoke-interface {v2}, LO5/a;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Recoverable I/O exception ({}) caught when processing request to {}"

    invoke-interface {v2, p1, v1, v3}, LO5/a;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object p1, p1, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->discardEndpoint()V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_3
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->retrying:Z

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object p1, p1, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    invoke-static {v3}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$100(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;)Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    sub-int/2addr p1, v1

    invoke-interface {v3, v5, v4, p1, v0}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->getRetryInterval(Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/IOException;ILorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iput-object p1, v2, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->delay:Lorg/apache/hc/core5/util/TimeValue;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v3, v6, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->scheduler:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-object v8, p1, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->delay:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface/range {v3 .. v8}, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;->scheduleExecution(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v0, v0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object v0

    const-string v1, "{} cannot retry non-repeatable request"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$100(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;)Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v3, v3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v2, p1, v3, v0}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->retryRequest(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->retrying:Z

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-boolean v1, v1, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->retrying:Z

    if-eqz v1, :cond_3

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$100(Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;)Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v2, v2, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->getRetryInterval(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iput-object p1, p2, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->delay:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec;->access$000()LO5/a;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$exchangeId:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$State;->delay:Lorg/apache/hc/core5/util/TimeValue;

    const-string v1, "{} retrying request in {}"

    invoke-interface {p1, p2, v0, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/nio/entity/DiscardingEntityConsumer;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/nio/entity/DiscardingEntityConsumer;-><init>()V

    return-object p1

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncHttpRequestRetryExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1
.end method
