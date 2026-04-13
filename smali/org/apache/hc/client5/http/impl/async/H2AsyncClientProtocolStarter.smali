.class Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;


# static fields
.field private static final FLOW_CTRL_LOG:LO5/a;

.field private static final FRAME_LOG:LO5/a;

.field private static final FRAME_PAYLOAD_LOG:LO5/a;

.field private static final HEADER_LOG:LO5/a;


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

.field private final h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.hc.client5.http.headers"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->HEADER_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http2.frame"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FRAME_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http2.frame.payload"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FRAME_PAYLOAD_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http2.flow"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FLOW_CTRL_LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http2/config/H2Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_1
    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-void
.end method

.method public static synthetic access$000()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FRAME_LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$100()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FRAME_PAYLOAD_LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$200()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FLOW_CTRL_LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$300()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->HEADER_LOG:LO5/a;

    return-object v0
.end method


# virtual methods
.method public createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 7

    sget-object p2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->HEADER_LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FRAME_LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FRAME_PAYLOAD_LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->FLOW_CTRL_LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    new-instance p2, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;

    invoke-direct {p2, p1, v1, v0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Z)V

    return-object p2

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    new-instance v6, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;

    invoke-direct {v6, p0, p2}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter$1;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;Ljava/lang/String;)V

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    new-instance p2, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;

    invoke-direct {p2, p1, v1, v0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Z)V

    return-object p2
.end method
