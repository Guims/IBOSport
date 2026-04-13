.class public final Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;
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

.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

.field private final targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Target authentication strategy"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/AuthenticationStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    const-string p1, "Proxy authentication strategy"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/AuthenticationStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    invoke-direct {p1, p3}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    :goto_1
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    return-void
.end method

.method private needAuthentication(Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z
    .locals 11

    move-object/from16 v0, p5

    invoke-virtual/range {p7 .. p7}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v3, Lorg/apache/hc/client5/http/auth/ChallengeType;->TARGET:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v5, p1

    move-object v2, p4

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v7

    move-object v8, v2

    move-object v9, v3

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz v1, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {v1, p4, v0, p1, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p4, v0, p1, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnNoChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v2, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v5, p2

    move-object/from16 v4, p6

    move-object v3, v2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v1

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    const/4 v10, 0x0

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v4, p3, v10, p2, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p3, v10, p2, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnNoChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    move-object/from16 v4, p6

    move-object v7, v6

    move-object v2, v8

    move-object v3, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p2

    move-object v6, v7

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p4, v0, p1, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnResponse(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_4
    return p2

    :cond_5
    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    move-object v5, p2

    move-object v1, p3

    move-object v2, v3

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    iget-object p4, p0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz p4, :cond_6

    invoke-virtual {p4, p3, v10, p2, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnResponse(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_6
    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "HTTP request"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Scope"

    invoke-static {v0, v2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v9, v0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v10, v0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v7, v0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v11, v0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-virtual {v10}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    invoke-virtual {v10}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-virtual {v10}, Lorg/apache/hc/client5/http/HttpRoute;->isTunnelled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {v4, v2}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V

    invoke-virtual {v3, v4}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto/16 :goto_e

    :cond_0
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->build()Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-result-object v3

    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/apache/hc/core5/http/HttpRequest;->setScheme(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v5}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {v3, v2}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V

    invoke-interface {v5, v3}, Lorg/apache/hc/core5/http/HttpRequest;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V

    :cond_3
    invoke-interface {v5}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/core5/net/URIAuthority;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    new-instance v3, Lorg/apache/hc/core5/http/HttpHost;

    invoke-interface {v5}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v12, v1, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-interface {v5}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v2}, Lorg/apache/hc/client5/http/SchemePortResolver;->resolve(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)I

    move-result v2

    invoke-direct {v3, v4, v6, v2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v5}, Lorg/apache/hc/client5/http/impl/RequestSupport;->extractPathPrefix(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v2

    if-eqz v8, :cond_4

    invoke-virtual {v7, v8}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v4

    :goto_1
    move-object v13, v4

    goto :goto_2

    :cond_4
    new-instance v4, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-direct {v4}, Lorg/apache/hc/client5/http/auth/AuthExchange;-><init>()V

    goto :goto_1

    :goto_2
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getPathPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getPathPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_5
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getPathPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v2, v12}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setPathPrefix(Ljava/lang/String;)V

    :cond_6
    iget-object v4, v1, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v3, v12, v2, v7}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadPreemptively(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-eqz v8, :cond_7

    iget-object v4, v1, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    const/4 v6, 0x0

    invoke-virtual {v4, v8, v6, v13, v7}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadPreemptively(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_7
    invoke-static {v5}, Lorg/apache/hc/client5/http/impl/classic/RequestEntityProxy;->enhance(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    :goto_3
    const-string v4, "Authorization"

    invoke-interface {v5, v4}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->LOG:LO5/a;

    invoke-interface {v4}, LO5/a;->c()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "{} target auth state: {}"

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v14

    invoke-interface {v4, v9, v14, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    move-object v6, v2

    iget-object v2, v1, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v4, Lorg/apache/hc/client5/http/auth/ChallengeType;->TARGET:Lorg/apache/hc/client5/http/auth/ChallengeType;

    invoke-virtual/range {v2 .. v7}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    move-object v14, v3

    move-object v15, v6

    goto :goto_4

    :cond_9
    move-object v15, v2

    move-object v14, v3

    :goto_4
    const-string v2, "Proxy-Authorization"

    invoke-interface {v5, v2}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v10}, Lorg/apache/hc/client5/http/HttpRoute;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->LOG:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "{} proxy auth state: {}"

    invoke-virtual {v13}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v4

    invoke-interface {v2, v9, v4, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    iget-object v2, v1, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v4, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v3, v8

    move-object v6, v13

    invoke-virtual/range {v2 .. v7}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v3

    move-object v2, v5

    move-object v3, v6

    :goto_5
    move-object/from16 v4, p3

    move-object v8, v7

    goto :goto_6

    :cond_b
    move-object v2, v5

    move-object v3, v13

    move-object v13, v8

    goto :goto_5

    :goto_6
    :try_start_1
    invoke-interface {v4, v2, v0}, Lorg/apache/hc/client5/http/classic/ExecChain;->proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v7

    sget-object v5, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v7, v11}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->enhance(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    return-object v7

    :catch_3
    move-exception v0

    :goto_7
    move-object v7, v8

    goto/16 :goto_c

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_c
    invoke-interface {v2}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-interface {v5}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v0, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "{} Cannot retry non-repeatable request"

    invoke-interface {v0, v9, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    invoke-static {v7, v11}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->enhance(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    return-object v7

    :cond_e
    if-eqz v13, :cond_f

    move-object v4, v13

    move-object v5, v14

    :goto_8
    move-object v6, v12

    move-object v12, v2

    move-object v2, v15

    goto :goto_9

    :cond_f
    move-object v4, v14

    move-object v5, v4

    goto :goto_8

    :goto_9
    invoke-direct/range {v1 .. v8}, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->needAuthentication(Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z

    move-result v4
    :try_end_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v15, v2

    move-object v14, v5

    move-object v1, v7

    move-object v7, v8

    if-eqz v4, :cond_16

    :try_start_2
    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    invoke-interface {v11}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isConnectionReusable()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v1}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    goto :goto_a

    :cond_10
    invoke-interface {v11}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->disconnectEndpoint()V

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->SUCCESS:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    if-ne v1, v2, :cond_12

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "{} resetting proxy auth state"

    invoke-interface {v1, v9, v4}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_12
    invoke-virtual {v15}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v1

    if-ne v1, v2, :cond_14

    invoke-virtual {v15}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lorg/apache/hc/client5/http/impl/classic/ProtocolExec;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "{} resetting target auth state"

    invoke-interface {v1, v9, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v15}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_14
    :goto_a
    iget-object v1, v0, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/hc/core5/http/Header;

    invoke-interface {v12, v2}, Lorg/apache/hc/core5/http/HttpMessage;->setHeaders([Lorg/apache/hc/core5/http/Header;)V

    invoke-interface {v1}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/Header;

    invoke-interface {v12, v2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_b

    :cond_15
    move-object/from16 v1, p0

    move-object v5, v12

    move-object v8, v13

    move-object v2, v15

    move-object v13, v3

    move-object v12, v6

    move-object v3, v14

    goto/16 :goto_3

    :cond_16
    invoke-static {v1, v11}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->enhance(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    return-object v1

    :cond_17
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Request URI authority contains deprecated userinfo component"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_c
    invoke-interface {v11}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    invoke-virtual {v7}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    goto :goto_d

    :cond_19
    throw v0

    :goto_e
    invoke-interface {v11}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    throw v0

    :cond_1a
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Direct execution of CONNECT is not allowed"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
