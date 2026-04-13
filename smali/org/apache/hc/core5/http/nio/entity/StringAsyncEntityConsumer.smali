.class public Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;
.super Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityConsumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final capacityIncrement:I

.field private final content:Lorg/apache/hc/core5/util/CharArrayBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x2000

    sget-object v1, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;-><init>(IILorg/apache/hc/core5/http/config/CharCodingConfig;)V

    return-void
.end method

.method public constructor <init>(IILorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityConsumer;-><init>(ILorg/apache/hc/core5/http/config/CharCodingConfig;)V

    const-string p1, "Capacity increment"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->capacityIncrement:I

    new-instance p1, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 2

    const/16 v0, 0x2000

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;-><init>(IILorg/apache/hc/core5/http/config/CharCodingConfig;)V

    return-void
.end method


# virtual methods
.method public capacityIncrement()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->capacityIncrement:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final data(Ljava/nio/CharBuffer;Z)V
    .locals 2

    const-string p2, "CharBuffer"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->array()[C

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->setLength(I)V

    return-void
.end method

.method public bridge synthetic generateContent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->generateContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/StringAsyncEntityConsumer;->content:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->clear()V

    return-void
.end method

.method public final streamStart(Lorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    return-void
.end method
