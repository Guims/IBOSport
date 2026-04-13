.class public Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;
.super Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field static final PREFACE:[B


# instance fields
.field private final http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

.field private final inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->PREFACE:[B

    sput-object v0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->PREFACE:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    const-string p1, "HTTP/2 stream handler factory"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    const/16 p1, 0x400

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->allocate(I)Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->close()V

    return-void
.end method

.method public bridge synthetic close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public connected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public bridge synthetic exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->put(Ljava/nio/ByteBuffer;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->length()I

    move-result p2

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->PREFACE:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_1

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->readFrom(Ljava/nio/channels/ReadableByteChannel;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->data()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    array-length v0, v0

    if-lt v1, v0, :cond_5

    :goto_1
    sget-object p1, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->PREFACE:[B

    array-length v0, p1

    if-ge v2, v0, :cond_3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    aget-byte p1, p1, v2

    if-ne v0, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;

    const-string p2, "Unexpected HTTP/2 preface"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/ServerH2IOEventHandler;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;->create(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2IOEventHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;)V

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->startProtocol(Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public bridge synthetic timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
