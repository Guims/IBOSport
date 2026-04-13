.class Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/hpack/HPackEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalNode"
.end annotation


# instance fields
.field private final header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

.field private next:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

.field private previous:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

.field private seqNum:I

.field final synthetic this$0:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->this$0:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->previous:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->previous:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->next:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->next:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)I
    .locals 0

    iget p0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->seqNum:I

    return p0
.end method

.method public static synthetic access$302(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;I)I
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->seqNum:I

    return p1
.end method


# virtual methods
.method public getHeader()Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->INSTANCE:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->this$0:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;

    invoke-virtual {v1, p0}, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList;->getIndex(Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "master"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; seqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->seqNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; previous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->previous:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->next:Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/apache/hc/core5/http2/hpack/FifoLinkedList$InternalNode;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
