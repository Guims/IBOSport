.class public Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;
.super Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;

# interfaces
.implements Lorg/apache/hc/client5/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final datePatterns:[Ljava/time/format/DateTimeFormatter;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    const-string v0, "Array of date patterns"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/time/format/DateTimeFormatter;

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;->datePatterns:[Ljava/time/format/DateTimeFormatter;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;->datePatterns:[Ljava/time/format/DateTimeFormatter;

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-static {v2}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-static {v2}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v2, v3}, LW3/h;->v(Ljava/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-static {v2}, LW3/h;->s(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/time/format/DateTimeFormatter;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;->datePatterns:[Ljava/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "expires"

    return-object v0
.end method

.method public parse(Lorg/apache/hc/client5/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/cookie/BasicExpiresHandler;->datePatterns:[Ljava/time/format/DateTimeFormatter;

    invoke-static {p2, v0}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/time/format/DateTimeFormatter;)Ljava/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/hc/client5/http/cookie/SetCookie;->setExpiryDate(Ljava/time/Instant;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    const-string v0, "Invalid \'expires\' attribute: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;

    const-string p2, "Missing value for \'expires\' attribute"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
