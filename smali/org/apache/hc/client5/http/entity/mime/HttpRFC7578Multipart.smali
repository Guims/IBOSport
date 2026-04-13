.class Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;
.super Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;
    }
.end annotation


# static fields
.field private static final PERCENT_CODEC:Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;

.field private static final RADIX:I = 0x10


# instance fields
.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/entity/mime/MultipartPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->PERCENT_CODEC:Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/entity/mime/MultipartPart;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->parts:Ljava/util/List;

    return-void
.end method

.method public static digit16(B)I
    .locals 2

    int-to-char v0, p0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid encoding: not a valid digit (radix 16): "

    invoke-static {p0, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexDigit(I)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    return p0
.end method


# virtual methods
.method public formatMultipartHeader(Lorg/apache/hc/client5/http/entity/mime/MultipartPart;Ljava/io/OutputStream;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->getHeader()Lorg/apache/hc/client5/http/entity/mime/Header;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/entity/mime/MimeField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/entity/mime/MimeField;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v1, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->FIELD_SEP:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/entity/mime/MimeField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/entity/mime/MimeField;->getParameters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "; "

    invoke-static {v4, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-static {v3, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    const-string v4, "=\""

    invoke-static {v4, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    if-eqz v2, :cond_1

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->PERCENT_CODEC:Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;

    iget-object v4, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart$PercentCodec;->encode([B)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_0
    invoke-static {v2, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    :cond_1
    :goto_2
    const-string v2, "\""

    invoke-static {v2, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->CR_LF:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeBytes(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeField(Lorg/apache/hc/client5/http/entity/mime/MimeField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/entity/mime/MultipartPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;->parts:Ljava/util/List;

    return-object v0
.end method
