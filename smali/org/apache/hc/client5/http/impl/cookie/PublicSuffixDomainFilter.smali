.class public Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final handler:Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

.field private final localDomainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;Lorg/apache/hc/client5/http/psl/PublicSuffixList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cookie handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Public suffix list"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    new-instance p1, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->createLocalDomainMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->localDomainMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cookie handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    const-string p1, "Public suffix matcher"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->createLocalDomainMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->localDomainMap:Ljava/util/Map;

    return-void
.end method

.method private static createLocalDomainMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, ".localhost."

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ".test."

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ".local."

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ".local"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ".localdomain"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static decorate(Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;
    .locals 1

    const-string v0, "Cookie attribute handler"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;-><init>(Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/hc/client5/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->localDomainMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-virtual {v2, v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-virtual {v2, v0}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/cookie/CookieAttributeHandler;->match(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lorg/apache/hc/client5/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/hc/client5/http/cookie/SetCookie;Ljava/lang/String;)V

    return-void
.end method

.method public validate(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)V

    return-void
.end method
