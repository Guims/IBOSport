.class public Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;
.super Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpClientConnection;


# instance fields
.field private volatile consistent:Z

.field private final incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final requestWriter:Lorg/apache/hc/core5/http/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageWriter<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

.field private final responseParser:Lorg/apache/hc/core5/http/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageParser<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;)V

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    sget-object p7, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;

    :goto_0
    invoke-interface {p7}, Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;->create()Lorg/apache/hc/core5/http/io/HttpMessageWriter;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->requestWriter:Lorg/apache/hc/core5/http/io/HttpMessageWriter;

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    sget-object p8, Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpResponseParserFactory;

    :goto_1
    invoke-interface {p8, p1}, Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;->create(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/io/HttpMessageParser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->responseParser:Lorg/apache/hc/core5/http/io/HttpMessageParser;

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    sget-object p4, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_2
    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    if-eqz p5, :cond_3

    goto :goto_3

    :cond_3
    sget-object p5, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_3
    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    sget-object p6, Lorg/apache/hc/core5/http/impl/io/NoResponseOutOfOrderStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/NoResponseOutOfOrderStrategy;

    :goto_4
    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->consistent:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;)Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    return-object p0
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

.method public isConsistent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->consistent:Z

    return v0
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

.method public onRequestSubmitted(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 0

    return-void
.end method

.method public onResponseReceived(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 0

    return-void
.end method

.method public receiveResponseEntity(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 8

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/http/ContentLengthStrategy;->determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J

    move-result-wide v6

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

.method public receiveResponseHeader()Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->responseParser:Lorg/apache/hc/core5/http/io/HttpMessageParser;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->inBuffer:Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/apache/hc/core5/http/io/HttpMessageParser;->parse(Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;)Lorg/apache/hc/core5/http/MessageHeaders;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/ClassicHttpResponse;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    throw v0

    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->version:Lorg/apache/hc/core5/http/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->onResponseReceived(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->incrementResponseCount()V

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v2, "Invalid response: "

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/apache/hc/core5/http/NoHttpResponseException;

    const-string v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 9

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v3, p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-interface {v2, p1}, Lorg/apache/hc/core5/http/ContentLengthStrategy;->determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J

    move-result-wide v4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    new-instance v7, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;

    invoke-direct {v7, p0, v0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection$1;-><init>(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;Lorg/apache/hc/core5/http/impl/io/SocketHolder;Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpEntity;->getTrailers()Lorg/apache/hc/core5/function/Supplier;

    move-result-object v8
    :try_end_0
    .catch Lorg/apache/hc/core5/http/impl/io/ResponseOutOfOrderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->createContentOutputStream(JLorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;Lorg/apache/hc/core5/function/Supplier;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/hc/core5/http/impl/io/ResponseOutOfOrderException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {v1, p1}, Lorg/apache/hc/core5/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Lorg/apache/hc/core5/http/impl/io/ResponseOutOfOrderException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_6
    .catch Lorg/apache/hc/core5/http/impl/io/ResponseOutOfOrderException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-object v3, p0

    :catch_1
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-lez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, v3, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->consistent:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v3, p0

    new-instance p1, Lorg/apache/hc/core5/http/LengthRequiredException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/LengthRequiredException;-><init>()V

    throw p1
.end method

.method public sendRequestHeader(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 3

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->requestWriter:Lorg/apache/hc/core5/http/io/HttpMessageWriter;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {v1, p1, v2, v0}, Lorg/apache/hc/core5/http/io/HttpMessageWriter;->write(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->onRequestSubmitted(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->incrementRequestCount()V

    return-void
.end method

.method public bridge synthetic setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public terminateRequest(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 11

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->ensureOpen()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v5, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/hc/core5/http/message/BasicTokenIterator;

    const-string v3, "Connection"

    invoke-interface {p1, v3}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/hc/core5/http/message/BasicTokenIterator;-><init>(Ljava/util/Iterator;)V

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "close"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->consistent:Z

    return-void

    :cond_2
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-interface {v2, p1}, Lorg/apache/hc/core5/http/ContentLengthStrategy;->determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J

    move-result-wide v6

    const-wide/16 v2, -0x1

    cmp-long p1, v6, v2

    if-nez p1, :cond_3

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpEntity;->getTrailers()Lorg/apache/hc/core5/function/Supplier;

    move-result-object v10

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->createContentOutputStream(JLorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;Lorg/apache/hc/core5/function/Supplier;)Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_3
    move-object v5, p0

    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    if-ltz p1, :cond_6

    const-wide/16 v2, 0x400

    cmp-long p1, v6, v2

    if-gtz p1, :cond_6

    iget-object v8, v5, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->outbuffer:Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->createContentOutputStream(JLorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;Lorg/apache/hc/core5/function/Supplier;)Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    invoke-interface {v1, p1}, Lorg/apache/hc/core5/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_4
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

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2

    :cond_6
    iput-boolean v4, v5, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->consistent:Z

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/BHttpConnectionBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
