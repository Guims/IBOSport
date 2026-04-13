.class public Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;
.super Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/BasicMaxAgeHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "max-age"

    return-object v0
.end method

.method public parse(Lorg/apache/hc/client5/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_0

    invoke-static {}, LW3/h;->n()Ljava/time/Instant;

    move-result-object p2

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, LW3/h;->p(Ljava/time/Instant;J)Ljava/time/Instant;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/hc/client5/http/cookie/SetCookie;->setExpiryDate(Ljava/time/Instant;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    const-string v0, "Negative \'max-age\' attribute: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    const-string v0, "Invalid \'max-age\' attribute: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    const-string p2, "Missing value for \'max-age\' attribute"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
