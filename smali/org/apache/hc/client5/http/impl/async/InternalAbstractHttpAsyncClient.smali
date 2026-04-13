.class abstract Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;
.super Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;
    }
.end annotation


# static fields
.field private static final LOG:LO5/a;

.field private static final SCHEDULER_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


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

.field private final execChain:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "Scheduled-executor"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->SCHEDULER_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const-class v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/cookie/CookieStore;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/client5/http/config/RequestConfig;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;",
            "Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;",
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

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;-><init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->execChain:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    iput-object p9, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->defaultConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    if-eqz p10, :cond_0

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, p10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->closeables:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object p1, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->SCHEDULER_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->lambda$doExecute$0(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;)Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->execChain:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    return-object p0
.end method

.method public static synthetic access$100()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->LOG:LO5/a;

    return-object v0
.end method

.method private synthetic lambda$doExecute$0(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 12

    move-object/from16 v5, p7

    move-object/from16 v0, p8

    instance-of v2, v5, Lorg/apache/hc/client5/http/config/Configurable;

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    move-object v2, v5

    check-cast v2, Lorg/apache/hc/client5/http/config/Configurable;

    invoke-interface {v2}, Lorg/apache/hc/client5/http/config/Configurable;->getConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v11

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V

    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->setupContext(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    if-eqz p2, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lorg/apache/hc/client5/http/routing/RoutingSupport;->determineHost(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2, p1}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object v4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/ExecSupport;->getNextExchangeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setExchangeId(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->LOG:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "{} preparing request execution"

    invoke-interface {v2, v3, v6}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p3}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->createAsyncExecRuntime(Lorg/apache/hc/core5/http/nio/HandlerFactory;)Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    move-result-object v8

    new-instance v9, Lorg/apache/hc/client5/http/impl/async/b;

    invoke-direct {v9, p0}, Lorg/apache/hc/client5/http/impl/async/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x1

    invoke-direct {v10, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;-><init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;Ljava/util/concurrent/atomic/AtomicInteger;)V

    move-object v9, v2

    move-object v7, v3

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static/range {p7 .. p7}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->build()Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    move-result-object v10

    if-eqz v0, :cond_4

    new-instance v11, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;

    move-object/from16 v3, p5

    invoke-direct {v11, p0, v3, v0, v2}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/EntityDetails;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_2

    :cond_4
    move-object/from16 v3, p5

    :goto_2
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;

    move-object v1, p0

    move-object/from16 v6, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/ComplexFuture;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V

    invoke-virtual {p0, v10, v11, v9, v0}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->executeImmediate(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method private setupContext(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 2

    const-string v0, "http.authscheme-registry"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "http.cookiespec-registry"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "http.cookie-store"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "http.auth.credentials-provider"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "http.request-config"

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->defaultConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method public abstract createAsyncExecRuntime(Lorg/apache/hc/core5/http/nio/HandlerFactory;)Lorg/apache/hc/client5/http/async/AsyncExecRuntime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;"
        }
    .end annotation
.end method

.method public abstract determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/client5/http/HttpRoute;
.end method

.method public doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v5, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {v5, p6}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->isRunning()Z

    move-result p6

    if-eqz p6, :cond_1

    if-eqz p5, :cond_0

    invoke-static {p5}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p6

    :goto_0
    move-object v2, p6

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p6

    goto :goto_0

    :goto_2
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/k;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/async/k;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;)V

    invoke-interface {v6, v0, p5}, Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;->sendRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object v5

    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Request execution cancelled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v5, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-object v5
.end method

.method public executeImmediate(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->execChain:Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method public executeScheduled(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 7

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;-><init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/core5/util/TimeValue;)V

    invoke-static {v6}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v6}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide p2

    invoke-virtual {v6}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p4

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_0
    iget-object p1, v1, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public internalClose(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->closeables:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->closeables:Ljava/util/concurrent/ConcurrentLinkedQueue;

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
    sget-object v1, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->LOG:LO5/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, LO5/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v1, v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    goto :goto_2

    :cond_3
    return-void
.end method
