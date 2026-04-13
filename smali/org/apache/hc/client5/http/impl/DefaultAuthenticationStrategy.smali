.class public Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/AuthenticationStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->LOG:LO5/a;

    new-instance v0, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    const-string v0, "Digest"

    const-string v1, "Basic"

    const-string v2, "Negotiate"

    const-string v3, "Kerberos"

    const-string v4, "NTLM"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Lorg/apache/hc/client5/http/auth/ChallengeType;Ljava/util/Map;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/auth/ChallengeType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/auth/AuthChallenge;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/client5/http/auth/AuthScheme;",
            ">;"
        }
    .end annotation

    const-string v0, "ChallengeType"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Map of auth challenges"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthSchemeRegistry()Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "{} Auth scheme registry not set in the context"

    invoke-interface {p1, v1, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    sget-object v4, Lorg/apache/hc/client5/http/auth/ChallengeType;->TARGET:Lorg/apache/hc/client5/http/auth/ChallengeType;

    if-ne p1, v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getTargetPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getProxyPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    :cond_2
    sget-object v0, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "{} Authentication schemes in the order of preference: {}"

    invoke-interface {v0, v1, p1, v4}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/hc/client5/http/auth/AuthChallenge;

    if-eqz v4, :cond_6

    invoke-interface {v3, v0}, Lorg/apache/hc/core5/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;

    if-nez v4, :cond_5

    sget-object v4, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->LOG:LO5/a;

    invoke-interface {v4}, LO5/a;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "{} Authentication scheme {} not supported"

    invoke-interface {v4, v1, v0, v5}, LO5/a;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {v4, p3}, Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;->create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object v4, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;->LOG:LO5/a;

    invoke-interface {v4}, LO5/a;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "{} Challenge for {} authentication scheme not available"

    invoke-interface {v4, v1, v0, v5}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-object v2
.end method
