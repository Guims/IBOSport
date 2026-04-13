.class public Lorg/apache/hc/client5/http/impl/auth/DigestScheme;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthScheme;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;
    }
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final LOG:LO5/a;

.field private static final serialVersionUID:J = 0x35e669eae4be3904L


# instance fields
.field private a1:[B

.field private a2:[B

.field private transient buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private transient defaultCharset:Ljava/nio/charset/Charset;

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J

.field private final paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:[C

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->LOG:LO5/a;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->defaultCharset:Ljava/nio/charset/Charset;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->complete:Z

    return-void
.end method

.method public static createCnonce()[B
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private createDigestResponse(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/lang/String;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v5, "realm"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v7, "nonce"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v9, "opaque"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v11, "algorithm"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "MD5"

    if-nez v10, :cond_0

    move-object v10, v12

    :cond_0
    new-instance v13, Ljava/util/HashSet;

    const/16 v14, 0x8

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(I)V

    sget-object v15, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->UNKNOWN:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    iget-object v14, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    move-object/from16 v17, v12

    const-string v12, "qop"

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v18, v15

    const-string v15, "auth"

    move-object/from16 v19, v8

    const-string v8, "auth-int"

    move-object/from16 v20, v9

    if-eqz v14, :cond_6

    new-instance v9, Ljava/util/StringTokenizer;

    move-object/from16 v21, v11

    const-string v11, ","

    invoke-direct {v9, v14, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v9

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v22

    goto :goto_0

    :cond_1
    instance-of v9, v0, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    if-eqz v9, :cond_2

    move-object v9, v0

    check-cast v9, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-interface {v9}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {v13, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH_INT:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    goto :goto_2

    :cond_3
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    goto :goto_2

    :cond_4
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH_INT:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    goto :goto_2

    :cond_5
    move-object/from16 v9, v18

    goto :goto_2

    :cond_6
    move-object/from16 v21, v11

    sget-object v9, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->MISSING:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    :goto_2
    sget-object v11, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->UNKNOWN:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    if-eq v9, v11, :cond_1b

    iget-object v11, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v14, "charset"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-static {v11, v14}, Lorg/apache/hc/client5/http/impl/auth/AuthSchemeSupport;->parseCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v11

    const-string v14, "MD5-sess"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    :goto_3
    move-object/from16 v18, v8

    goto :goto_4

    :cond_7
    move-object/from16 v17, v10

    goto :goto_3

    :goto_4
    :try_start_0
    invoke-static/range {v17 .. v17}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8
    :try_end_0
    .catch Lorg/apache/hc/client5/http/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v12

    iget-object v12, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move/from16 v17, v12

    move-object/from16 v23, v13

    if-eqz v17, :cond_8

    const-wide/16 v24, 0x1

    iget-wide v12, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->nounceCount:J

    add-long v12, v12, v24

    iput-wide v12, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->nounceCount:J

    goto :goto_5

    :cond_8
    const-wide/16 v12, 0x1

    iput-wide v12, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->nounceCount:J

    const/4 v12, 0x0

    iput-object v12, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    iput-object v6, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x8

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v13, Ljava/util/Formatter;

    move-object/from16 v16, v7

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v13, v12, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    :try_start_1
    const-string v7, "%08x"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    iget-wide v2, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->nounceCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v7, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13}, Ljava/util/Formatter;->close()V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v3, :cond_9

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->createCnonce()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->formatHex([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    :cond_9
    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    const/16 v7, 0x80

    if-nez v3, :cond_a

    new-instance v3, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-direct {v3, v7}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;-><init>(I)V

    iput-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->reset()V

    :goto_6
    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charset(Ljava/nio/charset/Charset;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    const/4 v12, 0x0

    iput-object v12, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a1:[B

    iput-object v12, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a2:[B

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v11, ":"

    if-eqz v3, :cond_b

    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->username:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->password:[C

    invoke-virtual {v3, v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append([C)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->formatHex([B)Ljava/lang/String;

    move-result-object v3

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->reset()V

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v13, v3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    goto :goto_7

    :cond_b
    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->username:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->password:[C

    invoke-virtual {v3, v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append([C)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    :goto_7
    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object v3

    iput-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a1:[B

    invoke-virtual {v8, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->formatHex([B)Ljava/lang/String;

    move-result-object v3

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->reset()V

    sget-object v13, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    if-ne v9, v13, :cond_c

    iget-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-object/from16 v14, v25

    invoke-virtual {v0, v14}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    move-object/from16 v12, v24

    invoke-virtual {v0, v12}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a2:[B

    goto/16 :goto_b

    :cond_c
    move-object/from16 v12, v24

    move-object/from16 v14, v25

    sget-object v7, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH_INT:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    if-ne v9, v7, :cond_11

    instance-of v7, v0, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    if-eqz v7, :cond_d

    check-cast v0, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v7

    if-nez v7, :cond_f

    move-object/from16 v7, v23

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v0, v14}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a2:[B

    move-object v9, v13

    goto :goto_b

    :cond_e
    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string v2, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v0, v2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v7, Lorg/apache/hc/client5/http/impl/auth/HttpEntityDigester;

    invoke-direct {v7, v8}, Lorg/apache/hc/client5/http/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    if-eqz v0, :cond_10

    :try_start_2
    invoke-interface {v0, v7}, Lorg/apache/hc/core5/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_10
    :goto_9
    invoke-virtual {v7}, Lorg/apache/hc/client5/http/impl/auth/HttpEntityDigester;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v0, v14}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lorg/apache/hc/client5/http/impl/auth/HttpEntityDigester;->getDigest()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->formatHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a2:[B

    goto :goto_b

    :goto_a
    new-instance v2, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string v3, "I/O error reading entity content"

    invoke-direct {v2, v3, v0}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_11
    iget-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v0, v14}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a2:[B

    :goto_b
    iget-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a2:[B

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->formatHex([B)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v7}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->reset()V

    sget-object v7, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->MISSING:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    if-ne v9, v7, :cond_12

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v13, v3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    goto :goto_d

    :cond_12
    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v13, v3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    iget-object v13, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    sget-object v13, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH_INT:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    if-ne v9, v13, :cond_13

    move-object/from16 v13, v18

    goto :goto_c

    :cond_13
    move-object v13, v15

    :goto_c
    invoke-virtual {v3, v13}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    :goto_d
    iget-object v0, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->reset()V

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->formatHex([B)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    const-string v8, "Digest "

    invoke-virtual {v3, v8}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    const-string v13, "username"

    iget-object v14, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->username:Ljava/lang/String;

    invoke-direct {v11, v13, v14}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v11, v5, v4}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    move-object/from16 v5, v16

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    const-string v5, "uri"

    invoke-direct {v4, v5, v12}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    const-string v5, "response"

    invoke-direct {v4, v5, v0}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "nc"

    if-eq v9, v7, :cond_15

    new-instance v4, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    sget-object v5, Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;->AUTH_INT:Lorg/apache/hc/client5/http/impl/auth/DigestScheme$QualityOfProtection;

    if-ne v9, v5, :cond_14

    move-object/from16 v15, v18

    :cond_14
    move-object/from16 v5, v22

    invoke-direct {v4, v5, v15}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v2}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    const-string v4, "cnonce"

    iget-object v6, v1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    move-object/from16 v5, v22

    :goto_e
    new-instance v2, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    move-object/from16 v4, v21

    invoke-direct {v2, v4, v10}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v19, :cond_16

    new-instance v2, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-direct {v2, v7, v6}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    const/4 v2, 0x0

    move v6, v2

    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    if-lez v6, :cond_17

    const-string v9, ", "

    invoke-virtual {v3, v9}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v7}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_19

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_10

    :cond_18
    move v9, v2

    goto :goto_11

    :cond_19
    :goto_10
    move v9, v11

    :goto_11
    sget-object v10, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;

    xor-int/2addr v9, v11

    invoke-virtual {v10, v3, v7, v9}, Lorg/apache/hc/core5/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/hc/core5/util/CharArrayBuffer;Lorg/apache/hc/core5/http/NameValuePair;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1a
    invoke-virtual {v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v13}, Ljava/util/Formatter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_12

    :catchall_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v3

    :catch_1
    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string v2, "Unsupported digest algorithm: "

    move-object/from16 v10, v17

    invoke-virtual {v2, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string v2, "None of the qop methods is supported: "

    invoke-static {v2, v14}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/UnsupportedDigestAlgorithmException;

    const-string v1, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-static {v1, p0}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatHex([B)Ljava/lang/String;
    .locals 7

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v3, v6, v4

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 0

    const-string p1, "HTTP request"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string p3, "realm"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string p3, "nonce"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->createDigestResponse(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string p2, "missing nonce"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string p2, "missing realm"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getA1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a1:[B

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getA2()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->a2:[B

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Digest"

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNounceCount()J
    .locals 2
    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    iget-wide v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->nounceCount:J

    return-wide v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v1, "realm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public initPreemptive(Lorg/apache/hc/client5/http/auth/Credentials;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Credentials"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->username:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/auth/Credentials;->getPassword()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->password:[C

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v0, "cnonce"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string p2, "realm"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isChallengeComplete()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    const-string v1, "stale"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->complete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isResponseReady(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 3

    const-string v0, "Auth host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CredentialsProvider"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lorg/apache/hc/client5/http/auth/CredentialsProvider;->getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/client5/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->username:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/auth/Credentials;->getPassword()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->password:[C

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "{} No credentials found for auth scope [{}]"

    invoke-interface {p1, p2, v0, p3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->username:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->password:[C

    const/4 p1, 0x0

    return p1
.end method

.method public processChallenge(Lorg/apache/hc/client5/http/auth/AuthChallenge;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 3

    const-string p2, "AuthChallenge"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthChallenge;->getParams()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/core5/http/NameValuePair;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->complete:Z

    return-void

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/auth/MalformedChallengeException;

    const-string p2, "Missing digest auth parameters"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;->paramMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
