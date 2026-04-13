.class Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    const-string v1, "Response producer"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->access$200(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;)Lorg/apache/hc/core5/function/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->access$200(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;)Lorg/apache/hc/core5/function/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;->failed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;

    invoke-static {v1}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->access$100(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;)Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;

    move-result-object v1

    new-instance v2, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;

    invoke-direct {v2, p0, p3, p4}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;-><init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-virtual {v1, p1, p2, p4, v2}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;->handle(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    const-string v1, "Response producer"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public releaseResources()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->responseProducerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_1
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

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

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
