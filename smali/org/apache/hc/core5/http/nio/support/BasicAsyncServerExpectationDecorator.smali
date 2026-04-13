.class public Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;


# instance fields
.field private final exceptionCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

.field private final responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;-><init>(Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;Lorg/apache/hc/core5/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public final consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public final failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public final handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "Expect"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "100-continue"

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p4}, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->verify(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {v0, p3, p4}, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;->sendResponse(Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-interface {p3, v0, p4}, Lorg/apache/hc/core5/http/nio/ResponseChannel;->sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public final produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public final releaseResources()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public final streamEnd(Ljava/util/List;)V
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

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicAsyncServerExpectationDecorator;->handler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void

    :cond_0
    const v0, 0x7fffffff

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    return-void
.end method

.method public verify(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
