.class public final Lorg/apache/hc/core5/http/io/entity/HttpEntities;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/FileEntity;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/io/entity/FileEntity;-><init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/Serializable;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/SerializableEntity;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/io/entity/SerializableEntity;-><init>(Ljava/io/Serializable;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/io/Serializable;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/io/Serializable;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/StringEntity;

    sget-object v1, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {v0, p0, v1}, Lorg/apache/hc/core5/http/io/entity/StringEntity;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/StringEntity;

    sget-object v1, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/ContentType;->withCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/io/entity/StringEntity;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/StringEntity;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/io/entity/StringEntity;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static varargs create(Ljava/lang/String;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/PathEntity;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/io/entity/PathEntity;-><init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/hc/core5/io/IOCallback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/io/IOCallback<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lorg/apache/hc/core5/http/ContentType;",
            ")",
            "Lorg/apache/hc/core5/http/HttpEntity;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/EntityTemplate;

    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    move-object v5, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/io/entity/EntityTemplate;-><init>(JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Lorg/apache/hc/core5/io/IOCallback;)V

    return-object v0
.end method

.method public static varargs create(Lorg/apache/hc/core5/io/IOCallback;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/io/IOCallback<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lorg/apache/hc/core5/http/ContentType;",
            "[",
            "Lorg/apache/hc/core5/http/Header;",
            ")",
            "Lorg/apache/hc/core5/http/HttpEntity;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Lorg/apache/hc/core5/io/IOCallback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BLorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create([BLorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped(Ljava/io/Serializable;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/io/Serializable;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped(Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped(Lorg/apache/hc/core5/io/IOCallback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/io/IOCallback<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lorg/apache/hc/core5/http/ContentType;",
            ")",
            "Lorg/apache/hc/core5/http/HttpEntity;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Lorg/apache/hc/core5/io/IOCallback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createGzipped([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createUrlEncoded(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/apache/hc/core5/http/HttpEntity;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/ContentType;->withCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/hc/core5/http/ContentType;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/hc/core5/net/WWWFormCodec;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static gzip(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/HttpEntities$1;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities$1;-><init>(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-object v0
.end method

.method public static varargs withTrailers(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/HttpEntities$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities$2;-><init>(Lorg/apache/hc/core5/http/HttpEntity;[Lorg/apache/hc/core5/http/Header;)V

    return-object v0
.end method
