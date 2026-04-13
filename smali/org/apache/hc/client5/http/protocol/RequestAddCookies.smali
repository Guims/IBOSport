.class public Lorg/apache/hc/client5/http/protocol/RequestAddCookies;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/protocol/RequestAddCookies;

.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/RequestAddCookies;

    const-class v0, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 11

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "HTTP context"

    invoke-static {p3, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getCookieStore()Lorg/apache/hc/client5/http/cookie/CookieStore;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_13

    const-string p2, "{} Cookie store not specified in HTTP context"

    invoke-interface {p1, v0, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getCookieSpecRegistry()Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object p1, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_13

    const-string p2, "{} CookieSpec registry not specified in HTTP context"

    invoke-interface {p1, v0, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/hc/client5/http/RouteInfo;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object p1, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_13

    const-string p2, "{} Connection route not set in the context"

    invoke-interface {p1, v0, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/hc/client5/http/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "strict"

    :cond_4
    sget-object v5, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->LOG:LO5/a;

    invoke-interface {v5}, LO5/a;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "{} Cookie spec selected: {}"

    invoke-interface {v5, v0, v4, v6}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/hc/core5/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v7, "/"

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_8

    invoke-interface {v3}, Lorg/apache/hc/client5/http/RouteInfo;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v8

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lorg/apache/hc/core5/net/URIAuthority;->getPort()I

    move-result v6

    goto :goto_1

    :cond_9
    const/4 v6, -0x1

    :goto_1
    if-gez v6, :cond_a

    invoke-interface {v3}, Lorg/apache/hc/client5/http/RouteInfo;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v6

    :cond_a
    new-instance v9, Lorg/apache/hc/client5/http/cookie/CookieOrigin;

    invoke-interface {v3}, Lorg/apache/hc/client5/http/RouteInfo;->isSecure()Z

    move-result v3

    invoke-direct {v9, v8, v6, v7, v3}, Lorg/apache/hc/client5/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v4}, Lorg/apache/hc/core5/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;

    if-nez v2, :cond_b

    invoke-interface {v5}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "{} Unsupported cookie spec: {}"

    invoke-interface {v5, v0, v4, p1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-interface {v2, p2}, Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;->create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/cookie/CookieSpec;

    move-result-object p2

    invoke-interface {v1}, Lorg/apache/hc/client5/http/cookie/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, LW3/h;->n()Ljava/time/Instant;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/hc/client5/http/cookie/Cookie;

    invoke-interface {v6, v4}, Lorg/apache/hc/client5/http/cookie/Cookie;->isExpired(Ljava/time/Instant;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-interface {p2, v6, v9}, Lorg/apache/hc/client5/http/cookie/CookieSpec;->match(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->LOG:LO5/a;

    invoke-interface {v7}, LO5/a;->c()Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "{} Cookie {} match {}"

    filled-new-array {v0, v6, v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v8, v10}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    sget-object v5, Lorg/apache/hc/client5/http/protocol/RequestAddCookies;->LOG:LO5/a;

    invoke-interface {v5}, LO5/a;->c()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "{} Cookie {} expired"

    invoke-interface {v5, v0, v6, v7}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    const/4 v5, 0x1

    goto :goto_2

    :cond_10
    if-eqz v5, :cond_11

    invoke-interface {v1, v4}, Lorg/apache/hc/client5/http/cookie/CookieStore;->clearExpired(Ljava/time/Instant;)Z

    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {p2, v3}, Lorg/apache/hc/client5/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http/Header;

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_3

    :cond_12
    const-string p1, "http.cookie-spec"

    invoke-interface {p3, p1, p2}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "http.cookie-origin"

    invoke-interface {p3, p1, v9}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_4
    return-void
.end method
