.class public Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->INPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    return-void
.end method

.method private expandCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public buffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public capacity()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->INPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    return-void
.end method

.method public ensureAdjustedCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_0

    shr-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0xa

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->expandCapacity(I)V

    :cond_0
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->expandCapacity(I)V

    :cond_0
    return-void
.end method

.method public expand()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_1

    const/16 v0, 0x8

    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x7fffffff

    sub-int v0, v1, v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->expandCapacity(I)V

    return-void
.end method

.method public hasData()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public mode()Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    return-object v0
.end method

.method public setInputMode()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->INPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    :cond_1
    return-void
.end method

.method public setOutputMode()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;->OUTPUT:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->mode:Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
