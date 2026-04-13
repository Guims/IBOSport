.class public Lorg/apache/hc/core5/util/TimeoutValueException;
.super Ljava/util/concurrent/TimeoutException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final actual:Lorg/apache/hc/core5/util/Timeout;

.field private final deadline:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 2

    const-string v0, "Timeout deadline: %s, actual: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/hc/core5/util/TimeoutValueException;->actual:Lorg/apache/hc/core5/util/Timeout;

    iput-object p1, p0, Lorg/apache/hc/core5/util/TimeoutValueException;->deadline:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public static fromMilliseconds(JJ)Lorg/apache/hc/core5/util/TimeoutValueException;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/util/TimeoutValueException;

    invoke-static {p0, p1}, Lorg/apache/hc/core5/util/TimeoutValueException;->min0(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p0

    invoke-static {p2, p3}, Lorg/apache/hc/core5/util/TimeoutValueException;->min0(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/util/TimeoutValueException;-><init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;)V

    return-object v0
.end method

.method private static min0(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public getActual()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeoutValueException;->actual:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getDeadline()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/util/TimeoutValueException;->deadline:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method
