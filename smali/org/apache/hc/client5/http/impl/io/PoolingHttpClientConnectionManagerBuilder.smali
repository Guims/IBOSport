.class public Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
.super Ljava/lang/Object;


# instance fields
.field private connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

.field private poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

.field private schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

.field private socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/core5/http/io/SocketConfig;",
            ">;"
        }
    .end annotation
.end field

.field private sslSocketFactory:Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;

.field private systemProperties:Z

.field private tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/TlsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->lambda$setDefaultConnectionConfig$1(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->lambda$setDefaultTlsConfig$2(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->lambda$setDefaultSocketConfig$0(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$setDefaultConnectionConfig$1(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultSocketConfig$0(Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/core5/http/io/SocketConfig;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultTlsConfig$2(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;
    .locals 8

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v2, v2, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-static {}, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v2, v2, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->sslSocketFactory:Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->systemProperties:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->getSystemSocketFactory()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Registry;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->setSocketConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->setTlsConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V

    iget v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->maxConnTotal:I

    if-lez v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    :cond_2
    iget v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->maxConnPerRoute:I

    if-lez v1, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    :cond_3
    return-object v0
.end method

.method public final setConnPoolPolicy(Lorg/apache/hc/core5/pool/PoolReusePolicy;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    return-object p0
.end method

.method public final setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setConnectionFactory(Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    return-object p0
.end method

.method public final setConnectionTimeToLive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->custom()Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setTimeToLive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->build()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;

    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/c;-><init>(Lorg/apache/hc/client5/http/config/ConnectionConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setDefaultSocketConfig(Lorg/apache/hc/core5/http/io/SocketConfig;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/b;-><init>(Lorg/apache/hc/core5/http/io/SocketConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setDefaultTlsConfig(Lorg/apache/hc/client5/http/config/TlsConfig;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/io/a;-><init>(Lorg/apache/hc/client5/http/config/TlsConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setDnsResolver(Lorg/apache/hc/client5/http/DnsResolver;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->maxConnPerRoute:I

    return-object p0
.end method

.method public final setMaxConnTotal(I)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->maxConnTotal:I

    return-object p0
.end method

.method public final setPoolConcurrencyPolicy(Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    return-object p0
.end method

.method public final setSSLSocketFactory(Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->sslSocketFactory:Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;

    return-object p0
.end method

.method public final setSchemePortResolver(Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-object p0
.end method

.method public final setSocketConfigResolver(Lorg/apache/hc/core5/function/Resolver;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/core5/http/io/SocketConfig;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->socketConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setTlsConfigResolver(Lorg/apache/hc/core5/function/Resolver;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/TlsConfig;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->custom()Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->build()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;

    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->systemProperties:Z

    return-object p0
.end method
