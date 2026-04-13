.class Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;


# static fields
.field private static final FLOW_CTRL_LOG:LO5/a;

.field private static final FRAME_LOG:LO5/a;

.field private static final FRAME_PAYLOAD_LOG:LO5/a;

.field private static final HEADER_LOG:LO5/a;

.field private static final STREAM_LOG:LO5/a;


# instance fields
.field private final charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private final exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private final h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

.field private final http1ConnectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final http1RequestWriterFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final http1ResponseParserFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncClient;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->STREAM_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http.headers"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->HEADER_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http2.frame"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FRAME_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http2.frame.payload"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FRAME_PAYLOAD_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http2.flow"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FLOW_CTRL_LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http2/config/H2Config;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/ConnectionReuseStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz p4, :cond_1

    move-object p1, p4

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_1
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    sget-object p5, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_2
    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz p6, :cond_3

    goto :goto_3

    :cond_3
    sget-object p6, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    :goto_3
    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1ConnectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    new-instance p1, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParserFactory;

    invoke-direct {p1, p4}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParserFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1ResponseParserFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestWriterFactory;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1RequestWriterFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;

    return-void
.end method

.method public static synthetic access$000()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->HEADER_LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$100()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->STREAM_LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$200()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FRAME_LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$300()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FRAME_PAYLOAD_LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$400()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FLOW_CTRL_LOG:LO5/a;

    return-object v0
.end method


# virtual methods
.method public createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 9

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->STREAM_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->HEADER_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FRAME_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FRAME_PAYLOAD_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->FLOW_CTRL_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1ConnectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1ResponseParserFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1RequestWriterFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    new-instance v2, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1ConnectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1ResponseParserFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->http1RequestWriterFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;

    new-instance v8, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;

    invoke-direct {v8, p0, v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$1;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    new-instance v2, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    new-instance v7, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$2;

    invoke-direct {v7, p0, v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$2;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;Ljava/lang/String;)V

    invoke-direct/range {v2 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    :goto_1
    sget-object v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_1_1:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    new-instance v3, Lorg/apache/hc/core5/http2/impl/nio/ClientHttp1UpgradeHandler;

    invoke-direct {v3, v1}, Lorg/apache/hc/core5/http2/impl/nio/ClientHttp1UpgradeHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;)V

    invoke-interface {p1, v0, v3}, Lorg/apache/hc/core5/reactor/ProtocolIOSession;->registerProtocol(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;)V

    sget-object v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    new-instance v3, Lorg/apache/hc/core5/http2/impl/nio/ClientH2UpgradeHandler;

    invoke-direct {v3, v2}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2UpgradeHandler;-><init>(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;)V

    invoke-interface {p1, v0, v3}, Lorg/apache/hc/core5/reactor/ProtocolIOSession;->registerProtocol(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;)V

    instance-of v0, p2, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    goto :goto_2

    :cond_2
    sget-object p2, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_2
    sget-object v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter$3;->$SwitchMap$org$apache$hc$core5$http2$HttpVersionPolicy:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    new-instance p2, Lorg/apache/hc/core5/http2/impl/nio/HttpProtocolNegotiator;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/HttpProtocolNegotiator;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-object p2

    :cond_3
    new-instance p2, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1IOEventHandler;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->create(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexer;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1IOEventHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexer;)V

    return-object p2

    :cond_4
    new-instance p2, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v2, v0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Z)V

    return-object p2
.end method
