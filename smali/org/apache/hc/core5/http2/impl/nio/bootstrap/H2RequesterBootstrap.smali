.class public Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
.super Ljava/lang/Object;


# instance fields
.field private charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ConnPoolListener<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private defaultMaxPerRoute:I

.field private exceptionCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

.field private handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private http1StreamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

.field private httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

.field private ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field private maxTotal:I

.field private poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

.field private poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

.field private final pushConsumerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

.field private streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

.field private timeToLive:Lorg/apache/hc/core5/util/TimeValue;

.field private tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

.field private uriPatternType:Lorg/apache/hc/core5/http/protocol/UriPatternType;

.field private versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->pushConsumerList:Ljava/util/List;

    return-void
.end method

.method public static bootstrap()Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public create()Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap$1;->$SwitchMap$org$apache$hc$core5$pool$PoolConcurrencyPolicy:[I

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;->STRICT:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x14

    if-eq v1, v2, :cond_3

    new-instance v4, Lorg/apache/hc/core5/pool/StrictConnPool;

    iget v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->defaultMaxPerRoute:I

    if-lez v1, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->maxTotal:I

    if-lez v1, :cond_2

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_2
    const/16 v1, 0x32

    goto :goto_2

    :goto_3
    iget-object v7, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    iget-object v8, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    new-instance v9, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;

    invoke-direct {v9}, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;-><init>()V

    iget-object v10, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    invoke-direct/range {v4 .. v10}, Lorg/apache/hc/core5/pool/StrictConnPool;-><init>(IILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    move-object v13, v4

    goto :goto_5

    :cond_3
    new-instance v5, Lorg/apache/hc/core5/pool/LaxConnPool;

    iget v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->defaultMaxPerRoute:I

    if-lez v1, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    iget-object v7, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    iget-object v8, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    new-instance v9, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;

    invoke-direct {v9}, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;-><init>()V

    iget-object v10, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/pool/LaxConnPool;-><init>(ILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    move-object v13, v5

    :goto_5
    new-instance v1, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->uriPatternType:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;-><init>(Lorg/apache/hc/core5/http/protocol/UriPatternType;)V

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->pushConsumerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    iget-object v4, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->hostname:Ljava/lang/String;

    iget-object v5, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->uriPattern:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->handler:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v3}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    new-instance v6, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz v2, :cond_6

    :goto_7
    move-object v7, v2

    goto :goto_8

    :cond_6
    invoke-static {}, Lorg/apache/hc/core5/http2/impl/H2Processors;->client()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v2

    goto :goto_7

    :goto_8
    new-instance v8, Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;

    invoke-direct {v8, v1}, Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;-><init>(Lorg/apache/hc/core5/http/HttpRequestMapper;)V

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz v1, :cond_7

    :goto_9
    move-object v9, v1

    goto :goto_a

    :cond_7
    sget-object v1, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    goto :goto_9

    :goto_a
    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v1, :cond_8

    :goto_b
    move-object v10, v1

    goto :goto_c

    :cond_8
    sget-object v1, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    goto :goto_b

    :goto_c
    iget-object v11, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    invoke-direct/range {v6 .. v11}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz v1, :cond_9

    :goto_d
    move-object v10, v1

    goto :goto_e

    :cond_9
    new-instance v1, Lorg/apache/hc/core5/http2/ssl/H2ClientTlsStrategy;

    invoke-direct {v1}, Lorg/apache/hc/core5/http2/ssl/H2ClientTlsStrategy;-><init>()V

    goto :goto_d

    :goto_e
    new-instance v7, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz v1, :cond_a

    :goto_f
    move-object v15, v1

    goto :goto_10

    :cond_a
    invoke-static {}, Lorg/apache/hc/core5/http/impl/HttpProcessors;->client()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v1

    goto :goto_f

    :goto_10
    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz v1, :cond_b

    :goto_11
    move-object/from16 v16, v1

    goto :goto_12

    :cond_b
    sget-object v1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    goto :goto_11

    :goto_12
    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v1, :cond_c

    :goto_13
    move-object/from16 v17, v1

    goto :goto_14

    :cond_c
    sget-object v1, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    goto :goto_13

    :goto_14
    sget-object v18, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParserFactory;

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParserFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;)V

    sget-object v20, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestWriterFactory;

    sget-object v21, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->http1StreamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    move-object/from16 v22, v21

    move-object/from16 v19, v1

    move-object/from16 v23, v2

    move-object v14, v7

    invoke-direct/range {v14 .. v23}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    new-instance v9, Lorg/apache/hc/core5/http2/impl/nio/ClientHttpProtocolNegotiationStarter;

    iget-object v1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eqz v1, :cond_d

    goto :goto_15

    :cond_d
    sget-object v1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_15
    iget-object v11, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    move-object v8, v6

    move-object v6, v9

    move-object v9, v1

    invoke-direct/range {v6 .. v11}, Lorg/apache/hc/core5/http2/impl/nio/ClientHttpProtocolNegotiationStarter;-><init>(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;

    iget-object v2, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eqz v2, :cond_e

    :goto_16
    move-object v7, v2

    goto :goto_17

    :cond_e
    sget-object v2, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    goto :goto_16

    :goto_17
    iget-object v8, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    move-object v14, v10

    iget-object v10, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iget-object v11, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    iget-object v12, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    iget-object v15, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    move-object v9, v6

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;-><init>(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V

    return-object v6
.end method

.method public final register(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;"
        }
    .end annotation

    const-string v0, "URI pattern"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->pushConsumerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;"
        }
    .end annotation

    const-string v0, "Hostname"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "URI pattern"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->pushConsumerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setCharCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public final setConnPoolListener(Lorg/apache/hc/core5/pool/ConnPoolListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ConnPoolListener<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    return-object p0
.end method

.method public final setDefaultMaxPerRoute(I)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->defaultMaxPerRoute:I

    return-object p0
.end method

.method public final setExceptionCallback(Lorg/apache/hc/core5/function/Callback;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method

.method public final setH2Config(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    return-object p0
.end method

.method public final setHandshakeTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public final setHttp1Config(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    return-object p0
.end method

.method public final setHttpProcessor(Lorg/apache/hc/core5/http/protocol/HttpProcessor;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setIOReactorConfig(Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    return-object p0
.end method

.method public final setIOSessionDecorator(Lorg/apache/hc/core5/function/Decorator;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    return-object p0
.end method

.method public final setIOSessionListener(Lorg/apache/hc/core5/reactor/IOSessionListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    return-object p0
.end method

.method public final setMaxTotal(I)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->maxTotal:I

    return-object p0
.end method

.method public final setPoolConcurrencyPolicy(Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0
    .annotation build Lorg/apache/hc/core5/annotation/Experimental;
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    return-object p0
.end method

.method public final setPoolReusePolicy(Lorg/apache/hc/core5/pool/PoolReusePolicy;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    return-object p0
.end method

.method public final setStreamListener(Lorg/apache/hc/core5/http/impl/Http1StreamListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->http1StreamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-object p0
.end method

.method public final setStreamListener(Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    return-object p0
.end method

.method public final setTimeToLive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public final setTlsStrategy(Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-object p0
.end method

.method public final setUriPatternType(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->uriPatternType:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    return-object p0
.end method

.method public final setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2RequesterBootstrap;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-object p0
.end method
