.class Lorg/apache/hc/client5/http/entity/mime/LegacyMultipart;
.super Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;


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

    iput-object p3, p0, Lorg/apache/hc/client5/http/entity/mime/LegacyMultipart;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public formatMultipartHeader(Lorg/apache/hc/client5/http/entity/mime/MultipartPart;Ljava/io/OutputStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->getHeader()Lorg/apache/hc/client5/http/entity/mime/Header;

    move-result-object v0

    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MimeField;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeField(Lorg/apache/hc/client5/http/entity/mime/MimeField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->getBody()Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/client5/http/entity/mime/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "Content-Type"

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MimeField;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeField(Lorg/apache/hc/client5/http/entity/mime/MimeField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    :cond_1
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

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/LegacyMultipart;->parts:Ljava/util/List;

    return-object v0
.end method
