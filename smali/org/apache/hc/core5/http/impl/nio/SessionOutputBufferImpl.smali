.class Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;
.super Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;


# static fields
.field private static final CRLF:[B


# instance fields
.field private final charEncoder:Ljava/nio/charset/CharsetEncoder;

.field private charbuffer:Ljava/nio/CharBuffer;

.field private final lineBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;-><init>(IILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(IILjava/nio/charset/Charset;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;-><init>(IILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(IILjava/nio/charset/CharsetEncoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;-><init>(I)V

    const-string p1, "Line buffer size"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->lineBufferSize:I

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charEncoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private write([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->ensureAdjustedCapacity(I)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private writeCRLF()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->CRLF:[B

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->write([B)V

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public flush(Ljava/nio/channels/WritableByteChannel;)I
    .locals 1

    const-string v0, "Channel"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

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

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
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

    return-void
.end method

.method public write(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public writeLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charEncoder:Ljava/nio/charset/CharsetEncoder;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->ensureCapacity(I)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    :goto_0
    if-ge v1, v2, :cond_1

    add-int v5, v4, v3

    add-int/2addr v5, v1

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    if-nez v0, :cond_4

    iget v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->lineBufferSize:I

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    move v2, v1

    :goto_2
    const/4 v3, 0x1

    if-lez v0, :cond_9

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-gt v0, v4, :cond_5

    move v4, v0

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->array()[C

    move-result-object v7

    invoke-virtual {v6, v7, v2, v4}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move v6, v3

    :goto_4
    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_6
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->expand()V

    :cond_7
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    xor-int/2addr v6, v3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charbuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    add-int/2addr v2, v4

    sub-int/2addr v0, v4

    goto :goto_2

    :cond_9
    move p1, v3

    :goto_5
    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->charEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_a
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->expand()V

    :cond_b
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p1

    xor-int/2addr p1, v3

    goto :goto_5

    :cond_c
    :goto_6
    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->writeCRLF()V

    return-void
.end method
