.class public Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;
.super Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpServerConnection;


# instance fields
.field private final incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final requestParser:Lorg/apache/hc/core5/http/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageParser<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseWriter:Lorg/apache/hc/core5/http/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageWriter<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->scheme:Ljava/lang/String;

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    sget-object p7, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestParserFactory;

    :goto_0
    invoke-interface {p7, p2}, Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;->create(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/io/HttpMessageParser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->requestParser:Lorg/apache/hc/core5/http/io/HttpMessageParser;

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    sget-object p8, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseWriterFactory;

    :goto_1
    invoke-interface {p8}, Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;->create()Lorg/apache/hc/core5/http/io/HttpMessageWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->responseWriter:Lorg/apache/hc/core5/http/io/HttpMessageWriter;

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    sget-object p5, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_2
    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    if-eqz p6, :cond_3

    goto :goto_3

    :cond_3
    sget-object p6, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_3
    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->bind(Ljava/net/Socket;)V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->close()V

    return-void
.end method

.method public bridge synthetic close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public bridge synthetic flush()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->flush()V

    return-void
.end method

.method public bridge synthetic getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDataAvailable(Lorg/apache/hc/core5/util/Timeout;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->isDataAvailable(Lorg/apache/hc/core5/util/Timeout;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStale()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->isStale()Z

    move-result v0

    return v0
.end method

.method public onRequestReceived(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 0

    return-void
.end method

.method public onResponseSubmitted(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 0

    return-void
.end method

.method public receiveRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 8

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/http/ContentLengthStrategy;->determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J

    move-result-wide v6

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->createIncomingEntity(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;J)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p1

    invoke-interface {v3, p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-void
.end method

.method public receiveRequestHeader()Lorg/apache/hc/core5/http/ClassicHttpRequest;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->requestParser:Lorg/apache/hc/core5/http/io/HttpMessageParser;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/apache/hc/core5/http/io/HttpMessageParser;->parse(Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;)Lorg/apache/hc/core5/http/MessageHeaders;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/ClassicHttpRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->scheme:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/apache/hc/core5/http/HttpRequest;->setScheme(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->version:Lorg/apache/hc/core5/http/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->onRequestReceived(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->incrementRequestCount()V

    return-object v0
.end method

.method public sendResponseEntity(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 9

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-interface {v2, p1}, Lorg/apache/hc/core5/http/ContentLengthStrategy;->determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpEntity;->getTrailers()Lorg/apache/hc/core5/function/Supplier;

    move-result-object v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->createContentOutputStream(JLorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;Lorg/apache/hc/core5/function/Supplier;)Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    invoke-interface {v1, p1}, Lorg/apache/hc/core5/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public sendResponseHeader(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 3

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->responseWriter:Lorg/apache/hc/core5/http/io/HttpMessageWriter;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {v1, p1, v2, v0}, Lorg/apache/hc/core5/http/io/HttpMessageWriter;->write(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->onResponseSubmitted(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->incrementResponseCount()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
