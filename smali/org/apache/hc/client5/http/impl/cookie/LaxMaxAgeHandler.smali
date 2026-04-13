.class public Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;
.super Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;

.field private static final MAX_AGE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;->INSTANCE:Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;

    const-string v0, "^\\-?[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

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
    .locals 3

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/apache/hc/client5/http/impl/cookie/LaxMaxAgeHandler;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p2, :cond_1

    invoke-static {}, LW3/h;->n()Ljava/time/Instant;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, LW3/h;->p(Ljava/time/Instant;J)Ljava/time/Instant;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->f()Ljava/time/Instant;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Lorg/apache/hc/client5/http/cookie/SetCookie;->setExpiryDate(Ljava/time/Instant;)V

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
