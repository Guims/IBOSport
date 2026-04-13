.class public Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
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

.field private dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

.field private poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

.field private schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

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

.field private tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->lambda$setDefaultTlsConfig$1(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->lambda$setDefaultConnectionConfig$0(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$setDefaultConnectionConfig$0(Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultTlsConfig$1(Lorg/apache/hc/client5/http/config/TlsConfig;Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;
    .locals 8

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/core5/util/ReflectionUtils;->determineJRELevel()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->systemProperties:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;->getSystemDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;->getDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->systemProperties:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;->getSystemDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;->getDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/URIScheme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;Lorg/apache/hc/core5/pool/PoolReusePolicy;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->setTlsConfigResolver(Lorg/apache/hc/core5/function/Resolver;)V

    iget v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->maxConnTotal:I

    if-lez v0, :cond_4

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->setMaxTotal(I)V

    :cond_4
    iget v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->maxConnPerRoute:I

    if-lez v0, :cond_5

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->setDefaultMaxPerRoute(I)V

    :cond_5
    return-object v1
.end method

.method public final setConnPoolPolicy(Lorg/apache/hc/core5/pool/PoolReusePolicy;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->poolReusePolicy:Lorg/apache/hc/core5/pool/PoolReusePolicy;

    return-object p0
.end method

.method public final setConnectionConfigResolver(Lorg/apache/hc/core5/function/Resolver;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/config/ConnectionConfig;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setConnectionTimeToLive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->custom()Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setTimeToLive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->build()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;

    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/nio/a;-><init>(Lorg/apache/hc/client5/http/config/ConnectionConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->connectionConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setDefaultTlsConfig(Lorg/apache/hc/client5/http/config/TlsConfig;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/nio/b;-><init>(Lorg/apache/hc/client5/http/config/TlsConfig;I)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setDnsResolver(Lorg/apache/hc/client5/http/DnsResolver;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->maxConnPerRoute:I

    return-object p0
.end method

.method public final setMaxConnTotal(I)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->maxConnTotal:I

    return-object p0
.end method

.method public final setPoolConcurrencyPolicy(Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->poolConcurrencyPolicy:Lorg/apache/hc/core5/pool/PoolConcurrencyPolicy;

    return-object p0
.end method

.method public final setSchemePortResolver(Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-object p0
.end method

.method public final setTlsConfigResolver(Lorg/apache/hc/core5/function/Resolver;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/config/TlsConfig;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->tlsConfigResolver:Lorg/apache/hc/core5/function/Resolver;

    return-object p0
.end method

.method public final setTlsStrategy(Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    return-object p0
.end method

.method public final setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->custom()Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->build()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->setDefaultConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;

    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->systemProperties:Z

    return-object p0
.end method
