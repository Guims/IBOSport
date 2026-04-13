.class public Lorg/apache/hc/core5/http/config/CharCodingConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final unmappableInputAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->build()Lorg/apache/hc/core5/http/config/CharCodingConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->charset:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    iput-object p3, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    return-void
.end method

.method public static copy(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;
    .locals 2

    const-string v0, "Config"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->setMalformedInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;->setUnmappableInputAction(Ljava/nio/charset/CodingErrorAction;)Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", malformedInputAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unmappableInputAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
