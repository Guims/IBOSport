.class Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

.field final synthetic val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final synthetic val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field final synthetic val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

.field final synthetic val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$route:Lorg/apache/hc/client5/http/HttpRoute;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {p2, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 3

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    const-string v0, "http.response"

    invoke-virtual {p3, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

    invoke-static {p3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->access$000(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {p3, p1, p2, v0}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p3

    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

    invoke-static {p3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->access$100(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;)Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {p3, p1, v0}, Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

    invoke-static {p3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->access$200(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;)Lorg/apache/hc/client5/http/UserTokenHandler;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {p3, v0, v1, v2}, Lorg/apache/hc/client5/http/UserTokenHandler;->getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    const-string v1, "http.user-token"

    invoke-virtual {v0, v1, p3}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {v0, p3, p1}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    if-nez p2, :cond_2

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->validateConnection()Z

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    :cond_2
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->markConnectionNonReusable()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1$1;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    const-string v1, "http.route"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    const-string v1, "http.request"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;->access$000(Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-interface {p1, v0, v1, p2}, Lorg/apache/hc/core5/http/nio/RequestChannel;->sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public streamEnd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->validateConnection()Z

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    :cond_1
    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncMainClientExec$1;->entityConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void

    :cond_0
    const v0, 0x7fffffff

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    return-void
.end method
