.class public abstract Lorg/apache/hc/core5/http2/frame/Frame;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final flags:I

.field private final streamId:I

.field private final type:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/hc/core5/http2/frame/Frame;->type:I

    iput p2, p0, Lorg/apache/hc/core5/http2/frame/Frame;->flags:I

    iput p3, p0, Lorg/apache/hc/core5/http2/frame/Frame;->streamId:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/frame/Frame;->flags:I

    return v0
.end method

.method public abstract getPayload()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getStreamId()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/frame/Frame;->streamId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/frame/Frame;->type:I

    return v0
.end method

.method public isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/frame/Frame;->getFlags()I

    move-result v0

    iget p1, p1, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isType(Lorg/apache/hc/core5/http2/frame/FrameType;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/frame/Frame;->getType()I

    move-result v0

    iget p1, p1, Lorg/apache/hc/core5/http2/frame/FrameType;->value:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/hc/core5/http2/frame/Frame;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/frame/Frame;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/frame/Frame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/frame/Frame;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
