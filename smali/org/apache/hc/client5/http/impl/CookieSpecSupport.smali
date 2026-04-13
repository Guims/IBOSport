.class public final Lorg/apache/hc/client5/http/impl/CookieSpecSupport;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Lorg/apache/hc/core5/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->getDefault()Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/CookieSpecSupport;->createDefault(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/core5/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public static createDefault(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/core5/http/config/Lookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;",
            ")",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/CookieSpecSupport;->createDefaultBuilder(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object p0

    return-object p0
.end method

.method public static createDefaultBuilder()Lorg/apache/hc/core5/http/config/RegistryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/config/RegistryBuilder<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->getDefault()Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/CookieSpecSupport;->createDefaultBuilder(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultBuilder(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)Lorg/apache/hc/core5/http/config/RegistryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;",
            ")",
            "Lorg/apache/hc/core5/http/config/RegistryBuilder<",
            "Lorg/apache/hc/client5/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;

    sget-object v2, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->RELAXED:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    invoke-direct {v1, v2, p0}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;-><init>(Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    const-string v2, "relaxed"

    invoke-virtual {v0, v2, v1}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;

    sget-object v2, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;->STRICT:Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;

    invoke-direct {v1, v2, p0}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory;-><init>(Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecFactory$CompatibilityLevel;Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    const-string p0, "strict"

    invoke-virtual {v0, p0, v1}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p0

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/IgnoreCookieSpecFactory;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/cookie/IgnoreCookieSpecFactory;-><init>()V

    const-string v1, "ignore"

    invoke-virtual {p0, v1, v0}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p0

    return-object p0
.end method
