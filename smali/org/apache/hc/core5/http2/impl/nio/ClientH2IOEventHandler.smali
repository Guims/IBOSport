.class public Lorg/apache/hc/core5/http2/impl/nio/ClientH2IOEventHandler;
.super Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->close()V

    return-void
.end method

.method public bridge synthetic close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public bridge synthetic connected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public bridge synthetic disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public bridge synthetic exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public bridge synthetic setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public bridge synthetic timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2IOEventHandler;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/net/InetAddressUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2IOEventHandler;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/net/InetAddressUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2IOEventHandler;->streamMultiplexer:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->appendState(Ljava/lang/StringBuilder;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
