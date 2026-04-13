.class public final Lorg/apache/hc/client5/http/impl/classic/ConnectExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ExecChainHandler;


# annotations
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

.field private final reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final routeDirector:Lorg/apache/hc/client5/http/routing/HttpRouteDirector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection reuse strategy"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy HTTP processor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy authentication strategy"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->proxyHttpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    invoke-direct {p1, p4}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    sget-object p1, Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;->INSTANCE:Lorg/apache/hc/client5/http/impl/routing/BasicRouteDirector;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->routeDirector:Lorg/apache/hc/client5/http/routing/HttpRouteDirector;

    return-void
.end method

.method private createTunnelToProxy(Lorg/apache/hc/client5/http/HttpRoute;ILorg/apache/hc/client5/http/protocol/HttpClientContext;)Z
    .locals 0

    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTunnelToTarget(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/classic/ExecRuntime;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z
    .locals 9

    invoke-virtual {p5}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    invoke-virtual {p5, v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v5

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2, v8, v5, p5}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadPreemptively(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v4, v1, v0, p2}, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    sget-object p2, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-interface {v4, p2}, Lorg/apache/hc/core5/http/HttpMessage;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->proxyHttpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-interface {p2, v4, v8, p5}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    move-object p2, v8

    :goto_0
    const/16 v0, 0xc8

    if-nez p2, :cond_8

    const-string p2, "Proxy-Authorization"

    invoke-interface {v4, p2}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v3, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    move-object p2, v4

    invoke-interface {p4, p1, p2, v6}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v4

    iget-object p5, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->proxyHttpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-interface {v4}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    invoke-interface {p5, v4, v1, v6}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {v4}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p5

    if-lt p5, v0, :cond_7

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result p5

    if-eqz p5, :cond_6

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p5

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {v0, v2, v8, v5, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v8, v5, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnNoChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_2
    :goto_1
    if-eqz p5, :cond_6

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    move-object v7, v6

    move-object v6, v5

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    invoke-virtual/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p5

    move-object v5, v6

    move-object v6, v7

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2, v8, v5, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnResponse(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_3
    if-eqz p5, :cond_6

    iget-object p5, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    invoke-interface {p5, p2, v4, v6}, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p5

    if-eqz p5, :cond_5

    sget-object p5, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->LOG:LO5/a;

    invoke-interface {p5}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "{} connection kept alive"

    invoke-interface {p5, p1, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v4}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p5

    invoke-static {p5}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    goto :goto_2

    :cond_5
    invoke-interface {p4}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->disconnectEndpoint()V

    :goto_2
    move-object v4, v8

    :cond_6
    move-object p5, v4

    move-object v4, p2

    move-object p2, p5

    move-object p5, v6

    goto :goto_0

    :cond_7
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected response to CONNECT request: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {p3, v4}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    if-eq p1, v0, :cond_a

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {p1}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->toString(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    :cond_9
    invoke-interface {p4}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->disconnectEndpoint()V

    new-instance p1, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "CONNECT refused by proxy: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p4, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {p4, p2}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v8}, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 10

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Scope"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v3, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v6, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v5, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-interface {v5}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isEndpointAcquired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "{} acquiring connection with route {}"

    invoke-interface {v1, v2, v3, v4}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v5, v2, v3, v0, v6}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    :cond_1
    :try_start_0
    invoke-interface {v5}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isEndpointConnected()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "{} opening connection {}"

    invoke-interface {v0, v2, v3, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    move-object v8, v5

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_2
    new-instance v0, Lorg/apache/hc/client5/http/RouteTracker;

    invoke-direct {v0, v3}, Lorg/apache/hc/client5/http/RouteTracker;-><init>(Lorg/apache/hc/client5/http/HttpRoute;)V

    :goto_2
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/RouteTracker;->toRoute()Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->routeDirector:Lorg/apache/hc/client5/http/routing/HttpRouteDirector;

    invoke-interface {v4, v3, v1}, Lorg/apache/hc/client5/http/routing/HttpRouteDirector;->nextStep(Lorg/apache/hc/client5/http/RouteInfo;Lorg/apache/hc/client5/http/RouteInfo;)I

    move-result v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v4, 0x1

    packed-switch v7, :pswitch_data_0

    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown step indicator "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " from RouteDirector."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {v5, v6}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/HttpRoute;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/RouteTracker;->layerProtocol(Z)V

    :goto_3
    :pswitch_1
    move-object v8, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, p1

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getHopCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-direct {p0, v3, v1, v6}, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->createTunnelToProxy(Lorg/apache/hc/client5/http/HttpRoute;ILorg/apache/hc/client5/http/protocol/HttpClientContext;)Z

    move-result v4

    sget-object v8, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->LOG:LO5/a;

    invoke-interface {v8}, LO5/a;->c()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "{} tunnel to proxy created."

    invoke-interface {v8, v2, v9}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v1}, Lorg/apache/hc/client5/http/HttpRoute;->getHopTarget(I)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/apache/hc/client5/http/RouteTracker;->tunnelProxy(Lorg/apache/hc/core5/http/HttpHost;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :pswitch_3
    move-object v1, p0

    move-object v4, p1

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->createTunnelToTarget(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/classic/ExecRuntime;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v8, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v4

    :try_start_5
    sget-object v1, Lorg/apache/hc/client5/http/impl/classic/ConnectExec;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "{} tunnel to target created."

    invoke-interface {v1, v3, v4}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_4
    move-object p1, v0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_5
    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/RouteTracker;->tunnelTarget(Z)V

    goto :goto_8

    :catch_6
    move-exception v0

    :goto_6
    move-object v8, v5

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_6

    :pswitch_4
    move-object v8, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, p1

    invoke-interface {v8, v6}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/HttpRoute;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v0, p1, v4}, Lorg/apache/hc/client5/http/RouteTracker;->connectProxy(Lorg/apache/hc/core5/http/HttpHost;Z)V

    goto :goto_8

    :pswitch_5
    move-object v8, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, p1

    invoke-interface {v8, v6}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/HttpRoute;->isSecure()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/RouteTracker;->connectTarget(Z)V

    :goto_8
    if-gtz v7, :cond_6

    goto :goto_9

    :cond_6
    move-object p1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v8

    goto/16 :goto_2

    :pswitch_6
    move-object v8, v5

    move-object v5, v3

    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to establish route: planned = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "; current = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    move-object v2, p1

    move-object v8, v5

    :goto_9
    invoke-interface {p3, v2, p2}, Lorg/apache/hc/client5/http/classic/ExecChain;->proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    return-object p1

    :goto_a
    invoke-interface {v8}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
