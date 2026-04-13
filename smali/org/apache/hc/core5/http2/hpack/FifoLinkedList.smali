.class final Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
    }
.end annotation


# instance fields
.field private length:I

.field private final master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;-><init>(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$002(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$102(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    return-void
.end method


# virtual methods
.method public addFirst(Lorg/apache/hc/core5/http2/hpack/HPackHeader;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;-><init>(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$100(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v1, v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$102(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$002(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$102(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$002(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$300(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$302(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;I)I

    iget p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    return-object v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$002(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$102(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$302(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;I)I

    iput v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    return-void
.end method

.method public get(I)Lorg/apache/hc/core5/http/Header;
    .locals 4

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Length %s cannot be greater then index %s "

    invoke-static {v2, v3, v0}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "index"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$100(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    if-eq v0, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$200(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$100(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirst()Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$100(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$200(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)I
    .locals 3

    invoke-static {p1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$300(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v2}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$000(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$300(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getLast()Lorg/apache/hc/core5/http/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$000(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$200(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$000(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$200(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$000(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v4, v1}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$002(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v1, v4}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$102(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v3}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$002(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v3}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$102(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v2}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$302(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;I)I

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->master:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    invoke-static {v0, v2}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->access$302(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;I)I

    return-object v3
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->length:I

    return v0
.end method
