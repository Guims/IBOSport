.class public final Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

.field private final authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

.field private final proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final routeDirector:Lorg/apache/hc/client5/http/routing/HttpRouteDirector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Proxy HTTP processor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy authentication strategy"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proxyHttpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    invoke-direct {p1, p3}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    sget-object p1, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;->INSTANCE:Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->routeDirector:Lorg/apache/hc/client5/http/routing/HttpRouteDirector;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proceedToNextHop(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method public static synthetic access$100()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proxyHttpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->needAuthentication(Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z

    move-result p0

    return p0
.end method

.method private createTunnel(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 8

    iget-object v2, p4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, v7, v3, v2}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadPreemptively(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_1
    move-object v4, v3

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    sget-object v0, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {p3}, Lorg/apache/hc/core5/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, p3, v1}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    sget-object p3, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-interface {v3, p3}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proxyHttpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-interface {p3, v3, v7, v2}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    move-object v5, v2

    sget-object v2, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    move-object p2, v3

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;

    move-object v6, p6

    move-object v3, v4

    move-object v2, v5

    move-object v5, p1

    move-object v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    invoke-interface {p5, p2, v7, p4, v0}, Lorg/apache/hc/client5/http/async/AsyncExecChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method private needAuthentication(Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z
    .locals 9

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v3, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v5, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v2, p3, v5, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2, p3, v5, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnNoChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    move-object v8, v6

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    invoke-virtual/range {v2 .. v8}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    move-object v2, v3

    move-object v5, v7

    move-object v6, v8

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2, p3, v5, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnResponse(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private proceedToNextHop(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 14

    move-object/from16 v8, p4

    iget-object v3, p1, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->tracker:Lorg/apache/hc/client5/http/RouteTracker;

    iget-object v4, v8, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v2, v8, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v11, v8, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    iget-object v12, v8, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iget-object v13, v8, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/RouteTracker;->toRoute()Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->routeDirector:Lorg/apache/hc/client5/http/routing/HttpRouteDirector;

    invoke-interface {v1, v2, v0}, Lorg/apache/hc/client5/http/routing/HttpRouteDirector;->nextStep(Lorg/apache/hc/client5/http/RouteInfo;Lorg/apache/hc/client5/http/RouteInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown step indicator "

    const-string v2, " from RouteDirector."

    invoke-static {v0, v1, v2}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$5;

    move-object v1, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$5;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Ljava/lang/String;Lorg/apache/hc/client5/http/RouteTracker;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    invoke-interface {v11, v13, v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :pswitch_1
    move-object/from16 v10, p6

    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string v0, "Proxy chains are not supported"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void

    :pswitch_2
    move-object/from16 v10, p6

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v12

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v13

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} create tunnel"

    invoke-interface {v0, v4, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_0
    :goto_1
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object v2, v10

    move-object v10, v3

    move-object v3, v11

    :try_start_1
    invoke-direct/range {v0 .. v10}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/RouteTracker;)V
    :try_end_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v2

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v0

    move-object v3, v12

    move-object v4, v13

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->createTunnel(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    :try_end_2
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_2
    move-exception v0

    :goto_2
    move-object v10, v2

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :goto_3
    invoke-interface {v10, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    goto :goto_6

    :pswitch_3
    move-object/from16 v10, p6

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$3;

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$3;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/client5/http/RouteTracker;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    invoke-interface {v11, v13, v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    invoke-interface {v12, p1}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void

    :pswitch_4
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;

    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/RouteTracker;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    invoke-interface {v11, v13, v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    invoke-interface {v12, p1}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void

    :pswitch_5
    move-object/from16 v10, p6

    sget-object p1, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "{} route fully established"

    invoke-interface {p1, v4, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    :try_start_3
    invoke-interface {v9, v6, v7, v8, v10}, Lorg/apache/hc/client5/http/async/AsyncExecChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    :try_end_3
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :goto_5
    invoke-interface {v10, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    :goto_6
    return-void

    :pswitch_6
    move-object/from16 v10, p6

    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to establish route: planned = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 14

    move-object/from16 v5, p3

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Scope"

    invoke-static {v5, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v9, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v10, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iget-object v11, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v12, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    invoke-direct {v2, v9}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;-><init>(Lorg/apache/hc/client5/http/HttpRoute;)V

    invoke-interface {v12}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->isEndpointAcquired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v13

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} acquiring connection with route {}"

    invoke-interface {v0, v8, v9, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    move-object v7, v2

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;)V

    move-object v6, v0

    move-object v2, v8

    move-object v3, v9

    move-object v5, v11

    move-object v1, v12

    move-object v4, v13

    invoke-interface/range {v1 .. v6}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    invoke-interface {v10, p1}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void

    :cond_1
    move-object v1, v12

    invoke-interface {v1}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->isEndpointConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    :try_start_0
    invoke-interface {v6, p1, v4, v5, v7}, Lorg/apache/hc/client5/http/async/AsyncExecChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-interface {v7, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_2
    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proceedToNextHop(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method
