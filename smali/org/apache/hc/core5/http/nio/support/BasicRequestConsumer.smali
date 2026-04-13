.class public Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncRequestConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/AsyncRequestConsumer<",
        "Lorg/apache/hc/core5/http/Message<",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final dataConsumerSupplier:Lorg/apache/hc/core5/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Data consumer supplier"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/function/Supplier;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerSupplier:Lorg/apache/hc/core5/function/Supplier;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/support/a;-><init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;I)V

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;-><init>(Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->lambda$new$0(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public consumeRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/http/Message<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            "TT;>;>;)V"
        }
    .end annotation

    const-string p3, "Request"

    invoke-static {p1, p3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerSupplier:Lorg/apache/hc/core5/function/Supplier;

    invoke-interface {p3}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer$1;

    invoke-direct {v0, p0, p4, p1, p4}, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer$1;-><init>(Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-interface {p3, p2, v0}, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;->streamStart(Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "Supplied data consumer is null"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lorg/apache/hc/core5/http/Message;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/apache/hc/core5/http/Message;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/Object;)V

    if-eqz p4, :cond_2

    invoke-interface {p4, p2}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->releaseResources()V

    return-void
.end method

.method public releaseResources()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
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

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
