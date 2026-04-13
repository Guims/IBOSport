.class public Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/config/CharCodingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private unmappableInputAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http/config/CharCodingConfig;
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    :cond_1
    new-instance v1, Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iget-object v2, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    iget-object v3, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/hc/core5/http/config/CharCodingConfig;-><init>(Ljava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;)V

    return-object v1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setMalformedInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->charset:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->charset:Ljava/nio/charset/Charset;

    :cond_0
    return-object p0
.end method

.method public setUnmappableInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->charset:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->charset:Ljava/nio/charset/Charset;

    :cond_0
    return-object p0
.end method
