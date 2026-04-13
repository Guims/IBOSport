.class public final Lorg/apache/hc/core5/http2/hpack/HPackDecoder;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final MAX_LIMIT_EXCEEDED:Ljava/lang/String; = "Max integer exceeded"

.field private static final UNEXPECTED_EOS:Ljava/lang/String; = "Unexpected end of HPACK data"


# instance fields
.field private final charsetDecoder:Ljava/nio/charset/CharsetDecoder;

.field private final contentBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

.field private final dynamicTable:Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

.field private maxListSize:I

.field private maxTableSize:I

.field private tmpBuf:Ljava/nio/CharBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;-><init>(Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/CharsetDecoder;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;-><init>(Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;Ljava/nio/charset/Charset;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;-><init>(Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;Ljava/nio/charset/CharsetDecoder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    new-instance v0, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->contentBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    const p2, 0x7fffffff

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->getMaxSize()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxTableSize:I

    iput p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxListSize:I

    return-void
.end method

.method private clearState()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->contentBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->clear()V

    return-void
.end method

.method public static decodeHuffman(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/Huffman;->DECODER:Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;

    invoke-virtual {v0, p0, p1}, Lorg/apache/hc/core5/http2/hpack/HuffmanDecoder;->decode(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string p1, "Unexpected end of HPACK data"

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeInt(Ljava/nio/ByteBuffer;I)I
    .locals 3

    rsub-int/lit8 p1, p1, 0x8

    const/16 v0, 0xff

    ushr-int p1, v0, p1

    invoke-static {p0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->readByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/2addr v0, p1

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge p1, v1, :cond_3

    invoke-static {p0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->readByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    const/16 p0, 0x1c

    if-ne p1, p0, :cond_2

    and-int/lit16 p0, v1, 0xf8

    if-nez p0, :cond_3

    :cond_2
    shl-int p0, v1, p1

    add-int/2addr v0, p0

    return v0

    :cond_3
    new-instance p0, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string p1, "Max integer exceeded"

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodePlainString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sub-int/2addr v1, v0

    sub-int v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string p1, "Unexpected end of HPACK data"

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x100

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-le v0, p1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->expandCapacity(I)V

    :cond_1
    return-void
.end method

.method private expandCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    return-void
.end method

.method public static peekByte(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v1

    :cond_0
    new-instance p0, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string v0, "Unexpected end of HPACK data"

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readByte(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    new-instance p0, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string v0, "Unexpected end of HPACK data"

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decodeHPackHeader(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 3

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->peekByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeIndexedHeader(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITH_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeLiteralHeader(Ljava/nio/ByteBuffer;Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    if-nez v1, :cond_2

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITHOUT_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeLiteralHeader(Ljava/nio/ByteBuffer;Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->NEVER_INDEXED:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeLiteralHeader(Ljava/nio/ByteBuffer;Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1

    :cond_3
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    iget v2, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxTableSize:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->setMaxSize(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http2/hpack/HPackException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header first byte: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :goto_1
    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public decodeHeader(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http/Header;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeHPackHeader(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->isSensitive()Z

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxListSize:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeHPackHeader(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getTotalSize()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxListSize:I

    if-ge v2, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http2/hpack/HeaderListConstraintException;

    const-string v0, "Maximum header list size exceeded"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HeaderListConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    new-instance v4, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->isSensitive()Z

    move-result v3

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_3
    return-object v1
.end method

.method public decodeIndexedHeader(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeInt(Ljava/nio/ByteBuffer;I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->getHeader(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string v0, "Invalid header index"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeLiteralHeader(Ljava/nio/ByteBuffer;Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 9

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->WITH_INDEXING:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    if-ne p2, v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-static {p1, v1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeInt(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeString(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v5, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->getHeader(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getNameLen()I

    move-result v1

    move v5, v1

    move-object v4, v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeString(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    sget-object p1, Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;->NEVER_INDEXED:Lorg/apache/hc/core5/http2/hpack/HPackRepresentation;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    :goto_2
    move v8, p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    invoke-direct/range {v3 .. v8}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    if-ne p2, v0, :cond_3

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    invoke-virtual {p1, v3}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->add(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V

    :cond_3
    return-object v3

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http2/hpack/HPackException;

    const-string p2, "Invalid header index"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeString(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)I
    .locals 4

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->clearState()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->contentBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->contentBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->contentBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->contentBuf:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->ensureCapacity(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->tmpBuf:Ljava/nio/CharBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return p1
.end method

.method public decodeString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-static {p2}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->peekByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeHuffman(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodePlainString(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getMaxListSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxListSize:I

    return v0
.end method

.method public getMaxTableSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxTableSize:I

    return v0
.end method

.method public setMaxListSize(I)V
    .locals 1

    const-string v0, "Max list size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxListSize:I

    return-void
.end method

.method public setMaxTableSize(I)V
    .locals 1

    const-string v0, "Max table size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->maxTableSize:I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->dynamicTable:Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->setMaxSize(I)V

    return-void
.end method
