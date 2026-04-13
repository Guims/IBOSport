.class Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;
.super Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

# interfaces
.implements Lorg/apache/hc/client5/http/config/Configurable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final closeables:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private final connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

.field private final cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

.field private final credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

.field private final defaultConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

.field private final execChain:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

.field private final requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

.field private final routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/cookie/CookieStore;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/client5/http/config/RequestConfig;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;",
            "Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;",
            "Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;",
            "Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;",
            "Lorg/apache/hc/client5/http/cookie/CookieStore;",
            "Lorg/apache/hc/client5/http/auth/CredentialsProvider;",
            "Lorg/apache/hc/client5/http/config/RequestConfig;",
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    const-string p1, "Request executor"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    const-string p1, "Execution chain"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->execChain:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    const-string p1, "Route planner"

    invoke-static {p4, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    iput-object p9, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->defaultConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    if-eqz p10, :cond_0

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, p10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->closeables:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object p1

    return-object p1
.end method

.method private setupContext(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 2

    const-string v0, "http.authscheme-registry"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "http.cookiespec-registry"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "http.cookie-store"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "http.auth.credentials-provider"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "http.request-config"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->defaultConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->closeables:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->closeables:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    :try_start_0
    instance-of v1, v0, Lorg/apache/hc/core5/io/ModalCloseable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/hc/core5/io/ModalCloseable;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v1, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->LOG:LO5/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, LO5/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
    .locals 7

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p3, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;

    invoke-direct {p3}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;-><init>()V

    :goto_0
    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v5

    instance-of p3, p2, Lorg/apache/hc/client5/http/config/Configurable;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/apache/hc/client5/http/config/Configurable;

    invoke-interface {p3}, Lorg/apache/hc/client5/http/config/Configurable;->getConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    move-object p3, v0

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v5, p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V

    :cond_2
    invoke-direct {p0, v5}, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->setupContext(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lorg/apache/hc/client5/http/routing/RoutingSupport;->determineHost(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    :goto_2
    invoke-direct {p0, p1, v5}, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object v2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/ExecSupport;->getNextExchangeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setExchangeId(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "{} preparing request execution"

    invoke-interface {p1, v1, p3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v4, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->requestExecutor:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    instance-of v6, p2, Lorg/apache/hc/core5/concurrent/CancellableDependency;

    if-eqz v6, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/apache/hc/core5/concurrent/CancellableDependency;

    :cond_5
    invoke-direct {v4, p1, p3, v3, v0}, Lorg/apache/hc/client5/http/impl/classic/InternalExecRuntime;-><init>(LO5/a;Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/concurrent/CancellableDependency;)V

    new-instance v0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;-><init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecRuntime;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->execChain:Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    invoke-static {v3}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->build()Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;->adapt(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    new-instance p2, Lorg/apache/hc/client5/http/ClientProtocolException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/client5/http/ClientProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getConfig()Lorg/apache/hc/client5/http/config/RequestConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;->defaultConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object v0
.end method
