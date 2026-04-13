.class public Lorg/apache/hc/core5/util/TimeValue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/hc/core5/util/TimeValue;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field static final INT_UNDEFINED:I = -0x1

.field public static final MAX_VALUE:Lorg/apache/hc/core5/util/TimeValue;

.field public static final NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

.field public static final NEG_ONE_SECOND:Lorg/apache/hc/core5/util/TimeValue;

.field public static final ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;


# instance fields
.field private final duration:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofDays(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/util/TimeValue;->MAX_VALUE:Lorg/apache/hc/core5/util/TimeValue;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v3

    sput-object v3, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    sput-object v1, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_SECOND:Lorg/apache/hc/core5/util/TimeValue;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    const-string p1, "timeUnit"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static asBoundInt(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p0, p0

    return p0
.end method

.method public static defaultsTo(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static defaultsToNegativeOneMillisecond(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->defaultsTo(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static defaultsToNegativeOneSecond(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_SECOND:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->defaultsTo(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static defaultsToZeroMilliseconds(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->defaultsTo(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private min(Ljava/util/concurrent/TimeUnit;)Ljava/util/concurrent/TimeUnit;
    .locals 2

    invoke-direct {p0}, Lorg/apache/hc/core5/util/TimeValue;->scale()I

    move-result v0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/util/TimeValue;->scale(Ljava/util/concurrent/TimeUnit;)I

    move-result v1

    if-le v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    return-object p1
.end method

.method public static of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/util/TimeValue;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/hc/core5/util/TimeValue;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static of(Ljava/time/Duration;)Lorg/apache/hc/core5/util/TimeValue;
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

    invoke-static {v2, v3, p0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/a;->w(Ljava/time/Duration;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/a;->y(Ljava/time/Duration;)J

    move-result-wide v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, p0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofDays(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofHours(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofMicroseconds(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofMilliseconds(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofMinutes(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofNanoseconds(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected format for <Long><SPACE><java.util.concurrent.TimeUnit>: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scale()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->scale(Ljava/util/concurrent/TimeUnit;)I

    move-result v0

    return v0
.end method

.method private scale(Ljava/util/concurrent/TimeUnit;)I
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/TimeValue$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x3

    return p1

    :pswitch_5
    const/4 p1, 0x2

    return p1

    :pswitch_6
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/util/TimeValue$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->s()Ljava/time/temporal/ChronoUnit;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->D()Ljava/time/temporal/ChronoUnit;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->C()Ljava/time/temporal/ChronoUnit;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->B()Ljava/time/temporal/ChronoUnit;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->A()Ljava/time/temporal/ChronoUnit;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->z()Ljava/time/temporal/ChronoUnit;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->x()Ljava/time/temporal/ChronoUnit;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/util/TimeValue;->compareTo(Lorg/apache/hc/core5/util/TimeValue;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/hc/core5/util/TimeValue;)I
    .locals 5

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->min(Ljava/util/concurrent/TimeUnit;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->convert(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/TimeValue;->convert(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public convert(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    const-string v0, "timeUnit"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v0, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    iget-object v2, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public divide(J)Lorg/apache/hc/core5/util/TimeValue;
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    div-long/2addr v0, p1

    iget-object p1, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    return-object p1
.end method

.method public divide(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 2

    invoke-virtual {p0, p3}, Lorg/apache/hc/core5/util/TimeValue;->convert(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    div-long/2addr v0, p1

    invoke-static {v0, v1, p3}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/core5/util/TimeValue;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/hc/core5/util/TimeValue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/util/TimeValue;->convert(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/util/TimeValue;->convert(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    return-wide v0
.end method

.method public getTimeUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/util/TimeValue;->convert(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public min(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/util/TimeValue;->compareTo(Lorg/apache/hc/core5/util/TimeValue;)I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public sleep()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    return-void
.end method

.method public timedJoin(Ljava/lang/Thread;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->timedJoin(Ljava/lang/Thread;J)V

    return-void
.end method

.method public timedWait(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    return-void
.end method

.method public toDays()J
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toDuration()Ljava/time/Duration;
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/hc/core5/http/nio/entity/a;->o()Ljava/time/Duration;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2}, Lorg/apache/hc/core5/util/TimeValue;->toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljava/time/temporal/ChronoUnit;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/http/nio/entity/a;->p(JLjava/time/temporal/ChronoUnit;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toHours()J
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMicroseconds()J
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMilliseconds()J
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillisecondsIntBound()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->asBoundInt(J)I

    move-result v0

    return v0
.end method

.method public toMinutes()J
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toNanoseconds()J
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds()J
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSecondsIntBound()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->toSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->asBoundInt(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 3

    iget-wide v0, p0, Lorg/apache/hc/core5/util/TimeValue;->duration:J

    iget-object v2, p0, Lorg/apache/hc/core5/util/TimeValue;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method
