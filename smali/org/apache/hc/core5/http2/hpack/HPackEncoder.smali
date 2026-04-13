.class public final Lorg/apache/hc/core5/http2/hpack/HPackEncoder;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final charsetEncoder:Ljava/nio/charset/CharsetEncoder;

.field private final dynamicTable:Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

.field private final huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

.field private maxTableSize:I

.field private tmpBuf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;-><init>(Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/CharsetEncoder;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;-><init>(Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;Ljava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;Ljava/nio/charset/Charset;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;-><init>(Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;Ljava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    invoke-direct {p1}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    new-instance p1, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private clearState()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :cond_1
    return-void
.end method

.method public static encodeHuffman(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/Huffman;->ENCODER:Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;

    invoke-virtual {v0, p0, p1}, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->encode(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V
    .locals 1

    rsub-int/lit8 p1, p1, 0x8

    const/16 v0, 0xff

    ushr-int p1, v0, p1

    if-ge p2, p1, :cond_0

    or-int p1, p2, p3

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    return-void

    :cond_0
    or-int/2addr p3, p1

    invoke-virtual {p0, p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    sub-int/2addr p2, p1

    :goto_0
    const/16 p1, 0x80

    if-lt p2, p1, :cond_1

    and-int/lit8 p3, p2, 0x7f

    or-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    ushr-int/lit8 p2, p2, 0x7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x100

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-le v0, p1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->expandCapacity(I)V

    :cond_1
    return-void
.end method

.method private expandCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private findFullMatch(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http2/hpack/HPackEntry;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http2/hpack/HPackEntry;

    invoke-interface {v2}, Lorg/apache/hc/core5/http2/hpack/HPackEntry;->getHeader()Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/apache/hc/core5/http2/hpack/HPackEntry;->getIndex()I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "ByteArrayBuffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8

    if-eqz p4, :cond_0

    sget-object p5, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->NEVER_INDEXED:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    :goto_0
    move-object v6, p5

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    sget-object p5, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITHOUT_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    goto :goto_0

    :cond_1
    sget-object p5, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITH_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    goto :goto_0

    :goto_1
    sget-object p5, Lorg/apache/hc/core5/http2/hpack/StaticTable;->INSTANCE:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {p5, p2}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->getByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p5

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITH_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    if-ne v6, v0, :cond_3

    invoke-direct {p0, p5, p3}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->findFullMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeIndex(Lorg/apache/hc/core5/util/ByteArrayBuffer;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->getByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->findFullMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeIndex(Lorg/apache/hc/core5/util/ByteArrayBuffer;I)V

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/hc/core5/http2/hpack/HPackEntry;

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v2, p5

    move v7, p6

    goto :goto_3

    :cond_4
    iget-object p5, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    invoke-virtual {p5, p2}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->getByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/hc/core5/http2/hpack/HPackEntry;

    goto :goto_2

    :cond_5
    const/4 p5, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeLiteralHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Lorg/apache/hc/core5/http2/hpack/HPackEntry;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/hc/core5/http2/hpack/HPackRepresentation;Z)V

    return-void
.end method

.method public encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Lorg/apache/hc/core5/http/Header;)V
    .locals 2

    const-string v0, "ByteArrayBuffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/Header;->isSensitive()Z

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Lorg/apache/hc/core5/http/Header;ZZ)V
    .locals 7

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/hc/core5/http/Header;->isSensitive()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public encodeHeaders(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/ByteArrayBuffer;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ByteArrayBuffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header list"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeHeaders(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/util/List;ZZ)V

    return-void
.end method

.method public encodeHeaders(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/ByteArrayBuffer;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http/Header;

    invoke-virtual {p0, p1, v1, p3, p4}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Lorg/apache/hc/core5/http/Header;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public encodeIndex(Lorg/apache/hc/core5/util/ByteArrayBuffer;I)V
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x80

    invoke-static {p1, v0, p2, v1}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V

    return-void
.end method

.method public encodeLiteralHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Lorg/apache/hc/core5/http2/hpack/HPackEntry;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/hc/core5/http2/hpack/HPackRepresentation;Z)V
    .locals 6

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder$1;->$SwitchMap$org$apache$hc$core5$http2$hpack$HPackRepresentation:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x40

    const/4 v3, 0x6

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/apache/hc/core5/http2/hpack/HPackEntry;->getIndex()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-gtz v1, :cond_4

    invoke-static {p1, v3, v2, v0}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V

    invoke-virtual {p0, p1, p3, p7}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Z)I

    move-result p2

    :goto_2
    move v2, p2

    goto :goto_3

    :cond_4
    invoke-static {p1, v3, v1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V

    invoke-interface {p2}, Lorg/apache/hc/core5/http2/hpack/HPackEntry;->getHeader()Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getNameLen()I

    move-result p2

    goto :goto_2

    :goto_3
    if-eqz p4, :cond_5

    move-object p2, p4

    goto :goto_4

    :cond_5
    const-string p2, ""

    :goto_4
    invoke-virtual {p0, p1, p2, p7}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Z)I

    move-result v4

    sget-object p1, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITH_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    if-ne p6, p1, :cond_6

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object v1, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->add(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V

    :cond_6
    return-void
.end method

.method public encodeLiteralHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Lorg/apache/hc/core5/http2/hpack/HPackEntry;Lorg/apache/hc/core5/http/Header;Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;Z)V
    .locals 8

    invoke-interface {p3}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3}, Lorg/apache/hc/core5/http/Header;->isSensitive()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeLiteralHeader(Lorg/apache/hc/core5/util/ByteArrayBuffer;Lorg/apache/hc/core5/http2/hpack/HPackEntry;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/hc/core5/http2/hpack/HPackRepresentation;Z)V

    return-void
.end method

.method public encodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/CharSequence;IIZ)I
    .locals 4

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->clearState()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    const/16 v1, 0x8

    if-nez v0, :cond_2

    const/4 v0, 0x7

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p5}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->clear()V

    iget-object p5, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p5, p4}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->ensureCapacity(I)V

    sget-object p5, Lorg/apache/hc/core5/http2/hpack/Huffman;->ENCODER:Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p5, v3, p2, p3, p4}, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->encode(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/CharSequence;II)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->ensureCapacity(I)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p2

    const/16 p3, 0x80

    invoke-static {p1, v0, p2, p3}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object p2

    iget-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p3

    invoke-virtual {p1, p2, v2, p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append([BII)V

    return p4

    :cond_0
    add-int/lit8 p5, p4, 0x8

    invoke-virtual {p1, p5}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->ensureCapacity(I)V

    invoke-static {p1, v0, p4, v2}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V

    :goto_0
    if-ge v2, p4, :cond_1

    add-int p5, p3, v2

    invoke-interface {p2, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    invoke-virtual {p1, p5}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p4

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {p2, p3, p4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p4}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result p4

    mul-float/2addr p4, p3

    float-to-int p3, p4

    add-int/2addr p3, v1

    invoke-direct {p0, p3}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->ensureCapacity(I)V

    iget-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object p4, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p4, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->ensureCapacity(I)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_5
    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    iget-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->tmpBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p3, p5}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;Z)V

    return p2
.end method

.method public encodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/String;Z)I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/lang/CharSequence;IIZ)I

    move-result p1

    return p1
.end method

.method public encodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;Z)V
    .locals 3

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->clear()V

    iget-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p3, v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->ensureCapacity(I)V

    sget-object p3, Lorg/apache/hc/core5/http2/hpack/Huffman;->ENCODER:Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p3, v0, p2}, Lorg/apache/hc/core5/http2/hpack/HuffmanEncoder;->encode(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->ensureCapacity(I)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p2

    const/16 p3, 0x80

    invoke-static {p1, v2, p2, p3}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object p2

    iget-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->huffmanBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p3

    invoke-virtual {p1, p2, v1, p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append([BII)V

    return-void

    :cond_0
    add-int/lit8 p3, v0, 0x8

    invoke-virtual {p1, p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->ensureCapacity(I)V

    invoke-static {p1, v2, v0, v1}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeInt(Lorg/apache/hc/core5/util/ByteArrayBuffer;III)V

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getMaxTableSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->maxTableSize:I

    return v0
.end method

.method public setMaxTableSize(I)V
    .locals 1

    const-string v0, "Max table size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->maxTableSize:I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->setMaxSize(I)V

    return-void
.end method
