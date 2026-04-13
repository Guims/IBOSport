.class public Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
.super Ljava/lang/Object;


# instance fields
.field private charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

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

.field private strictALPNHandshake:Z

.field private tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

.field private uriPatternType:Lorg/apache/hc/core5/http/protocol/UriPatternType;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->pushConsumerList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->lambda$create$0(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object p0

    return-object p0
.end method

.method public static bootstrap()Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$create$0(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 1

    new-instance p3, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->strictALPNHandshake:Z

    invoke-direct {p3, p2, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;Z)V

    return-object p3
.end method


# virtual methods
.method public create()Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;
    .locals 14

    new-instance v0, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->uriPatternType:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;-><init>(Lorg/apache/hc/core5/http/protocol/UriPatternType;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->pushConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    iget-object v3, v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->hostname:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->uriPattern:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;->handler:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v2}, Lorg/apache/hc/core5/http/protocol/RequestHandlerRegistry;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz v1, :cond_1

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_1
    invoke-static {}, Lorg/apache/hc/core5/http2/impl/H2Processors;->client()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v1

    goto :goto_1

    :goto_2
    new-instance v7, Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;

    invoke-direct {v7, v0}, Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;-><init>(Lorg/apache/hc/core5/http/HttpRequestMapper;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz v0, :cond_2

    :goto_3
    move-object v8, v0

    goto :goto_4

    :cond_2
    sget-object v0, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    goto :goto_3

    :goto_4
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz v0, :cond_3

    :goto_5
    move-object v9, v0

    goto :goto_6

    :cond_3
    sget-object v0, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    goto :goto_5

    :goto_6
    iget-object v10, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    new-instance v6, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;

    iget-object v7, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    new-instance v8, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/b;

    invoke-direct {v8, p0, v5}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/b;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;)V

    iget-object v9, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    iget-object v10, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    iget-object v11, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    sget-object v12, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz v0, :cond_4

    :goto_7
    move-object v13, v0

    goto :goto_8

    :cond_4
    new-instance v0, Lorg/apache/hc/core5/http2/ssl/H2ClientTlsStrategy;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/ssl/H2ClientTlsStrategy;-><init>()V

    goto :goto_7

    :goto_8
    invoke-direct/range {v6 .. v13}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;-><init>(Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Resolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V

    return-object v6
.end method

.method public final register(Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;"
        }
    .end annotation

    const-string v0, "URI pattern"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->pushConsumerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final registerVirtual(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;"
        }
    .end annotation

    const-string v0, "Hostname"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "URI pattern"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Supplier"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->pushConsumerList:Ljava/util/List;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/HandlerEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setCharCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    return-object p0
.end method

.method public final setExceptionCallback(Lorg/apache/hc/core5/function/Callback;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method

.method public final setH2Config(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    return-object p0
.end method

.method public final setHttpProcessor(Lorg/apache/hc/core5/http/protocol/HttpProcessor;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setIOReactorConfig(Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->ioReactorConfig:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    return-object p0
.end method

.method public final setIOSessionDecorator(Lorg/apache/hc/core5/function/Decorator;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->ioSessionDecorator:Lorg/apache/hc/core5/function/Decorator;

    return-object p0
.end method

.method public final setIOSessionListener(Lorg/apache/hc/core5/reactor/IOSessionListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->sessionListener:Lorg/apache/hc/core5/reactor/IOSessionListener;

    return-object p0
.end method

.method public final setStreamListener(Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    return-object p0
.end method

.method public final setStrictALPNHandshake(Z)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->strictALPNHandshake:Z

    return-object p0
.end method

.method public final setTlsStrategy(Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-object p0
.end method

.method public final setUriPatternType(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequesterBootstrap;->uriPatternType:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    return-object p0
.end method
