.class public final Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;-><init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;

    sget-object v1, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {v0, p0, v1}, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;-><init>(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;

    sget-object v1, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/ContentType;->withCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;-><init>(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;-><init>(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs create(Ljava/lang/String;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs create(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;[Ljava/nio/file/OpenOption;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;-><init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;[Ljava/nio/file/OpenOption;)V

    return-object v0
.end method

.method public static varargs create(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->n()Ljava/nio/file/StandardOpenOption;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;-><init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;[Ljava/nio/file/OpenOption;)V

    invoke-static {v0, p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/nio/entity/BasicAsyncEntityProducer;-><init>([BLorg/apache/hc/core5/http/ContentType;)V

    return-object v0
.end method

.method public static varargs create([BLorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static createBinary(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/ByteBuffer;",
            ">;>;",
            "Lorg/apache/hc/core5/http/ContentType;",
            ")",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$1;-><init>(ILorg/apache/hc/core5/http/ContentType;Lorg/apache/hc/core5/function/Callback;)V

    return-object v0
.end method

.method public static varargs createBinary(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/ByteBuffer;",
            ">;>;",
            "Lorg/apache/hc/core5/http/ContentType;",
            "[",
            "Lorg/apache/hc/core5/http/Header;",
            ")",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->createBinary(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static createText(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/CharBuffer;",
            ">;>;",
            "Lorg/apache/hc/core5/http/ContentType;",
            ")",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$2;

    const/16 v1, 0x1000

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2, p1, p0}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$2;-><init>(IILorg/apache/hc/core5/http/ContentType;Lorg/apache/hc/core5/function/Callback;)V

    return-object v0
.end method

.method public static varargs createText(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ContentType;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/CharBuffer;",
            ">;>;",
            "Lorg/apache/hc/core5/http/ContentType;",
            "[",
            "Lorg/apache/hc/core5/http/Header;",
            ")",
            "Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->createText(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static createUrlEncoded(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
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
            "Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;"
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

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs withTrailers(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers$3;-><init>(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;[Lorg/apache/hc/core5/http/Header;)V

    return-object v0
.end method
