.class public Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
.super Ljava/lang/Object;


# instance fields
.field private connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ConnPoolListener<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private connectFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private defaultMaxPerRoute:I

.field private httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private maxTotal:I

.field private poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

.field private poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

.field private socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

.field private sslSessionVerifier:Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;

.field private sslSetupHandler:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljavax/net/ssl/SSLParameters;",
            ">;"
        }
    .end annotation
.end field

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

.field private timeToLive:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootstrap()Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public create()Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;
    .locals 11

    new-instance v1, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    sget-object v0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->DEFAULT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    :goto_0
    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;-><init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    sget-object v0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap$1;->$SwitchMap$org$apache$hc$core5$pool$PoolConcurrencyPolicy:[I

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;->STRICT:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    const/16 v3, 0x14

    if-eq v0, v2, :cond_4

    new-instance v4, Lorg/apache/hc/core5/pool/StrictConnPool;

    iget v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->defaultMaxPerRoute:I

    if-lez v0, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->maxTotal:I

    if-lez v0, :cond_3

    :goto_3
    move v6, v0

    goto :goto_4

    :cond_3
    const/16 v0, 0x32

    goto :goto_3

    :goto_4
    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->timeToLive:Lorg/apache/hc/core5/util/Timeout;

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    new-instance v9, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;

    invoke-direct {v9}, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;-><init>()V

    iget-object v10, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    invoke-direct/range {v4 .. v10}, Lorg/apache/hc/core5/pool/StrictConnPool;-><init>(IILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    move-object v3, v4

    goto :goto_6

    :cond_4
    new-instance v5, Lorg/apache/hc/core5/pool/LaxConnPool;

    iget v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->defaultMaxPerRoute:I

    if-lez v0, :cond_5

    move v6, v0

    goto :goto_5

    :cond_5
    move v6, v3

    :goto_5
    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->timeToLive:Lorg/apache/hc/core5/util/Timeout;

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    new-instance v9, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;

    invoke-direct {v9}, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;-><init>()V

    iget-object v10, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/pool/LaxConnPool;-><init>(ILorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/pool/ConnPoolListener;)V

    move-object v3, v5

    :goto_6
    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz v2, :cond_6

    goto :goto_7

    :cond_6
    invoke-static {}, Lorg/apache/hc/core5/http/impl/HttpProcessors;->client()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v2

    :goto_7
    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    if-eqz v4, :cond_7

    goto :goto_8

    :cond_7
    sget-object v4, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    :goto_8
    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->connectFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    if-eqz v5, :cond_8

    goto :goto_9

    :cond_8
    new-instance v5, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;

    sget-object v6, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    sget-object v7, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-direct {v5, v6, v7}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V

    :goto_9
    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    new-instance v7, Lorg/apache/hc/core5/http/io/ssl/DefaultTlsSetupHandler;

    invoke-direct {v7}, Lorg/apache/hc/core5/http/io/ssl/DefaultTlsSetupHandler;-><init>()V

    :goto_a
    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->sslSessionVerifier:Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;

    sget-object v9, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    invoke-direct/range {v0 .. v9}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;-><init>(Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Ljavax/net/ssl/SSLSocketFactory;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/function/Resolver;)V

    return-object v0
.end method

.method public final setConnPoolListener(Lorg/apache/hc/core5/pool/ConnPoolListener;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ConnPoolListener<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->connPoolListener:Lorg/apache/hc/core5/pool/ConnPoolListener;

    return-object p0
.end method

.method public final setConnectionFactory(Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->connectFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setDefaultMaxPerRoute(I)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->defaultMaxPerRoute:I

    return-object p0
.end method

.method public final setHttpProcessor(Lorg/apache/hc/core5/http/protocol/HttpProcessor;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setMaxTotal(I)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->maxTotal:I

    return-object p0
.end method

.method public final setPoolConcurrencyPolicy(Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0
    .annotation build Lorg/apache/hc/core5/annotation/Experimental;
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    return-object p0
.end method

.method public final setPoolReusePolicy(Lorg/apache/hc/core5/pool/PoolReusePolicy;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    return-object p0
.end method

.method public final setSocketConfig(Lorg/apache/hc/core5/http/io/SocketConfig;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    return-object p0
.end method

.method public final setSslContext(Ljavax/net/ssl/SSLContext;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final setSslSessionVerifier(Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->sslSessionVerifier:Lorg/apache/hc/core5/http/io/ssl/SSLSessionVerifier;

    return-object p0
.end method

.method public final setSslSetupHandler(Lorg/apache/hc/core5/function/Callback;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljavax/net/ssl/SSLParameters;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method

.method public final setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final setStreamListener(Lorg/apache/hc/core5/http/impl/Http1StreamListener;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-object p0
.end method

.method public final setTimeToLive(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequesterBootstrap;->timeToLive:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method
