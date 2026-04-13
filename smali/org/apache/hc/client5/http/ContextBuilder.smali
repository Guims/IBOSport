.class public Lorg/apache/hc/client5/http/ContextBuilder;
.super Ljava/lang/Object;


# instance fields
.field private authCache:Lorg/apache/hc/client5/http/auth/AuthCache;

.field private authSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/client5/http/auth/AuthScheme;",
            ">;"
        }
    .end annotation
.end field

.field private authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field

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

.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/ContextBuilder;

    sget-object v1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/ContextBuilder;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    return-object v0
.end method

.method public static create(Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/ContextBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/ContextBuilder;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/protocol/HttpClientContext;
    .locals 4

    new-instance v0, Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    new-instance v1, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;-><init>(Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setCookieSpecRegistry(Lorg/apache/hc/core5/http/config/Lookup;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setAuthSchemeRegistry(Lorg/apache/hc/core5/http/config/Lookup;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setCookieStore(Lorg/apache/hc/client5/http/cookie/CookieStore;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setCredentialsProvider(Lorg/apache/hc/client5/http/auth/CredentialsProvider;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authCache:Lorg/apache/hc/client5/http/auth/AuthCache;

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setAuthCache(Lorg/apache/hc/client5/http/auth/AuthCache;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authSchemeMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http/HttpHost;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/auth/AuthScheme;

    invoke-virtual {v0, v3, v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->resetAuthExchange(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public preemptiveAuth(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthScheme;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authSchemeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authSchemeMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authSchemeMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-static {p1, v1}, Lorg/apache/hc/client5/http/routing/RoutingSupport;->normalize(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public preemptiveBasicAuth(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;-><init>(Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, p2}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->initPreemptive(Lorg/apache/hc/client5/http/auth/Credentials;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/ContextBuilder;->preemptiveAuth(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthScheme;)Lorg/apache/hc/client5/http/ContextBuilder;

    return-object p0
.end method

.method public useAuthCache(Lorg/apache/hc/client5/http/auth/AuthCache;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authCache:Lorg/apache/hc/client5/http/auth/AuthCache;

    return-object p0
.end method

.method public useAuthSchemeRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/ContextBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public useCookieSpecRegistry(Lorg/apache/hc/core5/http/config/Lookup;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;)",
            "Lorg/apache/hc/client5/http/ContextBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->cookieSpecRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    return-object p0
.end method

.method public useCookieStore(Lorg/apache/hc/client5/http/cookie/CookieStore;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->cookieStore:Lorg/apache/hc/client5/http/cookie/CookieStore;

    return-object p0
.end method

.method public useCredentialsProvider(Lorg/apache/hc/client5/http/auth/CredentialsProvider;)Lorg/apache/hc/client5/http/ContextBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/ContextBuilder;->credentialsProvider:Lorg/apache/hc/client5/http/auth/CredentialsProvider;

    return-object p0
.end method
