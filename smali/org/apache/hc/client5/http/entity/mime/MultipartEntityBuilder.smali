.class public Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final EMPTY_NAME_VALUE_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

.field private static final MULTIPART_CHARS:[C


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/nio/charset/Charset;

.field private contentType:Lorg/apache/hc/core5/http/ContentType;

.field private mode:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

.field private multipartParts:Ljava/util/List;
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

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/hc/core5/http/NameValuePair;

    sput-object v0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->EMPTY_NAME_VALUE_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;-><init>()V

    return-object v0
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const/16 v1, 0x1e

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/FileBody;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/hc/client5/http/entity/mime/FileBody;-><init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/hc/client5/http/entity/mime/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[B)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;

    sget-object v1, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {v0, p2, v1}, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;-><init>([BLorg/apache/hc/core5/http/ContentType;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/hc/client5/http/entity/mime/ByteArrayBody;-><init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Lorg/apache/hc/core5/http/message/BasicNameValuePair;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/hc/core5/http/NameValuePair;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/ContentType;->withParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-object p0
.end method

.method public addPart(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Content body"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->create(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->build()Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addPart(Lorg/apache/hc/client5/http/entity/mime/MultipartPart;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lorg/apache/hc/client5/http/entity/mime/MultipartPart;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->multipartParts:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->multipartParts:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->multipartParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_TEXT:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/StringBody;

    invoke-direct {v0, p2, p3}, Lorg/apache/hc/client5/http/entity/mime/StringBody;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->buildEntity()Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    return-object v0
.end method

.method public buildEntity()Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;
    .locals 7

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    const-string v1, "boundary"

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/http/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v2, :cond_2

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v5, v1, v0}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    new-instance v1, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    const-string v5, "charset"

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v1, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->EMPTY_NAME_VALUE_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/hc/core5/http/NameValuePair;

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lorg/apache/hc/core5/http/ContentType;->withParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->multipartParts:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;

    instance-of v5, v5, Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;

    if-eqz v5, :cond_5

    sget-object v3, Lorg/apache/hc/core5/http/ContentType;->MULTIPART_FORM_DATA:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v3, v1}, Lorg/apache/hc/core5/http/ContentType;->withParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v3, "multipart/mixed"

    invoke-static {v3, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->multipartParts:Ljava/util/List;

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->multipartParts:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_7
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    iget-object v5, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    sget-object v5, Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    :goto_2
    sget-object v6, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder$1;->$SwitchMap$org$apache$hc$client5$http$entity$mime$HttpMultipartMode:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    if-eq v5, v4, :cond_9

    new-instance v2, Lorg/apache/hc/client5/http/entity/mime/HttpStrictMultipart;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v0, v3}, Lorg/apache/hc/client5/http/entity/mime/HttpStrictMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_9
    sget-object v4, Lorg/apache/hc/core5/http/ContentType;->MULTIPART_FORM_DATA:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v1, v4}, Lorg/apache/hc/core5/http/ContentType;->isSameMimeType(Lorg/apache/hc/core5/http/ContentType;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v2, :cond_a

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_a
    new-instance v4, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;

    invoke-direct {v4, v2, v0, v3}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC7578Multipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    :goto_3
    move-object v2, v4

    goto :goto_4

    :cond_b
    new-instance v4, Lorg/apache/hc/client5/http/entity/mime/HttpRFC6532Multipart;

    invoke-direct {v4, v2, v0, v3}, Lorg/apache/hc/client5/http/entity/mime/HttpRFC6532Multipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_c
    new-instance v4, Lorg/apache/hc/client5/http/entity/mime/LegacyMultipart;

    invoke-direct {v4, v2, v0, v3}, Lorg/apache/hc/client5/http/entity/mime/LegacyMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :goto_4
    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->getTotalLength()J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;-><init>(Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;Lorg/apache/hc/core5/http/ContentType;J)V

    return-object v0
.end method

.method public setBoundary(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setContentType(Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    const-string v0, "Content type"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-object p0
.end method

.method public setLaxMode()Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;->LEGACY:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public setMimeSubtype(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 2

    const-string v0, "MIME subtype"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-object p0
.end method

.method public setMode(Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;)Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public setStrictMode()Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/hc/client5/http/entity/mime/HttpMultipartMode;

    return-object p0
.end method
