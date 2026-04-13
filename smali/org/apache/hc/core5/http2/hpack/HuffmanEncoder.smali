.class final Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;
.super Ljava/lang/Object;


# instance fields
.field private final codes:[I

.field private final lengths:[B


# direct methods
.method public constructor <init>([I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->codes:[I

    iput-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->lengths:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/CharSequence;II)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xff

    if-ge v2, p4, :cond_1

    add-int v5, p3, v2

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    and-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->codes:[I

    aget v5, v5, v4

    iget-object v6, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->lengths:[B

    aget-byte v4, v6, v4

    shl-long/2addr v0, v4

    int-to-long v5, v5

    or-long/2addr v0, v5

    add-int/2addr v3, v4

    :goto_1
    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x8

    shr-long v4, v0, v3

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    rsub-int/lit8 p2, v3, 0x8

    shl-long p2, v0, p2

    ushr-int p4, v4, v3

    int-to-long v0, p4

    or-long/2addr p2, v0

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    :cond_2
    return-void
.end method

.method public encode(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    const/16 v4, 0xff

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->codes:[I

    aget v4, v4, v3

    iget-object v5, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->lengths:[B

    aget-byte v3, v5, v3

    shl-long/2addr v0, v3

    int-to-long v4, v4

    or-long/2addr v0, v4

    add-int/2addr v2, v3

    :goto_0
    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x8

    shr-long v3, v0, v2

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    rsub-int/lit8 p2, v2, 0x8

    shl-long/2addr v0, p2

    ushr-int p2, v4, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    :cond_2
    return-void
.end method
