.class Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;
.super Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/SessionInputBuffer;


# instance fields
.field private final charDecoder:Ljava/nio/charset/CharsetDecoder;

.field private charbuffer:Ljava/nio/CharBuffer;

.field private final lineBuffersize:I

.field private final maxLineLen:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;-><init>(IIILjava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;-><init>(IIILjava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(IIILjava/nio/charset/Charset;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;-><init>(IIILjava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(IIILjava/nio/charset/CharsetDecoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;-><init>(I)V

    const-string p1, "Line buffer size"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->lineBuffersize:I

    const/4 p1, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->maxLineLen:I

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charDecoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public fill(Ljava/nio/channels/ReadableByteChannel;)I
    .locals 1

    const-string v0, "Channel"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->expand()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public hasData()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->hasData()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->length()I

    move-result v0

    return v0
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->ensureAdjustedCapacity(I)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public read()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->read(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return p2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return v0
.end method

.method public read(Ljava/nio/channels/WritableByteChannel;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/channels/WritableByteChannel;I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le v0, p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int p2, v0, v1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public readLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Z)Z
    .locals 7

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/2addr v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    iget v1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->maxLineLen:I

    if-lez v1, :cond_4

    if-lez v0, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    :goto_2
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->maxLineLen:I

    if-ge v1, v5, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string p2, "Maximum line length limit exceeded"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    if-ne v0, v4, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charDecoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v0, v6, v5}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append([BII)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_6

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    if-nez v0, :cond_9

    iget v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->lineBuffersize:I

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    :cond_9
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :cond_a
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1, v5, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_b
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {p1, v1, v6, v5}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append([CII)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    :cond_c
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v0, v5, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append([CII)V

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result p2

    if-lez p2, :cond_f

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_e

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->setLength(I)V

    :cond_e
    if-lez p2, :cond_f

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_f

    add-int/2addr p2, v4

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->setLength(I)V

    :cond_f
    return v3
.end method
