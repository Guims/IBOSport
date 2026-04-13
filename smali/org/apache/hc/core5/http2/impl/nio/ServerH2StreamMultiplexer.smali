.class public Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;
.super Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/config/H2Config;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http2/config/H2Config;",
            ")V"
        }
    .end annotation

    sget-object v2, Lorg/apache/hc/core5/http2/frame/DefaultFrameFactory;->INSTANCE:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http2/frame/FrameFactory;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http2/config/H2Config;",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;",
            ")V"
        }
    .end annotation

    sget-object v3, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->EVEN:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    const-string p1, "Handler factory"

    invoke-static {p4, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p1, v0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-void
.end method


# virtual methods
.method public acceptHeaderFrame()V
    .locals 0

    return-void
.end method

.method public acceptPushFrame()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v2, "Push not supported"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0
.end method

.method public acceptPushRequest()V
    .locals 0

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->close()V

    return-void
.end method

.method public bridge synthetic close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public createLocallyInitiatedStream(Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;
    .locals 0

    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string p3, "Illegal attempt to execute a request"

    invoke-direct {p1, p2, p3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1
.end method

.method public createRemotelyInitiatedStream(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/HandlerFactory;)Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->create()Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object v5

    const-string p4, "http.ssl-session"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {v5, p4, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "http.connection-endpoint"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    invoke-virtual {v5, p4, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamHandler;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexer;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    return-object v0
.end method

.method public decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/hc/core5/http2/hpack/HeaderListConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/hc/core5/http/RequestHeaderFieldsTooLargeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http/RequestHeaderFieldsTooLargeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-static {v0}, Lp/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->appendState(Ljava/lang/StringBuilder;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
