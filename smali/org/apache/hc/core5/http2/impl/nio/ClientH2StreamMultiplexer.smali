.class public Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;
.super Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http2/config/H2Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
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

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http2/frame/FrameFactory;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http2/config/H2Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;",
            ")V"
        }
    .end annotation

    sget-object v3, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->ODD:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v5, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    iput-object p4, v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-void
.end method


# virtual methods
.method public acceptHeaderFrame()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v2, "Illegal HEADERS frame"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0
.end method

.method public acceptPushFrame()V
    .locals 0

    return-void
.end method

.method public acceptPushRequest()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v2, "Illegal attempt to push a response"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0
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
    .locals 7

    instance-of v0, p1, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->getExchangeHandler()Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->getContext()Lorg/apache/hc/core5/http/protocol/HttpContext;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object v6

    const-string p1, "http.ssl-session"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-virtual {v6, p1, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "http.connection-endpoint"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v1

    invoke-virtual {v6, p1, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;

    if-eqz p1, :cond_0

    :goto_0
    move-object v5, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    return-object v0

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string p3, "Unexpected executable command"

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

    const-string v0, "http.ssl-session"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http.connection-endpoint"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;

    if-eqz p4, :cond_0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    return-object v0
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
