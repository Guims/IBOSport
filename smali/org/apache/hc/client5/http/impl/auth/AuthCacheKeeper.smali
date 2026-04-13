.class public final Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-void
.end method

.method private clearCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 3

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthCache()Lorg/apache/hc/client5/http/auth/AuthCache;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    filled-new-array {p3, p1, v2}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "{} Clearing cached auth scheme for {}{}"

    invoke-interface {v1, v2, p3}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/auth/AuthCache;->remove(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private loadFromCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 3

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthCache()Lorg/apache/hc/client5/http/auth/AuthCache;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/auth/AuthCache;->get(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    filled-new-array {p3, v2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "{} Re-using cached \'{}\' auth scheme for {}{}"

    invoke-interface {v1, p2, p1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScheme;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/hc/client5/http/auth/AuthStateCacheable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthCache()Lorg/apache/hc/client5/http/auth/AuthCache;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    invoke-virtual {p4, v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setAuthCache(Lorg/apache/hc/client5/http/auth/AuthCache;)V

    :cond_0
    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    move-object v3, p2

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    filled-new-array {p4, v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p4

    const-string v2, "{} Caching \'{}\' auth scheme for {}{}"

    invoke-interface {v1, v2, p4}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/client5/http/auth/AuthCache;->put(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public loadPreemptively(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->UNCHALLENGED:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    if-ne v0, v1, :cond_1

    invoke-static {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadFromCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->loadFromCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->select(Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    :cond_1
    return-void
.end method

.method public updateOnChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-static {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->clearCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    return-void
.end method

.method public updateOnNoChallenge(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->SUCCESS:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getAuthScheme()Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object p3

    invoke-static {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->updateCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScheme;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    :cond_0
    return-void
.end method

.method public updateOnResponse(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object p3

    sget-object v0, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->FAILURE:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    if-ne p3, v0, :cond_0

    invoke-static {p4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/auth/AuthCacheKeeper;->clearCache(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    :cond_0
    return-void
.end method
