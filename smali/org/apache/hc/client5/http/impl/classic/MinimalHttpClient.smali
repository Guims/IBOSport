.class public Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;
.super Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;)V
    .locals 7

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;-><init>()V

    const-string v0, "HTTP connection manager"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    sget-object v0, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;-><init>(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    new-instance p1, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;

    new-instance v0, Lorg/apache/hc/core5/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/RequestContent;-><init>()V

    new-instance v1, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;-><init>()V

    new-instance v2, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;

    invoke-direct {v2}, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;-><init>()V

    new-instance v3, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    const-string v4, "org.apache.hc.client5"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "Apache-HttpClient"

    invoke-static {v6, v4, v5}, Lorg/apache/hc/core5/util/VersionInfo;->getSoftwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-direct {p1, v4}, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;-><init>([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
    .locals 7

    const-string v0, "Target host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/hc/core5/http/HttpRequest;->setScheme(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V

    invoke-interface {p2, v0}, Lorg/apache/hc/core5/http/HttpRequest;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p3, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;

    invoke-direct {p3}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;-><init>()V

    :goto_0
    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p3

    instance-of v0, p2, Lorg/apache/hc/client5/http/config/Configurable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lorg/apache/hc/client5/http/config/Configurable;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/config/Configurable;->getConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p3, v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V

    :cond_4
    new-instance v0, Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-static {p1, v2}, Lorg/apache/hc/client5/http/routing/RoutingSupport;->normalize(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/ExecSupport;->getNextExchangeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setExchangeId(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;

    sget-object v3, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->LOG:LO5/a;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    instance-of v6, p2, Lorg/apache/hc/core5/concurrent/CancellableDependency;

    if-eqz v6, :cond_5

    move-object v6, p2

    check-cast v6, Lorg/apache/hc/core5/concurrent/CancellableDependency;

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;-><init>(LO5/a;Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/concurrent/CancellableDependency;)V

    :try_start_0
    invoke-interface {v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isEndpointAcquired()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v2, p1, v0, v1, p3}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception p1

    goto :goto_8

    :catch_4
    move-exception p1

    goto :goto_9

    :cond_6
    :goto_3
    invoke-interface {v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isEndpointConnected()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2, p3}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    :cond_7
    const-string v3, "http.request"

    invoke-virtual {p3, v3, p2}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "http.route"

    invoke-virtual {p3, v3, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v3

    invoke-interface {v0, p2, v3, p3}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v3

    invoke-interface {v0, p1, v3, p3}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    invoke-interface {v0, p2, p1, p3}, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v2, v1, p2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    goto :goto_4

    :cond_8
    invoke-interface {v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->markConnectionNonReusable()V

    :goto_4
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpEntity;->isStreaming()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p1, v2}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->enhance(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    new-instance p2, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    invoke-direct {p2, p1, v2}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;-><init>(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    return-object p2

    :cond_a
    :goto_5
    invoke-interface {v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->releaseEndpoint()V

    new-instance p2, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    invoke-direct {p2, p1, v1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;-><init>(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V
    :try_end_0
    .catch Lorg/apache/hc/client5/http/impl/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_6
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/MinimalHttpClient;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    sget-object p3, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p2, p3}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw p1

    :goto_7
    invoke-interface {v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    throw p1

    :goto_8
    invoke-interface {v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    new-instance p2, Lorg/apache/hc/client5/http/ClientProtocolException;

    invoke-direct {p2, p1}, Lorg/apache/hc/client5/http/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_9
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    throw p2
.end method
