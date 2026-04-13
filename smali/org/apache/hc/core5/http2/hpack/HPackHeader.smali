.class final Lorg/apache/hc/core5/http2/hpack/HPackHeader;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/Header;


# static fields
.field private static final ENTRY_SIZE_OVERHEAD:I = 0x20


# instance fields
.field private final name:Ljava/lang/String;

.field private final nameLen:I

.field private final sensitive:Z

.field private final value:Ljava/lang/String;

.field private final valueLen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->name:Ljava/lang/String;

    iput p2, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->nameLen:I

    iput-object p3, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->value:Ljava/lang/String;

    iput p4, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->valueLen:I

    iput-boolean p5, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->sensitive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Header;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/Header;->isSensitive()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameLen()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->nameLen:I

    return v0
.end method

.method public getTotalSize()I
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->nameLen:I

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->valueLen:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueLen()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->valueLen:I

    return v0
.end method

.method public isSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->sensitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
