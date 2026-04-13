.class public Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final compatibilityLevel:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

.field private volatile cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

.field private final publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->RELAXED:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;-><init>(Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->RELAXED:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->compatibilityLevel:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->RELAXED:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;-><init>(Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/cookie/CookieSpec;
    .locals 11

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    if-nez p1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$2;->$SwitchMap$org$apache$hc$client5$http$impl$cookie$RFC6265CookieSpecFactory$CompatibilityLevel:[I

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->compatibilityLevel:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    new-instance p1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265LaxSpec;

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-static {v0, v7}, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    move-result-object v0

    new-array v4, v4, [Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    sget-object v7, Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;

    aput-object v7, v4, v3

    aput-object v0, v4, v6

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;

    aput-object v0, v4, v5

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;

    aput-object v0, v4, v2

    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;

    aput-object v0, v4, v1

    invoke-direct {p1, v4}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265LaxSpec;-><init>([Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265LaxSpec;

    new-instance v7, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$1;

    invoke-direct {v7, p0}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$1;-><init>(Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;)V

    sget-object v8, Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-static {v8, v9}, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    move-result-object v8

    new-instance v9, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;

    sget-object v10, Lorg/apache/hc/client5/http/utils/DateUtils;->STANDARD_PATTERNS:[Ljava/time/format/DateTimeFormatter;

    invoke-direct {v9, v10}, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/time/format/DateTimeFormatter;)V

    new-array v0, v0, [Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    aput-object v7, v0, v3

    aput-object v8, v0, v6

    sget-object v3, Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;

    aput-object v3, v0, v5

    sget-object v3, Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;

    aput-object v3, v0, v2

    sget-object v2, Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;

    aput-object v2, v0, v1

    aput-object v9, v0, v4

    invoke-direct {p1, v0}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265LaxSpec;-><init>([Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265StrictSpec;

    sget-object v7, Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->publicSuffixMatcher:Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    invoke-static {v7, v8}, Lorg/apache/hc/client5/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    move-result-object v7

    new-instance v8, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;

    sget-object v9, Lorg/apache/hc/client5/http/utils/DateUtils;->STANDARD_PATTERNS:[Ljava/time/format/DateTimeFormatter;

    invoke-direct {v8, v9}, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/time/format/DateTimeFormatter;)V

    new-array v0, v0, [Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    sget-object v9, Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;

    aput-object v9, v0, v3

    aput-object v7, v0, v6

    sget-object v3, Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;

    aput-object v3, v0, v5

    sget-object v3, Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;

    aput-object v3, v0, v2

    sget-object v2, Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;

    aput-object v2, v0, v1

    aput-object v8, v0, v4

    invoke-direct {p1, v0}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265StrictSpec;-><init>([Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;->cookieSpec:Lorg/apache/hc/client5/http/cookie/CookieSpec;

    return-object p1
.end method
