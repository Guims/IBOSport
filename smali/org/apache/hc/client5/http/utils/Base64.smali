.class public Lorg/apache/hc/client5/http/utils/Base64;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final CODEC:Lorg/apache/hc/client5/http/utils/Base64;

.field private static final EMPTY_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/utils/Base64;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/utils/Base64;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/utils/Base64;->CODEC:Lorg/apache/hc/client5/http/utils/Base64;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/hc/client5/http/utils/Base64;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Line breaks not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/utils/Base64;->CODEC:Lorg/apache/hc/client5/http/utils/Base64;

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeBase64([B)[B
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/utils/Base64;->CODEC:Lorg/apache/hc/client5/http/utils/Base64;

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/utils/Base64;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/utils/Base64;->CODEC:Lorg/apache/hc/client5/http/utils/Base64;

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/utils/Base64;->encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->p()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/impl/cookie/a;->d(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->o()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/cookie/a;->q(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lorg/apache/hc/client5/http/utils/Base64;->EMPTY_BYTES:[B

    return-object p1
.end method

.method public decode([B)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->o()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/cookie/a;->r(Ljava/util/Base64$Decoder;[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lorg/apache/hc/client5/http/utils/Base64;->EMPTY_BYTES:[B

    return-object p1
.end method

.method public encode([B)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->p()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/cookie/a;->s(Ljava/util/Base64$Encoder;[B)[B

    move-result-object p1

    return-object p1
.end method
