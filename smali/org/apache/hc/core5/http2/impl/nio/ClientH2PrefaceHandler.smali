.class public Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;
.super Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field static final PREFACE:[B


# instance fields
.field private final http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

.field private volatile inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

.field private final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile preface:Ljava/nio/ByteBuffer;

.field private final strictALPNHandshake:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->PREFACE:[B

    return-void

    :array_0
    .array-data 1
        0x50t
        0x52t
        0x49t
        0x20t
        0x2at
        0x20t
        0x48t
        0x54t
        0x54t
        0x50t
        0x2ft
        0x32t
        0x2et
        0x30t
        0xdt
        0xat
        0xdt
        0xat
        0x53t
        0x4dt
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;ZLorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;ZLorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;",
            "Z",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    const-string p1, "HTTP/2 stream handler factory"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iput-boolean p3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->strictALPNHandshake:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private initialize()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->strictALPNHandshake:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;

    const-string v1, "ALPN: missing application protocol"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object v1, v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;

    const-string v2, "ALPN: unexpected application protocol \'"

    const-string v3, "\'"

    invoke-static {v2, v0, v3}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->PREFACE:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->preface:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void
.end method

.method private writeOutPreface(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->preface:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->preface:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->preface:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->data()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/ClientH2IOEventHandler;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v2, v3}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->create(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2IOEventHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;)V

    invoke-virtual {p0, v1, p1}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->startProtocol(Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->clear()V

    :cond_2
    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->preface:Ljava/nio/ByteBuffer;

    :cond_3
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
    .locals 2

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->initialize()V

    :cond_0
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
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->allocate(I)Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->inBuf:Lorg/apache/hc/core5/http/impl/nio/BufferedData;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http/impl/nio/BufferedData;->put(Ljava/nio/ByteBuffer;)V

    :cond_1
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->preface:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->writeOutPreface(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;

    const-string p2, "Unexpected input"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/PrefaceHandlerBase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->initialize()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->preface:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;->writeOutPreface(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;

    const-string v0, "Unexpected output"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/ProtocolNegotiationException;-><init>(Ljava/lang/String;)V

    throw p1
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
