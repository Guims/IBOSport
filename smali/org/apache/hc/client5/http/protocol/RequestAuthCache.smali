.class public Lorg/apache/hc/client5/http/protocol/RequestAuthCache;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/protocol/RequestAuthCache;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/protocol/RequestAuthCache;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 8

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "HTTP context"

    invoke-static {p3, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthCache()Lorg/apache/hc/client5/http/auth/AuthCache;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/apache/hc/client5/http/protocol/RequestAuthCache;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "{} Auth cache not set in the context"

    invoke-interface {p1, p3, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getCredentialsProvider()Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Lorg/apache/hc/client5/http/protocol/RequestAuthCache;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "{} Credentials provider not set in the context"

    invoke-interface {p1, p3, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/hc/client5/http/RouteInfo;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p1, Lorg/apache/hc/client5/http/protocol/RequestAuthCache;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "{} Route info not set in the context"

    invoke-interface {p1, p3, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Lorg/apache/hc/core5/http/HttpHost;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    invoke-virtual {p2, v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v4

    sget-object v5, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->UNCHALLENGED:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    const-string v6, "{} Re-using cached \'{}\' auth scheme for {}"

    if-ne v4, v5, :cond_4

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/RequestSupport;->extractPathPrefix(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lorg/apache/hc/client5/http/auth/AuthCache;->get(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v4, Lorg/apache/hc/client5/http/protocol/RequestAuthCache;->LOG:LO5/a;

    invoke-interface {v4}, LO5/a;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {p3, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v6, v2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3, p1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->select(Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    :cond_4
    invoke-interface {v1}, Lorg/apache/hc/client5/http/RouteInfo;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, p1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v1

    if-ne v1, v5, :cond_6

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/client5/http/auth/AuthCache;->get(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lorg/apache/hc/client5/http/protocol/RequestAuthCache;->LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v6, p1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p2, v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->select(Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    :cond_6
    return-void
.end method
