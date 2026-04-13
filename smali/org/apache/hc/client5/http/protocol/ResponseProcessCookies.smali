.class public Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpResponseInterceptor;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;

.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->INSTANCE:Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;

    const-class v0, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatCookie(Lorg/apache/hc/client5/http/cookie/Cookie;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/hc/client5/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/hc/client5/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "\", domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/hc/client5/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/hc/client5/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/hc/client5/http/cookie/Cookie;->getExpiryInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private processCookies(Ljava/lang/String;Ljava/util/Iterator;Lorg/apache/hc/client5/http/cookie/CookieSpec;Lorg/apache/hc/client5/http/cookie/CookieOrigin;Lorg/apache/hc/client5/http/cookie/CookieStore;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;",
            "Lorg/apache/hc/client5/http/cookie/CookieSpec;",
            "Lorg/apache/hc/client5/http/cookie/CookieOrigin;",
            "Lorg/apache/hc/client5/http/cookie/CookieStore;",
            ")V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/Header;

    :try_start_0
    invoke-interface {p3, v0, p4}, Lorg/apache/hc/client5/http/cookie/CookieSpec;->parse(Lorg/apache/hc/core5/http/Header;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/cookie/Cookie;
    :try_end_0
    .catch Lorg/apache/hc/client5/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p3, v2, p4}, Lorg/apache/hc/client5/http/cookie/CookieSpec;->validate(Lorg/apache/hc/client5/http/cookie/Cookie;Lorg/apache/hc/client5/http/cookie/CookieOrigin;)V

    invoke-interface {p5, v2}, Lorg/apache/hc/client5/http/cookie/CookieStore;->addCookie(Lorg/apache/hc/client5/http/cookie/Cookie;)V

    sget-object v3, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->LOG:LO5/a;

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "{} Cookie accepted [{}]"

    invoke-static {v2}, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->formatCookie(Lorg/apache/hc/client5/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5, v4}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/hc/client5/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->LOG:LO5/a;

    invoke-interface {v4}, LO5/a;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "{} Cookie rejected [{}] {}"

    invoke-static {v2}, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->formatCookie(Lorg/apache/hc/client5/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v5, v2}, LO5/a;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/hc/client5/http/cookie/MalformedCookieException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->LOG:LO5/a;

    invoke-interface {v2}, LO5/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{} Invalid cookie header: \"{}\". {}"

    invoke-interface {v2, v1, v0}, LO5/a;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 6

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "HTTP context"

    invoke-static {p3, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getCookieSpec()Lorg/apache/hc/client5/http/cookie/CookieSpec;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object p1, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "{} Cookie spec not specified in HTTP context"

    invoke-interface {p1, v1, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getCookieStore()Lorg/apache/hc/client5/http/cookie/CookieStore;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object p1, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "{} Cookie store not specified in HTTP context"

    invoke-interface {p1, v1, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getCookieOrigin()Lorg/apache/hc/client5/http/cookie/CookieOrigin;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object p1, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "{} Cookie origin not specified in HTTP context"

    invoke-interface {p1, v1, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string p2, "Set-Cookie"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/protocol/ResponseProcessCookies;->processCookies(Ljava/lang/String;Ljava/util/Iterator;Lorg/apache/hc/client5/http/cookie/CookieSpec;Lorg/apache/hc/client5/http/cookie/CookieOrigin;Lorg/apache/hc/client5/http/cookie/CookieStore;)V

    return-void
.end method
