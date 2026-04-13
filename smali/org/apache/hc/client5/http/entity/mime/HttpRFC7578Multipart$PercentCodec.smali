.class Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentCodec"
.end annotation


# static fields
.field private static final ALWAYSENCODECHARS:Ljava/util/BitSet;

.field private static final ESCAPE_CHAR:B = 0x25t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;->ALWAYSENCODECHARS:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([B)[B
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-byte v2, p1, v1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    invoke-static {v2}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->digit16(B)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->digit16(B)I

    move-result v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid encoding: too short"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)[B
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-byte v4, p1, v3

    if-gez v4, :cond_1

    add-int/lit16 v5, v4, 0x100

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    int-to-char v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;->ALWAYSENCODECHARS:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_2
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v5, 0x4

    invoke-static {v4}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->hexDigit(I)C

    move-result v4

    invoke-static {v5}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->hexDigit(I)C

    move-result v5

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
