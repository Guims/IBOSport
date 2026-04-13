.class public final Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;"
    }
.end annotation


# instance fields
.field private final completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

.field private final responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Request producer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    const-string p1, "Response consumer"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/FutureCallback;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->internalReleaseResources()V

    return-void
.end method

.method private internalReleaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public cancel()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->internalReleaseResources()V

    return-void

    :goto_1
    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->internalReleaseResources()V

    throw v0

    :cond_1
    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->informationResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    new-instance v1, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;

    invoke-direct {v1, p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;-><init>(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v2, p1}, Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;->failed(Ljava/lang/Exception;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v2, p1}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->internalReleaseResources()V

    return-void

    :goto_1
    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->internalReleaseResources()V

    throw p1

    :cond_1
    return-void

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->resultCallback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->internalReleaseResources()V

    goto :goto_4

    :goto_3
    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->internalReleaseResources()V

    throw p1

    :cond_3
    :goto_4
    throw v2
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;->sendRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public releaseResources()V
    .locals 0

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
