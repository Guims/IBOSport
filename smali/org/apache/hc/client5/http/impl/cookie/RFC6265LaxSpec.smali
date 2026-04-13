.class public Lorg/apache/hc/client5/http/impl/cookie/RFC6265LaxSpec;
.super Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecBase;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;

    sget-object v1, Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicPathHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicDomainHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicSecureHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicHttpOnlyHandler;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxExpiresHandler;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecBase;-><init>([Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/cookie/RFC6265CookieSpecBase;-><init>([Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc6265-lax"

    return-object v0
.end method
