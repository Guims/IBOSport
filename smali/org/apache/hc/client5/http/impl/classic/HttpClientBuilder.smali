.class public Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;,
        Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;,
        Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;
    }
.end annotation


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

.field private connManagerShared:Z

.field private connectionBackoffStrategy:Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private contentDecoderMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

.field private credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

.field private defaultUserAgentDisabled:Z

.field private evictExpiredConnections:Z

.field private evictIdleConnections:Z

.field private execInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

.field private maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

.field private proxy:Lorg/apache/hc/core5/http/HttpHost;

.field private proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

.field private requestExec:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

.field private requestInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private responseInterceptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

.field private reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

.field private schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

.field private systemProperties:Z

.field private targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->lambda$build$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->lambda$build$1(Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;)V

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$build$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$build$1(Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->shutdown()V

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->awaitTermination(Lorg/apache/hc/core5/util/Timeout;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .locals 1
    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->closeables:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addExecInterceptorAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;->AFTER:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Name"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;->BEFORE:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorFirst(Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 7

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addExecInterceptorLast(Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 7

    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRequestInterceptorFirst(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addRequestInterceptorLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addResponseInterceptorFirst(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addResponseInterceptorLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 4

    const-string v0, "Interceptor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestExec:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;-><init>()V

    :cond_0
    move-object v4, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->create()Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManagerBuilder;->build()Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    move-result-object v1

    :cond_1
    move-object v3, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_4

    const-string v1, "http.keepAlive"

    const-string v5, "true"

    invoke-static {v1, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/hc/client5/http/impl/async/j;

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/impl/async/j;-><init>(I)V

    :cond_3
    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_4
    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    if-nez v1, :cond_5

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;

    :cond_5
    move-object v9, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    if-nez v1, :cond_6

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    :cond_6
    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    if-nez v5, :cond_7

    sget-object v5, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    :cond_7
    move-object v11, v5

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    if-nez v5, :cond_8

    iget-boolean v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v5, :cond_9

    sget-object v5, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;

    :cond_8
    :goto_2
    move-object v10, v5

    goto :goto_3

    :cond_9
    sget-object v5, Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/NoopUserTokenHandler;

    goto :goto_2

    :goto_3
    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->userAgent:Ljava/lang/String;

    if-nez v5, :cond_b

    iget-boolean v7, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->systemProperties:Z

    if-eqz v7, :cond_a

    const-string v5, "http.agent"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_a
    if-nez v5, :cond_b

    iget-boolean v7, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->defaultUserAgentDisabled:Z

    if-nez v7, :cond_b

    const-string v5, "org.apache.hc.client5"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "Apache-HttpClient"

    invoke-static {v8, v5, v7}, Lorg/apache/hc/core5/util/VersionInfo;->getSoftwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    :cond_b
    move-object v12, v5

    invoke-static {}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    move-result-object v5

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;

    iget-object v13, v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;

    sget-object v14, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;

    if-ne v13, v14, :cond_c

    iget-object v8, v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    invoke-virtual {v5, v8}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_4

    :cond_d
    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;

    iget-object v13, v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;

    sget-object v14, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;->FIRST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;

    if-ne v13, v14, :cond_e

    iget-object v8, v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    invoke-virtual {v5, v8}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_5

    :cond_f
    new-instance v7, Lorg/apache/hc/client5/http/protocol/RequestDefaultHeaders;

    iget-object v8, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v7, v8}, Lorg/apache/hc/client5/http/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    new-instance v8, Lorg/apache/hc/core5/http/protocol/RequestContent;

    invoke-direct {v8}, Lorg/apache/hc/core5/http/protocol/RequestContent;-><init>()V

    new-instance v13, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;

    invoke-direct {v13}, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;-><init>()V

    new-instance v14, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;

    invoke-direct {v14}, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;-><init>()V

    new-instance v15, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-direct {v15, v12}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    new-instance v16, Lorg/apache/hc/client5/http/protocol/RequestExpectContinue;

    invoke-direct/range {v16 .. v16}, Lorg/apache/hc/client5/http/protocol/RequestExpectContinue;-><init>()V

    move/from16 v17, v2

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    const/16 v18, 0x0

    aput-object v7, v2, v18

    aput-object v8, v2, v17

    const/4 v7, 0x2

    aput-object v13, v2, v7

    const/4 v13, 0x3

    aput-object v14, v2, v13

    const/4 v14, 0x4

    aput-object v15, v2, v14

    const/4 v15, 0x5

    aput-object v16, v2, v15

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v2, :cond_10

    sget-object v2, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/RequestAddCookies;

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_10
    iget-boolean v2, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v2, :cond_11

    sget-object v2, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_11
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestInterceptors:Ljava/util/LinkedList;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;

    iget-object v7, v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;

    sget-object v15, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;

    if-ne v7, v15, :cond_12

    iget-object v7, v8, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    invoke-virtual {v5, v7}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpRequestInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    :cond_12
    const/4 v7, 0x2

    const/4 v15, 0x5

    goto :goto_6

    :cond_13
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->responseInterceptors:Ljava/util/LinkedList;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;

    iget-object v8, v7, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;

    sget-object v15, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;->LAST:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry$Position;

    if-ne v8, v15, :cond_14

    iget-object v7, v7, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ResponseInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    invoke-virtual {v5, v7}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/hc/core5/http/HttpResponseInterceptor;)Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;

    goto :goto_7

    :cond_15
    invoke-virtual {v5}, Lorg/apache/hc/core5/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v7

    new-instance v2, Lorg/apache/hc/core5/http/config/NamedElementChain;

    invoke-direct {v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;-><init>()V

    new-instance v5, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;

    move-object v8, v6

    move-object v6, v3

    const/4 v3, 0x2

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;-><init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;Lorg/apache/hc/client5/http/UserTokenHandler;)V

    move-object v15, v6

    move-object v6, v8

    sget-object v7, Lorg/apache/hc/client5/http/impl/ChainElement;->MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addLast(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v5, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;

    new-instance v7, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;

    new-instance v8, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;

    invoke-direct {v8}, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;-><init>()V

    new-instance v9, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-direct {v9, v12}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    new-array v10, v3, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    aput-object v8, v10, v18

    aput-object v9, v10, v17

    invoke-direct {v7, v10}, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;-><init>([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V

    iget-object v8, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz v8, :cond_16

    :goto_8
    move-object v9, v8

    goto :goto_9

    :cond_16
    sget-object v8, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    goto :goto_8

    :goto_9
    iget-boolean v10, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->authCachingDisabled:Z

    move-object v8, v11

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;-><init>(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V

    sget-object v6, Lorg/apache/hc/client5/http/impl/ChainElement;->CONNECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    new-instance v5, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;

    iget-object v6, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz v6, :cond_17

    goto :goto_a

    :cond_17
    sget-object v6, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_a
    iget-boolean v7, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->authCachingDisabled:Z

    invoke-direct {v5, v1, v8, v6, v7}, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;-><init>(Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->PROTOCOL:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    if-nez v1, :cond_18

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;

    :cond_18
    new-instance v5, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;

    invoke-direct {v5, v1}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;-><init>(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->RETRY:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_19
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    if-nez v1, :cond_1d

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-nez v1, :cond_1a

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :cond_1a
    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    if-eqz v5, :cond_1b

    new-instance v6, Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;

    invoke-direct {v6, v5, v1}, Lorg/apache/hc/client5/http/impl/routing/DefaultProxyRoutePlanner;-><init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)V

    goto :goto_c

    :cond_1b
    iget-boolean v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->systemProperties:Z

    if-eqz v5, :cond_1c

    new-instance v5, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;Ljava/net/ProxySelector;)V

    :goto_b
    move-object v6, v5

    goto :goto_c

    :cond_1c
    new-instance v5, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;

    invoke-direct {v5, v1}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    goto :goto_b

    :cond_1d
    move-object v6, v1

    :goto_c
    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v1, :cond_20

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->contentDecoderMap:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->contentDecoderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v5

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->contentDecoderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    goto :goto_d

    :cond_1e
    invoke-virtual {v5}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v5

    new-instance v7, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;

    move/from16 v8, v17

    invoke-direct {v7, v1, v5, v8}, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;-><init>(Ljava/util/List;Lorg/apache/hc/core5/http/config/Lookup;Z)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->COMPRESS:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_e

    :cond_1f
    move/from16 v8, v17

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;

    invoke-direct {v1, v8}, Lorg/apache/hc/client5/http/impl/classic/ContentCompressionExec;-><init>(Z)V

    sget-object v5, Lorg/apache/hc/client5/http/impl/ChainElement;->COMPRESS:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_20
    :goto_e
    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v1, :cond_22

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    if-nez v1, :cond_21

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultRedirectStrategy;

    :cond_21
    new-instance v5, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;

    invoke-direct {v5, v6, v1}, Lorg/apache/hc/client5/http/impl/classic/RedirectExec;-><init>(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->REDIRECT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_22
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

    if-eqz v1, :cond_23

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connectionBackoffStrategy:Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;

    if-eqz v5, :cond_23

    new-instance v7, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;

    invoke-direct {v7, v5, v1}, Lorg/apache/hc/client5/http/impl/classic/BackoffStrategyExec;-><init>(Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;Lorg/apache/hc/client5/http/classic/BackoffManager;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/ChainElement;->BACK_OFF:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    :cond_23
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;

    sget-object v7, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;->$SwitchMap$org$apache$hc$client5$http$impl$classic$HttpClientBuilder$ExecInterceptorEntry$Position:[I

    iget-object v8, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_28

    if-eq v7, v3, :cond_27

    if-eq v7, v13, :cond_26

    if-eq v7, v14, :cond_25

    const/4 v8, 0x5

    if-eq v7, v8, :cond_24

    goto :goto_f

    :cond_24
    sget-object v7, Lorg/apache/hc/client5/http/impl/ChainElement;->MAIN_TRANSPORT:Lorg/apache/hc/client5/http/impl/ChainElement;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v9, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_f

    :cond_25
    const/4 v8, 0x5

    iget-object v7, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addFirst(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_f

    :cond_26
    const/4 v8, 0x5

    iget-object v7, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    invoke-virtual {v2, v7, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->replace(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    const/4 v8, 0x5

    iget-object v7, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v9, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v9, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addBefore(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_f

    :cond_28
    const/4 v8, 0x5

    iget-object v7, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    iget-object v9, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    iget-object v5, v5, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v9, v5}, Lorg/apache/hc/core5/http/config/NamedElementChain;->addAfter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    goto :goto_f

    :cond_29
    invoke-virtual {v0, v2}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->customizeExecChain(Lorg/apache/hc/core5/http/config/NamedElementChain;)V

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/NamedElementChain;->getLast()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    const/4 v2, 0x0

    move-object v5, v2

    :goto_10
    if-eqz v1, :cond_2a

    new-instance v3, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    invoke-direct {v3, v7, v5}, Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;-><init>(Lorg/apache/hc/client5/http/classic/ExecChainHandler;Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;)V

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/NamedElementChain$Node;->getPrevious()Lorg/apache/hc/core5/http/config/NamedElementChain$Node;

    move-result-object v1

    move-object v5, v3

    goto :goto_10

    :cond_2a
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    if-nez v1, :cond_2b

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v3, "Basic"

    sget-object v7, Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;

    invoke-virtual {v1, v3, v7}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v3, "Digest"

    sget-object v7, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;

    invoke-virtual {v1, v3, v7}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v3, "NTLM"

    sget-object v7, Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;

    invoke-virtual {v1, v3, v7}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v3, "Negotiate"

    sget-object v7, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;

    invoke-virtual {v1, v3, v7}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    const-string v3, "Kerberos"

    sget-object v7, Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;

    invoke-virtual {v1, v3, v7}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v1

    :cond_2b
    move-object v8, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    if-nez v1, :cond_2c

    invoke-static {}, Lorg/apache/hc/client5/http/impl/CookieSpecSupport;->createDefault()Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v1

    :cond_2c
    move-object v7, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    if-nez v1, :cond_2d

    new-instance v1, Lorg/apache/hc/client5/http/cookie/BasicCookieStore;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/cookie/BasicCookieStore;-><init>()V

    :cond_2d
    move-object v9, v1

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    if-nez v1, :cond_2e

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_2f

    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;-><init>()V

    :cond_2e
    :goto_11
    move-object v10, v1

    goto :goto_12

    :cond_2f
    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;-><init>()V

    goto :goto_11

    :goto_12
    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v1, :cond_30

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_30
    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connManagerShared:Z

    if-nez v1, :cond_34

    if-nez v2, :cond_31

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_31
    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->evictExpiredConnections:Z

    if-nez v1, :cond_32

    iget-boolean v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->evictIdleConnections:Z

    if-eqz v1, :cond_33

    :cond_32
    instance-of v1, v15, Lorg/apache/hc/core5/pool/ConnPoolControl;

    if-eqz v1, :cond_33

    new-instance v1, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;

    move-object v3, v15

    check-cast v3, Lorg/apache/hc/core5/pool/ConnPoolControl;

    iget-object v11, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

    invoke-direct {v1, v3, v11, v11}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;-><init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V

    new-instance v3, Lorg/apache/hc/client5/http/impl/classic/b;

    invoke-direct {v3, v1}, Lorg/apache/hc/client5/http/impl/classic/b;-><init>(Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->start()V

    :cond_33
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    move-object v12, v2

    new-instance v2, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;

    iget-object v1, v0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    if-eqz v1, :cond_35

    :goto_13
    move-object v11, v1

    move-object v3, v15

    goto :goto_14

    :cond_35
    sget-object v1, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/RequestConfig;

    goto :goto_13

    :goto_14
    invoke-direct/range {v2 .. v12}, Lorg/apache/hc/client5/http/impl/classic/InternalHttpClient;-><init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/client5/http/impl/classic/ExecChainElement;Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/cookie/CookieStore;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/client5/http/config/RequestConfig;Ljava/util/List;)V

    return-object v2
.end method

.method public customizeExecChain(Lorg/apache/hc/core5/http/config/NamedElementChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/NamedElementChain<",
            "Lorg/apache/hc/client5/http/classic/ExecChainHandler;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    return-void
.end method

.method public final disableAuthCaching()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->authCachingDisabled:Z

    return-object p0
.end method

.method public final disableAutomaticRetries()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->automaticRetriesDisabled:Z

    return-object p0
.end method

.method public final disableConnectionState()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connectionStateDisabled:Z

    return-object p0
.end method

.method public final disableContentCompression()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->contentCompressionDisabled:Z

    return-object p0
.end method

.method public final disableCookieManagement()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->cookieManagementDisabled:Z

    return-object p0
.end method

.method public final disableDefaultUserAgent()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->defaultUserAgentDisabled:Z

    return-object p0
.end method

.method public final disableRedirectHandling()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->redirectHandlingDisabled:Z

    return-object p0
.end method

.method public final evictExpiredConnections()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->evictExpiredConnections:Z

    return-object p0
.end method

.method public final evictIdleConnections(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->evictIdleConnections:Z

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->maxIdleTime:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public final replaceExecInterceptor(Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 7

    const-string v0, "Existing"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Interceptor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->execInterceptors:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;->REPLACE:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setBackoffManager(Lorg/apache/hc/client5/http/classic/BackoffManager;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->backoffManager:Lorg/apache/hc/client5/http/classic/BackoffManager;

    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connectionBackoffStrategy:Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;

    return-object p0
.end method

.method public final setConnectionManager(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->connManagerShared:Z

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setContentDecoderRegistry(Ljava/util/LinkedHashMap;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/entity/InputStreamFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->contentDecoderMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieStore(Lorg/apache/hc/client5/http/cookie/CookieStore;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lorg/apache/hc/client5/http/auth/CredentialsProvider;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)",
            "Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    return-object p0
.end method

.method public final setDefaultRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->defaultRequestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object p0
.end method

.method public final setKeepAliveStrategy(Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    return-object p0
.end method

.method public final setProxy(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->proxy:Lorg/apache/hc/core5/http/HttpHost;

    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lorg/apache/hc/client5/http/AuthenticationStrategy;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    return-object p0
.end method

.method public final setRedirectStrategy(Lorg/apache/hc/client5/http/protocol/RedirectStrategy;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->redirectStrategy:Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    return-object p0
.end method

.method public final setRequestExecutor(Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->requestExec:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    return-object p0
.end method

.method public final setRetryStrategy(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    return-object p0
.end method

.method public final setRoutePlanner(Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->routePlanner:Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public final setSchemePortResolver(Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lorg/apache/hc/client5/http/AuthenticationStrategy;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserTokenHandler(Lorg/apache/hc/client5/http/UserTokenHandler;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->systemProperties:Z

    return-object p0
.end method
