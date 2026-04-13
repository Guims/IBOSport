.class public abstract Lorg/apache/hc/core5/http2/frame/FrameFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createContinuation(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;
.end method

.method public abstract createData(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;
.end method

.method public createGoAway(ILorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 2

    const-string v0, "Last stream id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    if-eqz p3, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    array-length v1, p3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/H2Error;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_2

    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p1, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object p2, Lorg/apache/hc/core5/http2/frame/FrameType;->GOAWAY:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result p2

    invoke-direct {p1, p2, v0, v0, v1}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object p1
.end method

.method public abstract createHeaders(ILjava/nio/ByteBuffer;ZZ)Lorg/apache/hc/core5/http2/frame/RawFrame;
.end method

.method public createPing(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 3

    const-string v0, "Opaque data"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Opaque data length must be equal 8"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->PING:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    invoke-direct {v0, v1, v2, v2, p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public createPingAck(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 4

    const-string v0, "Opaque data"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Opaque data length must be equal 8"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->PING:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    sget-object v3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->ACK:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    iget v3, v3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public abstract createPushPromise(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;
.end method

.method public createResetStream(II)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 3

    const-string v0, "Stream id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p2, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->RST_STREAM:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, p1, v0}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object p2
.end method

.method public createResetStream(ILorg/apache/hc/core5/http2/H2Error;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 1

    const-string v0, "Error"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/H2Error;->getCode()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createResetStream(II)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object p1

    return-object p1
.end method

.method public varargs createSettings([Lorg/apache/hc/core5/http2/config/H2Setting;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 6

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/config/H2Setting;->getCode()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/config/H2Setting;->getValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p1, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->SETTINGS:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    invoke-direct {p1, v1, v2, v2, v0}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object p1
.end method

.method public createSettingsAck()Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->SETTINGS:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    sget-object v2, Lorg/apache/hc/core5/http2/frame/FrameFlag;->ACK:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/frame/FrameFlag;->getValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public createWindowUpdate(II)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 3

    const-string v0, "Stream id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    const-string v0, "Increment"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p2, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->WINDOW_UPDATE:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, p1, v0}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object p2
.end method
