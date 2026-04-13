.class final Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;
.super Ljava/lang/Object;


# instance fields
.field private currentSize:I

.field private final headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

.field private final mapByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/core5/http2/hpack/HPackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private final staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->INSTANCE:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;-><init>(Lorg/apache/hc/core5/http2/hpack/StaticTable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/StaticTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    new-instance p1, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-direct {p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->mapByName:Ljava/util/Map;

    const p1, 0x7fffffff

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->maxSize:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->lambda$add$0(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->clear()V

    return-void
.end method

.method private evict()V
    .locals 4

    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->maxSize:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->removeLast()Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->getHeader()Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v1

    iget v2, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getTotalSize()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->mapByName:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Current table size must be zero"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$add$0(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getTotalSize()I

    move-result v0

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->maxSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->clear()V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->mapByName:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-virtual {v2, p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->addFirst(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->mapByName:Ljava/util/Map;

    new-instance v3, Lorg/apache/hc/core5/http2/hpack/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->evict()V

    return-void
.end method

.method public dynamicLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getByName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http2/hpack/HPackEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->mapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getCurrentSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->currentSize:I

    return v0
.end method

.method public getDynamicEntry(I)Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->get(I)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public getHeader(I)Lorg/apache/hc/core5/http/Header;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "index %s cannot be less then 1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;Ljava/lang/Object;)V

    if-gt p1, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "index %s cannot be greater then length %s "

    invoke-static {v1, v3, v0}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->get(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->get(I)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    return-object p1
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->maxSize:I

    return v0
.end method

.method public length()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->headers:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setMaxSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->maxSize:I

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->evict()V

    return-void
.end method

.method public staticLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->staticTable:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v0

    return v0
.end method
