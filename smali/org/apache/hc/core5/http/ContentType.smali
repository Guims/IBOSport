.class public final Lorg/apache/hc/core5/http/ContentType;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final APPLICATION_ATOM_XML:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_FORM_URLENCODED:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_JSON:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_NDJSON:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_OCTET_STREAM:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_PDF:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_PROBLEM_JSON:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_PROBLEM_XML:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_RSS_XML:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_SOAP_XML:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_SVG_XML:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_XHTML_XML:Lorg/apache/hc/core5/http/ContentType;

.field public static final APPLICATION_XML:Lorg/apache/hc/core5/http/ContentType;

.field private static final CHARSET:Ljava/lang/String; = "charset"

.field private static final CONTENT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/ContentType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

.field public static final DEFAULT_TEXT:Lorg/apache/hc/core5/http/ContentType;

.field private static final EMPTY_NAME_VALUE_PAIR_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

.field public static final IMAGE_BMP:Lorg/apache/hc/core5/http/ContentType;

.field public static final IMAGE_GIF:Lorg/apache/hc/core5/http/ContentType;

.field public static final IMAGE_JPEG:Lorg/apache/hc/core5/http/ContentType;

.field public static final IMAGE_PNG:Lorg/apache/hc/core5/http/ContentType;

.field public static final IMAGE_SVG:Lorg/apache/hc/core5/http/ContentType;

.field public static final IMAGE_TIFF:Lorg/apache/hc/core5/http/ContentType;

.field public static final IMAGE_WEBP:Lorg/apache/hc/core5/http/ContentType;

.field public static final MULTIPART_FORM_DATA:Lorg/apache/hc/core5/http/ContentType;

.field public static final MULTIPART_MIXED:Lorg/apache/hc/core5/http/ContentType;

.field public static final MULTIPART_RELATED:Lorg/apache/hc/core5/http/ContentType;

.field public static final TEXT_EVENT_STREAM:Lorg/apache/hc/core5/http/ContentType;

.field public static final TEXT_HTML:Lorg/apache/hc/core5/http/ContentType;

.field public static final TEXT_MARKDOWN:Lorg/apache/hc/core5/http/ContentType;

.field public static final TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

.field public static final TEXT_XML:Lorg/apache/hc/core5/http/ContentType;

.field public static final WILDCARD:Lorg/apache/hc/core5/http/ContentType;

.field private static final serialVersionUID:J = -0x6bcff2af98b1a2b8L


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final mimeType:Ljava/lang/String;

.field private final params:[Lorg/apache/hc/core5/http/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "application/atom+xml"

    invoke-static {v1, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_ATOM_XML:Lorg/apache/hc/core5/http/ContentType;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v3, "application/x-www-form-urlencoded"

    invoke-static {v3, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v3

    sput-object v3, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/hc/core5/http/ContentType;

    const-string v4, "application/json"

    invoke-static {v4, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v4

    sput-object v4, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_JSON:Lorg/apache/hc/core5/http/ContentType;

    const-string v5, "application/x-ndjson"

    invoke-static {v5, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v5

    sput-object v5, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_NDJSON:Lorg/apache/hc/core5/http/ContentType;

    const-string v5, "application/octet-stream"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v5

    sput-object v5, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/hc/core5/http/ContentType;

    const-string v5, "application/pdf"

    invoke-static {v5, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v5

    sput-object v5, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_PDF:Lorg/apache/hc/core5/http/ContentType;

    const-string v5, "application/soap+xml"

    invoke-static {v5, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v5

    sput-object v5, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_SOAP_XML:Lorg/apache/hc/core5/http/ContentType;

    const-string v5, "application/svg+xml"

    invoke-static {v5, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v5

    sput-object v5, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_SVG_XML:Lorg/apache/hc/core5/http/ContentType;

    const-string v7, "application/xhtml+xml"

    invoke-static {v7, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v7

    sput-object v7, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_XHTML_XML:Lorg/apache/hc/core5/http/ContentType;

    const-string v8, "application/xml"

    invoke-static {v8, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v8

    sput-object v8, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_XML:Lorg/apache/hc/core5/http/ContentType;

    const-string v9, "application/problem+json"

    invoke-static {v9, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v9

    sput-object v9, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_PROBLEM_JSON:Lorg/apache/hc/core5/http/ContentType;

    const-string v9, "application/problem+xml"

    invoke-static {v9, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v9

    sput-object v9, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_PROBLEM_XML:Lorg/apache/hc/core5/http/ContentType;

    const-string v9, "application/rss+xml"

    invoke-static {v9, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v9

    sput-object v9, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_RSS_XML:Lorg/apache/hc/core5/http/ContentType;

    const-string v9, "image/bmp"

    invoke-static {v9}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v9

    sput-object v9, Lorg/apache/hc/core5/http/ContentType;->IMAGE_BMP:Lorg/apache/hc/core5/http/ContentType;

    const-string v10, "image/gif"

    invoke-static {v10}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v10

    sput-object v10, Lorg/apache/hc/core5/http/ContentType;->IMAGE_GIF:Lorg/apache/hc/core5/http/ContentType;

    const-string v11, "image/jpeg"

    invoke-static {v11}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v11

    sput-object v11, Lorg/apache/hc/core5/http/ContentType;->IMAGE_JPEG:Lorg/apache/hc/core5/http/ContentType;

    const-string v12, "image/png"

    invoke-static {v12}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v12

    sput-object v12, Lorg/apache/hc/core5/http/ContentType;->IMAGE_PNG:Lorg/apache/hc/core5/http/ContentType;

    const-string v13, "image/svg+xml"

    invoke-static {v13}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v13

    sput-object v13, Lorg/apache/hc/core5/http/ContentType;->IMAGE_SVG:Lorg/apache/hc/core5/http/ContentType;

    const-string v14, "image/tiff"

    invoke-static {v14}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v14

    sput-object v14, Lorg/apache/hc/core5/http/ContentType;->IMAGE_TIFF:Lorg/apache/hc/core5/http/ContentType;

    const-string v15, "image/webp"

    invoke-static {v15}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v15

    sput-object v15, Lorg/apache/hc/core5/http/ContentType;->IMAGE_WEBP:Lorg/apache/hc/core5/http/ContentType;

    const-string v6, "multipart/form-data"

    invoke-static {v6, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v6

    sput-object v6, Lorg/apache/hc/core5/http/ContentType;->MULTIPART_FORM_DATA:Lorg/apache/hc/core5/http/ContentType;

    move-object/from16 v17, v2

    const-string v2, "multipart/mixed"

    invoke-static {v2, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/core5/http/ContentType;->MULTIPART_MIXED:Lorg/apache/hc/core5/http/ContentType;

    const-string v2, "multipart/related"

    invoke-static {v2, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/core5/http/ContentType;->MULTIPART_RELATED:Lorg/apache/hc/core5/http/ContentType;

    const-string v2, "text/html"

    invoke-static {v2, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/core5/http/ContentType;->TEXT_HTML:Lorg/apache/hc/core5/http/ContentType;

    move-object/from16 v18, v2

    const-string v2, "text/markdown"

    invoke-static {v2, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/core5/http/ContentType;->TEXT_MARKDOWN:Lorg/apache/hc/core5/http/ContentType;

    const-string v2, "text/plain"

    invoke-static {v2, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v1

    sput-object v1, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    const-string v2, "text/xml"

    invoke-static {v2, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/core5/http/ContentType;->TEXT_XML:Lorg/apache/hc/core5/http/ContentType;

    move-object/from16 v19, v1

    const-string v1, "text/event-stream"

    invoke-static {v1, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/ContentType;->TEXT_EVENT_STREAM:Lorg/apache/hc/core5/http/ContentType;

    const-string v0, "*/*"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/ContentType;->WILDCARD:Lorg/apache/hc/core5/http/ContentType;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/hc/core5/http/NameValuePair;

    sput-object v1, Lorg/apache/hc/core5/http/ContentType;->EMPTY_NAME_VALUE_PAIR_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    move-object/from16 v16, v15

    move-object v15, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    filled-new-array/range {v2 .. v18}, [Lorg/apache/hc/core5/http/ContentType;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/16 v3, 0x11

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/ContentType;->CONTENT_TYPE_MAP:Ljava/util/Map;

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    sput-object v0, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_TEXT:Lorg/apache/hc/core5/http/ContentType;

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/hc/core5/http/ContentType;

    sput-object v0, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/ContentType;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/ContentType;->params:[Lorg/apache/hc/core5/http/NameValuePair;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/hc/core5/http/NameValuePair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/ContentType;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lorg/apache/hc/core5/http/ContentType;->params:[Lorg/apache/hc/core5/http/NameValuePair;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;
    .locals 2

    const-string v0, "MIME type"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/ContentType;->valid(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/ContentType;
    .locals 2

    const-string v0, "MIME type"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/ContentType;->valid(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;Z)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method private static create(Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;Z)Lorg/apache/hc/core5/http/ContentType;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    throw v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object p2, v0

    :goto_2
    new-instance v1, Lorg/apache/hc/core5/http/ContentType;

    if-eqz p1, :cond_3

    array-length v2, p1

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v0

    :goto_3
    invoke-direct {v1, p0, p2, p1}, Lorg/apache/hc/core5/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;[Lorg/apache/hc/core5/http/NameValuePair;)V

    return-object v1
.end method

.method private static create(Lorg/apache/hc/core5/http/HeaderElement;Z)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HeaderElement;->getParameters()[Lorg/apache/hc/core5/http/NameValuePair;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;Z)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static getByMimeType(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->CONTENT_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/ContentType;

    return-object p0
.end method

.method public static getCharset(Lorg/apache/hc/core5/http/ContentType;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/ContentType;->getCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/hc/core5/http/ContentType;->parse(Ljava/lang/CharSequence;Z)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljava/lang/CharSequence;Z)Lorg/apache/hc/core5/http/ContentType;
    .locals 4

    invoke-static {p0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/message/ParserCursor;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http/message/ParserCursor;-><init>(II)V

    sget-object v2, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;

    invoke-virtual {v2, p0, v0}, Lorg/apache/hc/core5/http/message/BasicHeaderValueParser;->parseElements(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/HeaderElement;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_1

    aget-object p0, p0, v3

    invoke-static {p0, p1}, Lorg/apache/hc/core5/http/ContentType;->create(Lorg/apache/hc/core5/http/HeaderElement;Z)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static parseLenient(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/hc/core5/http/ContentType;->parse(Ljava/lang/CharSequence;Z)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p0

    return-object p0
.end method

.method private static valid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/ContentType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "Parameter name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/apache/hc/core5/http/ContentType;->params:[Lorg/apache/hc/core5/http/NameValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public isSameMimeType(Lorg/apache/hc/core5/http/ContentType;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/ContentType;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/ContentType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/ContentType;->params:[Lorg/apache/hc/core5/http/NameValuePair;

    if-eqz v1, :cond_0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;

    iget-object v2, p0, Lorg/apache/hc/core5/http/ContentType;->params:[Lorg/apache/hc/core5/http/NameValuePair;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->formatParameters(Lorg/apache/hc/core5/util/CharArrayBuffer;[Lorg/apache/hc/core5/http/NameValuePair;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCharset(Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    return-object p1
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    return-object p1
.end method

.method public varargs withParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/ContentType;
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/ContentType;->params:[Lorg/apache/hc/core5/http/NameValuePair;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_3

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    iget-object v4, p0, Lorg/apache/hc/core5/http/ContentType;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/ContentType;->EMPTY_NAME_VALUE_PAIR_ARRAY:[Lorg/apache/hc/core5/http/NameValuePair;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/hc/core5/http/NameValuePair;

    invoke-static {v0, p1, v2}, Lorg/apache/hc/core5/http/ContentType;->create(Ljava/lang/String;[Lorg/apache/hc/core5/http/NameValuePair;Z)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1

    return-object p1
.end method
