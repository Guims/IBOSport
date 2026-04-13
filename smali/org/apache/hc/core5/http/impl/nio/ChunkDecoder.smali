.class public Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;
.super Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;
    }
.end annotation


# instance fields
.field private chunkSize:J

.field private endOfChunk:Z

.field private endOfStream:Z

.field private final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

.field private pos:J

.field private state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

.field private final trailerBufs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final trailers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->READ_CONTENT:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfChunk:Z

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V

    return-void
.end method

.method private parseHeader()V
    .locals 7

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    const/16 v5, 0x20

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v2, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    :cond_0
    if-lez v1, :cond_5

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/util/CharArrayBuffer;

    :goto_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxLineLength()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v6

    add-int/2addr v6, v4

    sub-int/2addr v6, v3

    if-gt v6, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Lorg/apache/hc/core5/util/CharArrayBuffer;II)V

    return-void

    :cond_5
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    return-void
.end method

.method private processFooters()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailers:Ljava/util/List;

    new-instance v2, Lorg/apache/hc/core5/http/message/BufferedHeader;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-direct {v2, v3}, Lorg/apache/hc/core5/http/message/BufferedHeader;-><init>(Lorg/apache/hc/core5/util/CharArrayBuffer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/hc/core5/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private readChunkHead()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->clear()V

    :goto_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfChunk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    iget-boolean v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    invoke-interface {v0, v2, v3}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->readLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Z)Z

    move-result v0

    const-string v2, "CRLF expected at end of chunk"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfChunk:Z

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/apache/hc/core5/http/MalformedChunkCodingException;

    invoke-direct {v0, v2}, Lorg/apache/hc/core5/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lorg/apache/hc/core5/http/MalformedChunkCodingException;

    invoke-direct {v0, v2}, Lorg/apache/hc/core5/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    iget-boolean v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    invoke-interface {v0, v2, v3}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->readLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Z)Z

    move-result v0

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxLineLength()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v3

    if-gt v3, v2, :cond_5

    if-nez v0, :cond_6

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v3}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->length()I

    move-result v3

    if-gt v3, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    :cond_7
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v2, v1, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    return-void

    :catch_0
    new-instance v1, Lorg/apache/hc/core5/http/MalformedChunkCodingException;

    const-string v2, "Bad chunk header: "

    invoke-static {v2, v0}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/hc/core5/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    if-nez v0, :cond_9

    :goto_3
    return-void

    :cond_9
    new-instance v0, Lorg/apache/hc/core5/http/ConnectionClosedException;

    const-string v1, "Premature end of chunk coded message body: closing chunk expected"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTrailers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 13

    const-string v0, "Byte buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->COMPLETED:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    sget-object v3, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->COMPLETED:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    if-eq v1, v3, :cond_f

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->hasData()Z

    move-result v1

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_1

    iget-wide v7, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    cmp-long v1, v7, v5

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->fillBufferFromChannel()I

    move-result v1

    if-ne v1, v2, :cond_2

    iput-boolean v4, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    :cond_2
    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$1;->$SwitchMap$org$apache$hc$core5$http$impl$nio$ChunkDecoder$State:[I

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v4, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    if-nez v1, :cond_4

    new-instance v1, Lorg/apache/hc/core5/util/CharArrayBuffer;

    const/16 v4, 0x20

    invoke-direct {v1, v4}, Lorg/apache/hc/core5/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->clear()V

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    iget-boolean v5, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    invoke-interface {v1, v4, v5}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->readLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Z)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    if-eqz p1, :cond_f

    iput-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->setCompleted()V

    return v0

    :cond_5
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->lineBuf:Lorg/apache/hc/core5/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxHeaderCount()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->trailerBufs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string v0, "Maximum header count exceeded"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->parseHeader()V

    goto :goto_0

    :cond_8
    iput-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->setCompleted()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->processFooters()V

    goto/16 :goto_0

    :cond_9
    iget-wide v7, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    cmp-long v1, v7, v5

    const-wide/16 v7, 0x0

    if-nez v1, :cond_b

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->readChunkHead()V

    iget-wide v9, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    cmp-long v1, v9, v5

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    cmp-long v1, v9, v7

    if-nez v1, :cond_b

    iput-wide v5, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;->READ_FOOTERS:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    goto/16 :goto_0

    :cond_b
    iget-wide v9, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    iget-wide v11, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    sub-long/2addr v9, v11

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    const-wide/32 v11, 0x7fffffff

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-interface {v1, p1, v9}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-lez v1, :cond_c

    iget-wide v9, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    int-to-long v11, v1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    add-int/2addr v0, v1

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->hasData()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfStream:Z

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    iput-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->state:Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder$State;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->setCompleted()V

    new-instance p1, Lorg/apache/hc/core5/http/TruncatedChunkException;

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Truncated chunk (expected size: %d; actual size: %d)"

    invoke-direct {p1, v1, v0}, Lorg/apache/hc/core5/http/TruncatedChunkException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_e
    :goto_3
    iget-wide v9, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    iget-wide v11, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    cmp-long v1, v9, v11

    if-nez v1, :cond_f

    iput-wide v5, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->chunkSize:J

    iput-wide v7, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->pos:J

    iput-boolean v4, p0, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;->endOfChunk:Z

    goto/16 :goto_0

    :cond_f
    :goto_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[chunk-coded; completed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
