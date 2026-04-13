.class final Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;
.super Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractBinAsyncEntityConsumer;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    return-void
.end method


# virtual methods
.method public capacityIncrement()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public data(Ljava/nio/ByteBuffer;Z)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {p2, v0, v2, p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append([BII)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic generateContent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;->generateContent()[B

    move-result-object v0

    return-object v0
.end method

.method public generateContent()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleAsyncEntityConsumer;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->clear()V

    return-void
.end method

.method public streamStart(Lorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    return-void
.end method
