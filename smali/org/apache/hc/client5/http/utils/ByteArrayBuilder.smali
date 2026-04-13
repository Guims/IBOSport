.class public final Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
.super Ljava/lang/Object;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private doAppend(Ljava/nio/CharBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-static {v0, p1, v1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected character coding error"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetEncoder;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->ensureFreeCapacity(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->ensureFreeCapacity(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static ensureFreeCapacity(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/nio/CharBuffer;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/nio/CharBuffer;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->doAppend(Ljava/nio/CharBuffer;)V

    return-object p0
.end method

.method public append([B)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append([BII)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append([BII)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    array-length v1, p1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, p3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->ensureFreeCapacity(I)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, " len: "

    const-string v2, " b.length: "

    const-string v3, "off: "

    invoke-static {v3, p2, v1, p3, v2}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append([C)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append([CII)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append([CII)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    array-length v1, p1

    if-gt v0, v1, :cond_1

    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/nio/CharBuffer;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, " len: "

    const-string v2, " b.length: "

    const-string v3, "off: "

    invoke-static {v3, p2, v1, p3, v2}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public charset(Ljava/nio/charset/Charset;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method

.method public ensureFreeCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->ensureFreeCapacity(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    return-object v0
.end method
