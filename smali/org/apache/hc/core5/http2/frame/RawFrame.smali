.class public final Lorg/apache/hc/core5/http2/frame/RawFrame;
.super Lorg/apache/hc/core5/http2/frame/Frame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http2/frame/Frame<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final len:I

.field private final payload:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IIILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/frame/Frame;-><init>(III)V

    iput-object p4, p0, Lorg/apache/hc/core5/http2/frame/RawFrame;->payload:Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/hc/core5/http2/frame/RawFrame;->len:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/frame/RawFrame;->len:I

    return v0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/frame/RawFrame;->payload:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPayloadContent()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http2/frame/RawFrame;->payload:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/frame/RawFrame;->isPadded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/frame/RawFrame;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/frame/RawFrame;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public isPadded()Z
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->PADDED:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result v0

    return v0
.end method
