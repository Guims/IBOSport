.class public final Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;


# instance fields
.field private final accessFileRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private final byteBuffer:Ljava/nio/ByteBuffer;

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

.field private final file:Ljava/io/File;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;-><init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILorg/apache/hc/core5/http/ContentType;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "File"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->length:J

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    iput-boolean p4, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->chunked:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->accessFileRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;-><init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;Z)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;-><init>(Ljava/io/File;ILorg/apache/hc/core5/http/ContentType;Z)V

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->releaseResources()V

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

    iget-wide v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->length:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

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

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

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

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->chunked:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->accessFileRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->file:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->accessFileRef:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-boolean v2, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->eof:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_2

    iput-boolean v1, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->eof:Z

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/DataStreamChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :cond_3
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->eof:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->releaseResources()V

    :cond_4
    return-void
.end method

.method public releaseResources()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->eof:Z

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/entity/FileEntityProducer;->accessFileRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
