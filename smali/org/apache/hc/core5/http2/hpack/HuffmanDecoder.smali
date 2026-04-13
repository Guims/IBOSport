.class final Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;
.super Ljava/lang/Object;


# instance fields
.field private final root:Lorg/apache/hc/core5/http2/hpack/HuffmanNode;


# direct methods
.method public constructor <init>([I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;->buildTree([I[B)Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;->root:Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    return-void
.end method

.method private static buildTree([I[B)Lorg/apache/hc/core5/http2/hpack/HuffmanNode;
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget v2, p0, v1

    aget-byte v3, p1, v1

    move-object v4, v0

    :goto_1
    const/16 v5, 0x8

    if-le v3, v5, :cond_2

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->isTerminal()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, -0x8

    ushr-int v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->hasChild(I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    invoke-direct {v6}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->setChild(ILorg/apache/hc/core5/http2/hpack/HuffmanNode;)V

    :cond_0
    invoke-virtual {v4, v5}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getChild(I)Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Huffman code: prefix not unique"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v5, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    invoke-direct {v5, v1, v3}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;-><init>(II)V

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    const/4 v6, 0x1

    shl-int v3, v6, v3

    move v6, v2

    :goto_2
    add-int v7, v2, v3

    if-ge v6, v7, :cond_3

    invoke-virtual {v4, v6, v5}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->setChild(ILorg/apache/hc/core5/http2/hpack/HuffmanNode;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;->root:Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x8

    :cond_1
    :goto_0
    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x8

    ushr-int v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getChild(I)Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getBits()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->isTerminal()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getSymbol()I

    move-result v3

    const/16 v4, 0x100

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getSymbol()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;->root:Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string p2, "EOS decoded"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-lez v2, :cond_4

    rsub-int/lit8 p2, v2, 0x8

    shl-int p2, v1, p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getChild(I)Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->isTerminal()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getBits()I

    move-result v0

    if-gt v0, v2, :cond_4

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getBits()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->getSymbol()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;->root:Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    shl-int p2, p1, v2

    sub-int/2addr p2, p1

    and-int p1, v1, p2

    if-ne p1, p2, :cond_5

    return-void

    :cond_5
    new-instance p1, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string p2, "Invalid padding"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
