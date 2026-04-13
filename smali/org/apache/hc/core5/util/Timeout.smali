.class public Lorg/apache/hc/core5/util/Timeout;
.super Lorg/apache/hc/core5/util/TimeValue;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DISABLED:Lorg/apache/hc/core5/util/Timeout;

.field public static final ONE_MILLISECOND:Lorg/apache/hc/core5/util/Timeout;

.field public static final ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    sput-object v1, Lorg/apache/hc/core5/util/Timeout;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/Timeout;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/util/Timeout;->ONE_MILLISECOND:Lorg/apache/hc/core5/util/Timeout;

    sput-object v1, Lorg/apache/hc/core5/util/Timeout;->DISABLED:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "duration"

    invoke-static {p1, p2, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide p1

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/util/TimeValue;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static defaultsToDisabled(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/Timeout;->DISABLED:Lorg/apache/hc/core5/util/Timeout;

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->defaultsTo(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public static of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/util/Timeout;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/hc/core5/util/Timeout;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static of(Ljava/time/Duration;)Lorg/apache/hc/core5/util/Timeout;
    .locals 7

    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/a;->b(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/a;->a(Ljava/time/Duration;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, p0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/a;->w(Ljava/time/Duration;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/a;->y(Ljava/time/Duration;)J

    move-result-wide v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, p0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static ofDays(J)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static ofHours(J)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static ofMicroseconds(J)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static ofMinutes(J)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static ofNanoseconds(J)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/hc/core5/util/Timeout;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/util/TimeValue;->parse(Ljava/lang/String;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->toTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isDisabled()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/Timeout;->isDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
