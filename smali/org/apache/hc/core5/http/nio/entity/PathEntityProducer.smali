.class public final Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final channelRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final chunked:Z

.field private final contentType:Lorg/apache/hc/core5/http/ContentType;

.field private eof:Z

.field private final exception:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/nio/file/Path;

.field private final length:J

.field private final openOptions:[Ljava/nio/file/OpenOption;


# direct methods
.method public varargs constructor <init>(Ljava/nio/file/Path;ILorg/apache/hc/core5/http/ContentType;Z[Ljava/nio/file/OpenOption;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "file"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/cookie/a;->e(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->file:Ljava/nio/file/Path;

    iput-object p5, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->openOptions:[Ljava/nio/file/OpenOption;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/cookie/a;->a(Ljava/nio/file/Path;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->length:J

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    iput-boolean p4, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->chunked:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->channelRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;Z[Ljava/nio/file/OpenOption;)V
    .locals 6

    const/16 v2, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;-><init>(Ljava/nio/file/Path;ILorg/apache/hc/core5/http/ContentType;Z[Ljava/nio/file/OpenOption;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;[Ljava/nio/file/OpenOption;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;-><init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;Z[Ljava/nio/file/OpenOption;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;-><init>(Ljava/nio/file/Path;Lorg/apache/hc/core5/http/ContentType;[Ljava/nio/file/OpenOption;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->releaseResources()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->length:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

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

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->chunked:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->channelRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SeekableByteChannel;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->file:Ljava/nio/file/Path;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->openOptions:[Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Lorg/apache/hc/core5/http/nio/entity/a;->l(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->channelRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Illegal producer state"

    invoke-static {v2, v3}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->eof:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v2}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_2

    iput-boolean v1, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->eof:Z

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_3
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->eof:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->releaseResources()V

    :cond_4
    return-void
.end method

.method public releaseResources()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->eof:Z

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/PathEntityProducer;->channelRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
