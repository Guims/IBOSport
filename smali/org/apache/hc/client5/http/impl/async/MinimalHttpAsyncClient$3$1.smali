.class Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

.field final synthetic val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

.field final synthetic val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public cancel()V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;

    const-string v1, "Request aborted"

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    const/16 p3, 0x190

    if-lt p1, p3, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndReuse()V

    :cond_1
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndDiscard()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndDiscard()V

    throw p1
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1$1;-><init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {p1, v1, v0, p2}, Lorg/apache/hc/core5/http/nio/RequestChannel;->sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndDiscard()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndDiscard()V

    throw v0
.end method

.method public streamEnd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$messageCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->releaseAndReuse()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
