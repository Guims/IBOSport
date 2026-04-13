.class public Lorg/apache/hc/core5/http2/frame/DefaultFrameFactory;
.super Lorg/apache/hc/core5/http2/frame/FrameFactory;


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http2/frame/FrameFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/frame/DefaultFrameFactory;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/frame/DefaultFrameFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/frame/DefaultFrameFactory;->INSTANCE:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/frame/FrameFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContinuation(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 2

    const-string v0, "Stream id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    iget p3, p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    new-instance v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->CONTINUATION:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public createData(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 2

    const-string v0, "Stream id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_STREAM:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    iget p3, p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    new-instance v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->DATA:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public createHeaders(ILjava/nio/ByteBuffer;ZZ)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 1

    const-string v0, "Stream id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    iget p3, p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    sget-object p4, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_STREAM:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    iget v0, p4, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    :cond_1
    or-int/2addr p3, v0

    new-instance p4, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameType;->HEADERS:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v0

    invoke-direct {p4, v0, p3, p1, p2}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object p4
.end method

.method public createPushPromise(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 2

    const-string v0, "Stream id"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    if-eqz p3, :cond_0

    sget-object p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    iget p3, p3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    new-instance v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->PUSH_PROMISE:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method
