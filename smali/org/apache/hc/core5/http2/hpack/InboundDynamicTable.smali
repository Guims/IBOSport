.class final Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;
.super Ljava/lang/Object;


# instance fields
.field private currentSize:I

.field private final headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

.field private maxSize:I

.field private final staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->INSTANCE:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;-><init>(Lorg/apache/hc/core5/http2/hpack/StaticTable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/StaticTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    new-instance p1, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    const p1, 0x7fffffff

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->maxSize:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->clear()V

    return-void
.end method

.method private evict()V
    .locals 2

    :goto_0
    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->maxSize:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->removeLast()Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getTotalSize()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Current table size must be zero"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getTotalSize()I

    move-result v0

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->maxSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->clear()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->addFirst(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V

    iget p1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->evict()V

    return-void
.end method

.method public dynamicLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->currentSize:I

    return v0
.end method

.method public getDynamicEntry(I)Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->get(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1
.end method

.method public getHeader(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "index %s cannot be less than 1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;Ljava/lang/Object;)V

    if-gt p1, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "length %s cannot be greater than index %s"

    invoke-static {v1, v3, v0}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->get(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->get(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->maxSize:I

    return v0
.end method

.method public length()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/FifoBuffer;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setMaxSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->maxSize:I

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->evict()V

    return-void
.end method

.method public staticLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/InboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v0

    return v0
.end method
