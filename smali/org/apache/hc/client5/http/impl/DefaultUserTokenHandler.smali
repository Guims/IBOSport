.class public Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/UserTokenHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lorg/apache/hc/client5/http/auth/AuthExchange;)Ljava/security/Principal;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getAuthScheme()Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p3

    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/HttpHost;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/hc/client5/http/auth/AuthExchange;)Ljava/security/Principal;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/hc/client5/http/auth/AuthExchange;)Ljava/security/Principal;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p3}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/client5/http/impl/DefaultUserTokenHandler;->getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
