.class public Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

.field private final http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

.field private final tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

.field private final versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/1.1 stream handler factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    const-string p1, "HTTP/2 stream handler factory"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    iput-object p5, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method


# virtual methods
.method public createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;
    .locals 9

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    sget-object v1, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    instance-of v2, p2, Lorg/apache/hc/core5/reactor/EndpointParameters;

    if-eqz v2, :cond_1

    move-object v5, p2

    check-cast v5, Lorg/apache/hc/core5/reactor/EndpointParameters;

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v5}, Lorg/apache/hc/core5/reactor/EndpointParameters;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    invoke-virtual {v5}, Lorg/apache/hc/core5/reactor/EndpointParameters;->getAttachment()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    invoke-virtual {v5}, Lorg/apache/hc/core5/reactor/EndpointParameters;->getAttachment()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eqz p1, :cond_2

    invoke-virtual {v5}, Lorg/apache/hc/core5/reactor/EndpointParameters;->getAttachment()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    goto :goto_1

    :cond_1
    move-object v4, p1

    :cond_2
    :goto_1
    sget-object p1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_1_1:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object p1, p1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    new-instance p2, Lorg/apache/hc/core5/http2/impl/nio/ServerHttp1UpgradeHandler;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    invoke-direct {p2, v2}, Lorg/apache/hc/core5/http2/impl/nio/ServerHttp1UpgradeHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;)V

    invoke-interface {v4, p1, p2}, Lorg/apache/hc/core5/reactor/ProtocolIOSession;->registerProtocol(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;)V

    sget-object p1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object p1, p1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    new-instance p2, Lorg/apache/hc/core5/http2/impl/nio/ServerH2UpgradeHandler;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    invoke-direct {p2, v2}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2UpgradeHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;)V

    invoke-interface {v4, p1, p2}, Lorg/apache/hc/core5/reactor/ProtocolIOSession;->registerProtocol(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;)V

    sget-object p1, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter$1;->$SwitchMap$org$apache$hc$core5$http2$HttpVersionPolicy:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/HttpProtocolNegotiator;

    const/4 p2, 0x0

    invoke-direct {p1, v4, p2}, Lorg/apache/hc/core5/http2/impl/nio/HttpProtocolNegotiator;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    iget-object v0, v1, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;->create(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    invoke-direct {p1, v4, p2}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;)V

    return-object p1
.end method

.method public bridge synthetic createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/ServerHttpProtocolNegotiationStarter;->createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/http/impl/nio/HttpConnectionEventHandler;

    move-result-object p1

    return-object p1
.end method
