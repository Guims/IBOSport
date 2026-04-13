.class public final Lorg/apache/hc/client5/http/impl/classic/HttpClients;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->create()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->build()Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createMinimal()Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;

    new-instance v1, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;-><init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;)V

    return-object v0
.end method

.method public static createMinimal(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;)Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;-><init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;)V

    return-object v0
.end method

.method public static createSystem()Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->create()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->useSystemProperties()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->build()Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->create()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;

    move-result-object v0

    return-object v0
.end method
