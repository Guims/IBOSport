.class Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->cancel()V

    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {p1, v1, v0, p2}, Lorg/apache/hc/core5/http/nio/RequestChannel;->sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
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

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;->this$1:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
