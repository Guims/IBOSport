.class public abstract Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;


# static fields
.field protected static final DEF_BUF_SIZE:I = 0x2000

.field private static final EMPTY_BIN:Ljava/nio/ByteBuffer;


# instance fields
.field private final charBuffer:Ljava/nio/CharBuffer;

.field private final charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private volatile charset:Ljava/nio/charset/Charset;

.field private volatile charsetDecoder:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->EMPTY_BIN:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2000

    sget-object v1, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-direct {p0, v0, v1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;-><init>(ILorg/apache/hc/core5/http/config/CharCodingConfig;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charBuffer:Ljava/nio/CharBuffer;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-void
.end method

.method private checkResult(Ljava/nio/charset/CoderResult;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    return-void
.end method

.method private doDecode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->data(Ljava/nio/CharBuffer;Z)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method private getCharsetDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method


# virtual methods
.method public abstract capacityIncrement()I
.end method

.method public abstract completed()V
.end method

.method public final consume(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->getCharsetDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->checkResult(Ljava/nio/charset/CoderResult;)V

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->doDecode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract data(Ljava/nio/CharBuffer;Z)V
.end method

.method public final setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charset:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public final streamEnd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->getCharsetDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object v0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->EMPTY_BIN:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->checkResult(Ljava/nio/charset/CoderResult;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->doDecode(Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->checkResult(Ljava/nio/charset/CoderResult;)V

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->doDecode(Z)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->completed()V

    return-void
.end method

.method public final updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharDataConsumer;->capacityIncrement()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    return-void
.end method
