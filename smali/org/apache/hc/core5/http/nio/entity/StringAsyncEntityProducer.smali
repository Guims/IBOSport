.class public Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;
.super Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;


# instance fields
.field private final content:Ljava/nio/CharBuffer;

.field private final exception:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;-><init>(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;-><init>(IILorg/apache/hc/core5/http/ContentType;)V

    const-string p2, "Content"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->content:Ljava/nio/CharBuffer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;-><init>(Ljava/lang/CharSequence;IILorg/apache/hc/core5/http/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;-><init>(Ljava/lang/CharSequence;ILorg/apache/hc/core5/http/ContentType;)V

    return-void
.end method


# virtual methods
.method public availableData()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->releaseResources()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public produceData(Lorg/apache/hc/core5/http/nio/StreamChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/CharBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Channel"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->content:Ljava/nio/CharBuffer;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/StreamChannel;->write(Ljava/nio/Buffer;)I

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->content:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityProducer;->content:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    invoke-super {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->releaseResources()V

    return-void
.end method
