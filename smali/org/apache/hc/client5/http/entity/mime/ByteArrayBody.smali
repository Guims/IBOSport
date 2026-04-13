.class public Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;
.super Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;


# instance fields
.field private final data:[B

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;-><init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;-><init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;-><init>(Lorg/apache/hc/core5/http/ContentType;)V

    const-string p2, "data"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;->data:[B

    iput-object p3, p0, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
