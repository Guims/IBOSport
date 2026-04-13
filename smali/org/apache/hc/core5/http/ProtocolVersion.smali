.class public Lorg/apache/hc/core5/http/ProtocolVersion;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field private final major:I

.field private final minor:I

.field private final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Protocol name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    const-string p1, "Protocol minor version"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->major:I

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->minor:I

    return-void
.end method


# virtual methods
.method public compareToVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)I
    .locals 3

    const-string v0, "Protocol version"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Versions for different protocols cannot be compared: %s %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/ProtocolVersion;->getMajor()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/ProtocolVersion;->getMinor()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final equals(II)Z
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->major:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->minor:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/core5/http/ProtocolVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/hc/core5/http/ProtocolVersion;

    iget-object v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->major:I

    iget v3, p1, Lorg/apache/hc/core5/http/ProtocolVersion;->major:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->minor:I

    iget p1, p1, Lorg/apache/hc/core5/http/ProtocolVersion;->minor:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public format()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->minor:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/ProtocolVersion;->isComparable(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/ProtocolVersion;->compareToVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->major:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->minor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lorg/apache/hc/core5/http/ProtocolVersion;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/hc/core5/http/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final lessEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/ProtocolVersion;->isComparable(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/ProtocolVersion;->compareToVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/ProtocolVersion;->format()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
