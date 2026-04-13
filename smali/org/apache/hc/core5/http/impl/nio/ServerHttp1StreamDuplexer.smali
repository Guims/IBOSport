.class public Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;
.super Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer<",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        "Lorg/apache/hc/core5/http/HttpResponse;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private volatile incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

.field private volatile outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

.field private final outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final pipeline:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParser;Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/ConnectionReuseStrategy;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParser<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriter<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/impl/Http1StreamListener;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/nio/NHttpMessageParser;Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;)V

    const-string p1, "HTTP processor"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    const-string p1, "Exchange handler factory"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->scheme:Ljava/lang/String;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p5, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz p7, :cond_1

    move-object/from16 p1, p7

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    :goto_1
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iput-object v8, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    new-instance p1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$1;

    invoke-direct {p1, p0, v8}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$1;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    return-void
.end method


# virtual methods
.method public appendState(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->appendState(Ljava/lang/StringBuilder;)V

    const-string v0, ", incoming=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->appendState(Ljava/lang/StringBuilder;)V

    :cond_0
    const-string v0, "], outgoing=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->appendState(Ljava/lang/StringBuilder;)V

    :cond_1
    const-string v0, "], pipeline="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->close()V

    return-void
.end method

.method public bridge synthetic close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public consumeData(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    const-string v1, "Request stream handler"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->consumeData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic consumeHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->consumeHeader(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V

    return-void
.end method

.method public consumeHeader(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lorg/apache/hc/core5/http/impl/Http1StreamListener;->onRequestHead(Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/HttpRequest;)V

    :cond_0
    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->create()Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object v6

    const-string v0, "http.ssl-session"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http.connection-endpoint"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-nez v0, :cond_1

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    new-instance v2, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$1;)V

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->scheme:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/HttpRequest;->setScheme(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->consumeHeader(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    return-void
.end method

.method public createContentDecoder(JLjava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)Lorg/apache/hc/core5/http/nio/ContentDecoder;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;

    move-wide v5, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;J)V

    return-object v1

    :cond_0
    move-wide v5, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    const-wide/16 p1, -0x1

    cmp-long p1, v5, p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-direct {p1, v2, v3, p2, v4}, Lorg/apache/hc/core5/http/impl/nio/ChunkDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createContentEncoder(JLjava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)Lorg/apache/hc/core5/http/nio/ContentEncoder;
    .locals 8

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/Http1Config;->getChunkSizeHint()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/Http1Config;->getChunkSizeHint()I

    move-result v0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x800

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;

    move-wide v5, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;JI)V

    return-object v1

    :cond_1
    move-wide v5, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    const-wide/16 p1, -0x1

    cmp-long p1, v5, p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/hc/core5/http/impl/nio/ChunkEncoder;

    invoke-direct {p1, v2, v3, v4, v7}, Lorg/apache/hc/core5/http/impl/nio/ChunkEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;I)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/impl/nio/IdentityEncoder;

    invoke-direct {p1, v2, v3, v4, v7}, Lorg/apache/hc/core5/http/impl/nio/IdentityEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;I)V

    return-object p1
.end method

.method public dataEnd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    const-string v1, "Request stream handler"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->dataEnd(Ljava/util/List;)V

    return-void
.end method

.method public disconnected()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    new-instance v2, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v2}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->failed(Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    new-instance v2, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v2}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->failed(Ljava/lang/Exception;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_4

    new-instance v1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->failed(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public execute(Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;)V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleIncomingMessage(Lorg/apache/hc/core5/http/HttpMessage;)Z
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->handleIncomingMessage(Lorg/apache/hc/core5/http/HttpRequest;)Z

    move-result p1

    return p1
.end method

.method public handleIncomingMessage(Lorg/apache/hc/core5/http/HttpRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handleOutgoingMessage(Lorg/apache/hc/core5/http/HttpMessage;)Z
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponse;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->handleOutgoingMessage(Lorg/apache/hc/core5/http/HttpResponse;)Z

    move-result p1

    return p1
.end method

.method public handleOutgoingMessage(Lorg/apache/hc/core5/http/HttpResponse;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public handleTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inputEnd()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outputIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->inputIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->shutdownSession(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_2
    return-void
.end method

.method public inputIdle()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputReady()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->isOutputReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public outputEnd()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->isResponseFinal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->keepAlive()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/apache/hc/core5/http/impl/Http1StreamListener;->onExchangeComplete(Lorg/apache/hc/core5/http/HttpConnection;Z)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->activateChannel()V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->isOutputReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->produceOutput()V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outputIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->inputIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->shutdownSession(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_4
    return-void
.end method

.method public outputIdle()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parseMessageHead(Z)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->parseMessageHead(Z)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public parseMessageHead(Z)Lorg/apache/hc/core5/http/HttpRequest;
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->parseMessageHead(Z)Lorg/apache/hc/core5/http/HttpMessage;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->terminateExchange(Lorg/apache/hc/core5/http/HttpException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public produceOutput()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->produceOutput()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public terminate(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->failed(Ljava/lang/Exception;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->failed(Ljava/lang/Exception;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->failed(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->releaseResources()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public terminateExchange(Lorg/apache/hc/core5/http/HttpException;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->suspendSessionInput()V

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->create()Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object v5

    const-string v0, "http.ssl-session"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http.connection-endpoint"

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outgoing:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-direct {v1, v2, v6}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$DelayedOutputChannel;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer$1;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->pipeline:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->terminateExchange(Lorg/apache/hc/core5/http/HttpException;)V

    iput-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->appendState(Ljava/lang/StringBuilder;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    const-string v1, "Request stream handler"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->incoming:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method

.method public bridge synthetic updateInputMetrics(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->updateInputMetrics(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V

    return-void
.end method

.method public updateInputMetrics(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V
    .locals 0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementRequestCount()V

    return-void
.end method

.method public bridge synthetic updateOutputMetrics(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponse;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;->updateOutputMetrics(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V

    return-void
.end method

.method public updateOutputMetrics(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementResponseCount()V

    :cond_0
    return-void
.end method
