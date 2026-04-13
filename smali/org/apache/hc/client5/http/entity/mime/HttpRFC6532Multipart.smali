.class Lorg/apache/hc/client5/http/entity/mime/HttpRFC6532Multipart;
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

    iput-object p3, p0, Lorg/apache/hc/client5/http/entity/mime/HttpRFC6532Multipart;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public formatMultipartHeader(Lorg/apache/hc/client5/http/entity/mime/MultipartPart;Ljava/io/OutputStream;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->getHeader()Lorg/apache/hc/client5/http/entity/mime/Header;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeField(Lorg/apache/hc/client5/http/entity/mime/MimeField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
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

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/HttpRFC6532Multipart;->parts:Ljava/util/List;

    return-object v0
.end method
