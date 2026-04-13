.class Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Continuation"
.end annotation


# instance fields
.field final endStream:Z

.field final headerBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

.field final streamId:I

.field final type:I


# direct methods
.method private constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->streamId:I

    iput p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->type:I

    iput-boolean p3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->endStream:Z

    new-instance p1, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->headerBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    return-void
.end method

.method public synthetic constructor <init>(IIZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public copyPayload(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->headerBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->headerBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->headerBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getContent()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->headerBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->headerBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
