.class Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/BHttpConnection;


# static fields
.field private static final STALE_CHECK_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;


# instance fields
.field private chunkedRequestBuffer:[B

.field final connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

.field volatile endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

.field final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field final inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

.field final outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

.field final socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/impl/io/SocketHolder;",
            ">;"
        }
    .end annotation
.end field

.field volatile version:Lorg/apache/hc/core5/http/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->STALE_CHECK_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    new-instance v1, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    new-instance v6, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {v6}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/config/Http1Config;->getBufferSize()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxLineLength()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IIILjava/nio/charset/CharsetDecoder;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    new-instance p2, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/config/Http1Config;->getBufferSize()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/config/Http1Config;->getChunkSizeHint()I

    move-result p1

    invoke-direct {p2, v6, v0, p1, p3}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IILjava/nio/charset/CharsetEncoder;)V

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    new-instance p1, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-direct {p1, v1, v6}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;-><init>(Lorg/apache/hc/core5/http/io/HttpTransportMetrics;Lorg/apache/hc/core5/http/io/HttpTransportMetrics;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private fillInputBuffer(Lorg/apache/hc/core5/util/Timeout;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->fillBuffer(Ljava/io/InputStream;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1
.end method

.method private getChunkedRequestBuffer()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->chunkedRequestBuffer:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/Http1Config;->getChunkSizeHint()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2000

    :goto_0
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->chunkedRequestBuffer:[B

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->chunkedRequestBuffer:[B

    return-object v0
.end method


# virtual methods
.method public awaitInput(Lorg/apache/hc/core5/util/Timeout;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->fillInputBuffer(Lorg/apache/hc/core5/util/Timeout;)I

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result p1

    return p1
.end method

.method public bind(Ljava/net/Socket;)V
    .locals 1

    const-string v0, "Socket"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;-><init>(Ljava/net/Socket;)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->bind(Lorg/apache/hc/core5/http/impl/io/SocketHolder;)V

    return-void
.end method

.method public bind(Lorg/apache/hc/core5/http/impl/io/SocketHolder;)V
    .locals 1

    const-string v0, "Socket holder"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->clear()V

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flush(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    :cond_1
    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    :try_start_0
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    return-void
.end method

.method public createContentInputStream(JLorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/ContentLengthInputStream;

    invoke-direct {v0, p3, p4, p1, p2}, Lorg/apache/hc/core5/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;J)V

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object p1, Lorg/apache/hc/core5/http/io/entity/EmptyInputStream;->INSTANCE:Lorg/apache/hc/core5/http/io/entity/EmptyInputStream;

    return-object p1

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream;

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-direct {p1, p3, p4, p2}, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;Lorg/apache/hc/core5/http/config/Http1Config;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;

    invoke-direct {p1, p3, p4}, Lorg/apache/hc/core5/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;)V

    return-object p1
.end method

.method public createContentOutputStream(JLorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;Lorg/apache/hc/core5/function/Supplier;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/hc/core5/http/io/SessionOutputBuffer;",
            "Ljava/io/OutputStream;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;>;)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance p5, Lorg/apache/hc/core5/http/impl/io/ContentLengthOutputStream;

    invoke-direct {p5, p3, p4, p1, p2}, Lorg/apache/hc/core5/http/impl/io/ContentLengthOutputStream;-><init>(Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;J)V

    return-object p5

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/hc/core5/http/impl/io/ChunkedOutputStream;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->getChunkedRequestBuffer()[B

    move-result-object p2

    invoke-direct {p1, p3, p4, p2, p5}, Lorg/apache/hc/core5/http/impl/io/ChunkedOutputStream;-><init>(Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;[BLorg/apache/hc/core5/function/Supplier;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;

    invoke-direct {p1, p3, p4}, Lorg/apache/hc/core5/http/impl/io/IdentityOutputStream;-><init>(Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V

    return-object p1
.end method

.method public createIncomingEntity(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;J)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 7

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/IncomingHttpEntity;

    invoke-virtual {p0, p4, p5, p2, p3}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->createContentInputStream(JLorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    const-wide/16 v2, -0x1

    if-ltz p2, :cond_0

    move-wide p2, v2

    move-wide v2, p4

    goto :goto_0

    :cond_0
    move-wide p2, v2

    :goto_0
    cmp-long p2, p4, p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    :goto_1
    move v4, p2

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :goto_2
    const-string p2, "Content-Type"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v5

    const-string p2, "Content-Encoding"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/io/IncomingHttpEntity;-><init>(Ljava/io/InputStream;JZLorg/apache/hc/core5/http/Header;Lorg/apache/hc/core5/http/Header;)V

    return-object v0
.end method

.method public ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flush(Ljava/io/OutputStream;)V

    return-void
.end method

.method public getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lorg/apache/hc/core5/util/Timeout;->DISABLED:Lorg/apache/hc/core5/util/Timeout;

    :goto_0
    new-instance v2, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/http/HttpConnectionMetrics;Lorg/apache/hc/core5/util/Timeout;)V

    iput-object v2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->version:Lorg/apache/hc/core5/http/ProtocolVersion;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getSocketHolder()Lorg/apache/hc/core5/http/impl/io/SocketHolder;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/apache/hc/core5/util/Timeout;->DISABLED:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public incrementRequestCount()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementRequestCount()V

    return-void
.end method

.method public incrementResponseCount()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementResponseCount()V

    return-void
.end method

.method public isDataAvailable(Lorg/apache/hc/core5/util/Timeout;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->awaitInput(Lorg/apache/hc/core5/util/Timeout;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStale()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->STALE_CHECK_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->fillInputBuffer(Lorg/apache/hc/core5/util/Timeout;)I

    move-result v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v2, :cond_1

    return v1

    :cond_1
    return v0

    :catch_0
    return v1

    :catch_1
    return v0
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/hc/core5/util/Timeout;->defaultsToDisabled(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->socketHolderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lorg/apache/hc/core5/net/InetAddressUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    const-string v0, "<->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lorg/apache/hc/core5/net/InetAddressUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "[Not bound]"

    return-object v0
.end method
