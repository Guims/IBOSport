.class public Lorg/apache/hc/client5/http/protocol/HttpClientContext;
.super Lorg/apache/hc/core5/http/protocol/HttpCoreContext;


# static fields
.field public static final AUTHSCHEME_REGISTRY:Ljava/lang/String; = "http.authscheme-registry"

.field public static final AUTH_CACHE:Ljava/lang/String; = "http.auth.auth-cache"

.field public static final AUTH_EXCHANGE_MAP:Ljava/lang/String; = "http.auth.exchanges"

.field public static final COOKIESPEC_REGISTRY:Ljava/lang/String; = "http.cookiespec-registry"

.field public static final COOKIE_ORIGIN:Ljava/lang/String; = "http.cookie-origin"

.field public static final COOKIE_SPEC:Ljava/lang/String; = "http.cookie-spec"

.field public static final COOKIE_STORE:Ljava/lang/String; = "http.cookie-store"

.field public static final CREDS_PROVIDER:Ljava/lang/String; = "http.auth.credentials-provider"

.field public static final EXCHANGE_ID:Ljava/lang/String; = "http.exchange-id"

.field public static final HTTP_ROUTE:Ljava/lang/String; = "http.route"

.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"

.field public static final REQUEST_CONFIG:Ljava/lang/String; = "http.request-config"

.field public static final USER_TOKEN:Ljava/lang/String; = "http.user-token"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;-><init>(Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public static adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;
    .locals 1

    const-string v0, "HTTP context"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;-><init>(Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object v0
.end method

.method public static create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    new-instance v1, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;-><init>(Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object v0
.end method

.method private getLookup(Ljava/lang/String;)Lorg/apache/hc/core5/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lorg/apache/hc/core5/http/config/Lookup;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/config/Lookup;

    return-object p1
.end method


# virtual methods
.method public getAuthCache()Lorg/apache/hc/client5/http/auth/AuthCache;
    .locals 2

    const-string v0, "http.auth.auth-cache"

    const-class v1, Lorg/apache/hc/client5/http/auth/AuthCache;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/auth/AuthCache;

    return-object v0
.end method

.method public getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/auth/AuthExchange;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getAuthExchanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/auth/AuthExchange;",
            ">;"
        }
    .end annotation

    const-string v0, "http.auth.exchanges"

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getAuthSchemeRegistry()Lorg/apache/hc/core5/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation

    const-string v0, "http.authscheme-registry"

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getLookup(Ljava/lang/String;)Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieOrigin()Lorg/apache/hc/client5/http/cookie/CookieOrigin;
    .locals 2

    const-string v0, "http.cookie-origin"

    const-class v1, Lorg/apache/hc/client5/http/cookie/CookieOrigin;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/cookie/CookieOrigin;

    return-object v0
.end method

.method public getCookieSpec()Lorg/apache/hc/client5/http/cookie/CookieSpec;
    .locals 2

    const-string v0, "http.cookie-spec"

    const-class v1, Lorg/apache/hc/client5/http/cookie/CookieSpec;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/cookie/CookieSpec;

    return-object v0
.end method

.method public getCookieSpecRegistry()Lorg/apache/hc/core5/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation

    const-string v0, "http.cookiespec-registry"

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getLookup(Ljava/lang/String;)Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieStore()Lorg/apache/hc/client5/http/cookie/CookieStore;
    .locals 2

    const-string v0, "http.cookie-store"

    const-class v1, Lorg/apache/hc/client5/http/cookie/CookieStore;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/cookie/CookieStore;

    return-object v0
.end method

.method public getCredentialsProvider()Lorg/apache/hc/client5/http/auth/CredentialsProvider;
    .locals 2

    const-string v0, "http.auth.credentials-provider"

    const-class v1, Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    return-object v0
.end method

.method public getExchangeId()Ljava/lang/String;
    .locals 2

    const-string v0, "http.exchange-id"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRoute()Lorg/apache/hc/client5/http/RouteInfo;
    .locals 2

    const-string v0, "http.route"

    const-class v1, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/RouteInfo;

    return-object v0
.end method

.method public getRedirectLocations()Lorg/apache/hc/client5/http/protocol/RedirectLocations;
    .locals 2

    const-string v0, "http.protocol.redirect-locations"

    const-class v1, Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    return-object v0
.end method

.method public getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;
    .locals 2

    const-string v0, "http.request-config"

    const-class v1, Lorg/apache/hc/client5/http/config/RequestConfig;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/config/RequestConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/Object;
    .locals 1

    const-string v0, "http.user-token"

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserToken(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "http.user-token"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resetAuthExchange(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthScheme;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;-><init>()V

    invoke-virtual {v0, p2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->select(Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchanges()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAuthCache(Lorg/apache/hc/client5/http/auth/AuthCache;)V
    .locals 1

    const-string v0, "http.auth.auth-cache"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAuthExchange(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthExchange;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAuthSchemeRegistry(Lorg/apache/hc/core5/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http.authscheme-registry"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCookieSpecRegistry(Lorg/apache/hc/core5/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http.cookiespec-registry"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCookieStore(Lorg/apache/hc/client5/http/cookie/CookieStore;)V
    .locals 1

    const-string v0, "http.cookie-store"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCredentialsProvider(Lorg/apache/hc/client5/http/auth/CredentialsProvider;)V
    .locals 1

    const-string v0, "http.auth.credentials-provider"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExchangeId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http.exchange-id"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V
    .locals 1

    const-string v0, "http.request-config"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserToken(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "http.user-token"

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
