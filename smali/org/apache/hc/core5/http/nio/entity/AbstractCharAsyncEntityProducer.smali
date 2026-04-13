.class public abstract Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final EMPTY:Ljava/nio/CharBuffer;


# instance fields
.field private final bytebuf:Ljava/nio/ByteBuffer;

.field private final charsetEncoder:Ljava/nio/charset/CharsetEncoder;

.field private final contentType:Lorg/apache/hc/core5/http/ContentType;

.field private final fragmentSizeHint:I

.field private volatile state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->EMPTY:Ljava/nio/CharBuffer;

    return-void
.end method

.method public constructor <init>(IILorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->fragmentSizeHint:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p3, p1}, Lorg/apache/hc/core5/http/ContentType;->getCharset(Lorg/apache/hc/core5/http/ContentType;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    sget-object p1, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->ACTIVE:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private flush(Lorg/apache/hc/core5/http/nio/StreamChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/StreamChannel;->write(Ljava/nio/Buffer;)I

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    sget-object v1, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->ACTIVE:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->availableData()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract availableData()I
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    sget-object v2, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->ACTIVE:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$1;-><init>(Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->produceData(Lorg/apache/hc/core5/http/nio/StreamChannel;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    sget-object v2, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->FLUSHING:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->flush(Lorg/apache/hc/core5/http/nio/StreamChannel;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->flush(Lorg/apache/hc/core5/http/nio/StreamChannel;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->END_STREAM:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    iput-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract produceData(Lorg/apache/hc/core5/http/nio/StreamChannel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/CharBuffer;",
            ">;)V"
        }
    .end annotation
.end method

.method public releaseResources()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->ACTIVE:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public final streamEnd(Lorg/apache/hc/core5/http/nio/StreamChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    sget-object v1, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->ACTIVE:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->FLUSHING:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->flush(Lorg/apache/hc/core5/http/nio/StreamChannel;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->EMPTY:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->flush(Lorg/apache/hc/core5/http/nio/StreamChannel;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;->END_STREAM:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->state:Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer$State;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    :cond_3
    return-void
.end method

.method public final writeData(Lorg/apache/hc/core5/http/nio/StreamChannel;Ljava/nio/CharBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/StreamChannel<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/nio/CharBuffer;",
            ")I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, v3, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->bytebuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget v2, p0, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->fragmentSizeHint:I

    if-lt v1, v2, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/nio/entity/AbstractCharAsyncEntityProducer;->flush(Lorg/apache/hc/core5/http/nio/StreamChannel;)V

    :cond_3
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method
