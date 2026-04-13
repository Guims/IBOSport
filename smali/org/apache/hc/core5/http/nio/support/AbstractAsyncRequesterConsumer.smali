.class public abstract Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncRequestConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/AsyncRequestConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final dataConsumerSupplier:Lorg/apache/hc/core5/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TE;>;>;"
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
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Data consumer supplier"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/function/Supplier;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerSupplier:Lorg/apache/hc/core5/function/Supplier;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
            "TE;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/support/a;-><init>(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;I)V

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;-><init>(Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->lambda$new$0(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;)Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public abstract buildResult(Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/Object;Lorg/apache/hc/core5/http/ContentType;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            "TE;",
            "Lorg/apache/hc/core5/http/ContentType;",
            ")TT;"
        }
    .end annotation
.end method

.method public final consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final consumeRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-object p3, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerSupplier:Lorg/apache/hc/core5/function/Supplier;

    invoke-interface {p3}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer$1;

    move-object v6, p4

    move-object v2, p0

    move-object v5, p1

    move-object v4, p2

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer$1;-><init>(Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-interface {p3, v4, v1}, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;->streamStart(Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_0
    move-object v2, p0

    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "Supplied data consumer is null"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v2, p0

    move-object v5, p1

    move-object v3, p4

    const/4 p1, 0x0

    invoke-virtual {p0, v5, p1, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->buildResult(Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/Object;Lorg/apache/hc/core5/http/ContentType;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    return-void
.end method

.method public final failed(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->releaseResources()V

    return-void
.end method

.method public final releaseResources()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public final updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncRequesterConsumer;->dataConsumerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
