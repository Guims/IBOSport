.class public final Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;


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

    const-class v0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/SchemePortResolver;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Target authentication strategy"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/AuthenticationStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    const-string p1, "Proxy authentication strategy"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/AuthenticationStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    invoke-direct {p1, p3}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    :goto_1
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->needAuthentication(Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$200(Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->internalExecute(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method private internalExecute(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v5, p6

    move-object/from16 v14, p8

    iget-object v12, v14, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v0, v14, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v7, v14, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v11, v14, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v8

    const-string v2, "Authorization"

    invoke-interface {v5, v2}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->LOG:LO5/a;

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "{} target auth state: {}"

    invoke-virtual/range {p3 .. p3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v4

    invoke-interface {v2, v12, v4, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v4, Lorg/apache/hc/client5/http/auth/ChallengeType;->TARGET:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_1
    const-string v2, "Proxy-Authorization"

    invoke-interface {v5, v2}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->isTunnelled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "{} proxy auth state: {}"

    invoke-virtual/range {p4 .. p4}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v3

    invoke-interface {v0, v12, v3, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v4, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object/from16 v6, p4

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    move-object v6, v3

    goto :goto_0

    :cond_3
    move-object v6, v8

    :goto_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move-object/from16 v2, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p9

    move-object/from16 v3, p10

    move-object v9, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v15}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;)V

    move-object v5, v2

    invoke-interface {v15, v5, v13, v14, v0}, Lorg/apache/hc/client5/http/async/AsyncExecChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

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

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v3, Lorg/apache/hc/client5/http/auth/ChallengeType;->TARGET:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v5, p1

    move-object v2, p4

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v7

    move-object v8, v2

    move-object v9, v3

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz v1, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {v1, p4, v0, p1, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p4, v0, p1, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnNoChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v2, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    move-object v5, p2

    move-object/from16 v4, p6

    move-object v3, v2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v1

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

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

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->targetAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    move-object/from16 v4, p6

    move-object v7, v6

    move-object v2, v8

    move-object v3, v9

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p2

    move-object v6, v7

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p4, v0, p1, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnResponse(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_4
    return p2

    :cond_5
    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    move-object v5, p2

    move-object v1, p3

    move-object v2, v3

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    iget-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz p4, :cond_6

    invoke-virtual {p4, p3, v10, p2, v6}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateOnResponse(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_6
    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 11

    sget-object v1, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v3

    iget-object v4, p3, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {v5, v2}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V

    invoke-virtual {v1, v5}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->build()Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, p1

    :goto_0
    invoke-interface {v6}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/apache/hc/core5/http/HttpRequest;->setScheme(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v6}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V

    invoke-interface {v6, v1}, Lorg/apache/hc/core5/http/HttpRequest;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V

    :cond_3
    invoke-interface {v6}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/URIAuthority;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance v2, Lorg/apache/hc/core5/http/HttpHost;

    invoke-interface {v6}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-interface {v6}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Lorg/apache/hc/client5/http/SchemePortResolver;->resolve(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)I

    move-result v1

    invoke-direct {v2, v5, v7, v1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6}, Lorg/apache/hc/client5/http/impl/RequestSupport;->extractPathPrefix(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v5

    if-eqz v3, :cond_4

    invoke-virtual {v4, v3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v7

    goto :goto_1

    :cond_4
    new-instance v7, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-direct {v7}, Lorg/apache/hc/client5/http/auth/AuthExchange;-><init>()V

    :goto_1
    invoke-virtual {v5}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getPathPrefix()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getPathPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_5
    invoke-virtual {v5}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getPathPrefix()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-virtual {v5, v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->setPathPrefix(Ljava/lang/String;)V

    :cond_6
    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    if-eqz v9, :cond_7

    invoke-virtual {v9, v2, v1, v5, v4}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadPreemptively(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-eqz v3, :cond_7

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->authCacheKeeper:Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10, v7, v4}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadPreemptively(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_7
    move-object v3, v5

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    move-object v4, v7

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->internalExecute(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void

    :cond_8
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Request URI authority contains deprecated userinfo component"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v1, "Direct execution of CONNECT is not allowed"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
