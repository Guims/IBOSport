.class final Lorg/apache/hc/core5/http2/hpack/HuffmanNode;
.super Ljava/lang/Object;


# instance fields
.field private final bits:I

.field private final children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

.field private final symbol:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->symbol:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->bits:I

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->symbol:I

    iput p2, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->bits:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    return-void
.end method


# virtual methods
.method public getBits()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->bits:I

    return v0
.end method

.method public getChild(I)Lorg/apache/hc/core5/http2/hpack/HuffmanNode;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSymbol()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->symbol:I

    return v0
.end method

.method public hasChild(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTerminal()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChild(ILorg/apache/hc/core5/http2/hpack/HuffmanNode;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    const-string v1, "Children nodes"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[symbol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->symbol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->bits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/hpack/HuffmanNode;->children:[Lorg/apache/hc/core5/http2/hpack/HuffmanNode;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
