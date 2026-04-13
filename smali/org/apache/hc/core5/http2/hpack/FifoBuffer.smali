.class final Lorg/apache/hc/core5/http2/hpack/FifoBuffer;
.super Ljava/lang/Object;


# instance fields
.field private array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

.field private head:I

.field private tail:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    return-void
.end method

.method private expand()V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_0

    const v1, 0x7fffffff

    :cond_0
    array-length v2, v0

    new-array v1, v1, [Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iget v3, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    sub-int v4, v2, v3

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    sub-int v4, v2, v3

    invoke-static {v0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iput v2, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    iput v5, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    return-void
.end method


# virtual methods
.method public addFirst(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    aput-object p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    :cond_0
    iget p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->expand()V

    :cond_1
    return-void
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    iput v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    return-void
.end method

.method public get(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    array-length p1, p1

    add-int/2addr v0, p1

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getFirst()Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    if-lez v1, :cond_0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    array-length v1, v0

    goto :goto_0

    :goto_1
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLast()Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeLast()Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    array-length v0, v0

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    :cond_0
    return-object v2
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->head:I

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->tail:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->array:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    array-length v1, v1

    add-int/2addr v1, v0

    return v1

    :cond_0
    return v0
.end method
