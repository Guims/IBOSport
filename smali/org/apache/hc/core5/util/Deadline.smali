.class public Lorg/apache/hc/core5/util/Deadline;
.super Ljava/lang/Object;


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field private static final DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field private static final INTERNAL_MAX_VALUE:J = 0x7fffffffffffffffL

.field private static final INTERNAL_MIN_VALUE:J

.field public static MAX_VALUE:Lorg/apache/hc/core5/util/Deadline;

.field public static MIN_VALUE:Lorg/apache/hc/core5/util/Deadline;


# instance fields
.field private volatile frozen:Z

.field private volatile lastCheck:J

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/util/Deadline;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/util/Deadline;-><init>(J)V

    sput-object v0, Lorg/apache/hc/core5/util/Deadline;->MAX_VALUE:Lorg/apache/hc/core5/util/Deadline;

    new-instance v0, Lorg/apache/hc/core5/util/Deadline;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/util/Deadline;-><init>(J)V

    sput-object v0, Lorg/apache/hc/core5/util/Deadline;->MIN_VALUE:Lorg/apache/hc/core5/util/Deadline;

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/entity/a;->r(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->s(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/util/Deadline;->DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    invoke-direct {p0}, Lorg/apache/hc/core5/util/Deadline;->setLastCheck()V

    return-void
.end method

.method public static calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;
    .locals 2

    invoke-static {p2}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    sget-object p0, Lorg/apache/hc/core5/util/Deadline;->MAX_VALUE:Lorg/apache/hc/core5/util/Deadline;

    return-object p0

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Deadline;->fromUnixMilliseconds(J)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/hc/core5/util/Deadline;->MAX_VALUE:Lorg/apache/hc/core5/util/Deadline;

    return-object p0
.end method

.method public static calculate(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p0

    return-object p0
.end method

.method public static fromUnixMilliseconds(J)Lorg/apache/hc/core5/util/Deadline;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/hc/core5/util/Deadline;->MAX_VALUE:Lorg/apache/hc/core5/util/Deadline;

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/apache/hc/core5/util/Deadline;->MIN_VALUE:Lorg/apache/hc/core5/util/Deadline;

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/hc/core5/util/Deadline;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/util/Deadline;-><init>(J)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/hc/core5/util/Deadline;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/util/Deadline;->DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0, p0}, Lorg/apache/hc/core5/http/nio/entity/a;->t(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/nio/entity/a;->q(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, LW3/h;->d(Ljava/time/Instant;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Deadline;->fromUnixMilliseconds(J)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p0

    return-object p0
.end method

.method private setLastCheck()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/util/Deadline;->frozen:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->lastCheck:J

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/hc/core5/util/Deadline;

    iget-wide v2, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    iget-wide v4, p1, Lorg/apache/hc/core5/util/Deadline;->value:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public format(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/Deadline;->formatTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/Deadline;->remaining()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Deadline: %s, %s overdue"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatTarget()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/hc/core5/util/Deadline;->DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    iget-wide v1, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    invoke-static {v1, v2}, LW3/h;->o(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {}, LC2/a;->p()Ljava/time/ZoneOffset;

    invoke-static {v1}, LC2/a;->o(Ljava/time/Instant;)Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/http/nio/entity/a;->g(Ljava/time/format/DateTimeFormatter;Ljava/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lorg/apache/hc/core5/util/Deadline;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/util/Deadline;->frozen:Z

    return-object p0
.end method

.method public getLastCheck()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->lastCheck:J

    return-wide v0
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public isBefore(J)Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isExpired()Z
    .locals 4

    invoke-direct {p0}, Lorg/apache/hc/core5/util/Deadline;->setLastCheck()V

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    iget-wide v2, p0, Lorg/apache/hc/core5/util/Deadline;->lastCheck:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMax()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMin()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotExpired()Z
    .locals 4

    invoke-direct {p0}, Lorg/apache/hc/core5/util/Deadline;->setLastCheck()V

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    iget-wide v2, p0, Lorg/apache/hc/core5/util/Deadline;->lastCheck:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public min(Lorg/apache/hc/core5/util/Deadline;)Lorg/apache/hc/core5/util/Deadline;
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    iget-wide v2, p1, Lorg/apache/hc/core5/util/Deadline;->value:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public remaining()J
    .locals 4

    invoke-direct {p0}, Lorg/apache/hc/core5/util/Deadline;->setLastCheck()V

    iget-wide v0, p0, Lorg/apache/hc/core5/util/Deadline;->value:J

    iget-wide v2, p0, Lorg/apache/hc/core5/util/Deadline;->lastCheck:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public remainingTimeValue()Lorg/apache/hc/core5/util/TimeValue;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/Deadline;->remaining()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/Deadline;->formatTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
