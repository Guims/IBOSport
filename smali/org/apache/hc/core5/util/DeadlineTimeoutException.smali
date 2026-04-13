.class public Lorg/apache/hc/core5/util/DeadlineTimeoutException;
.super Ljava/util/concurrent/TimeoutException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final deadline:Lorg/apache/hc/core5/util/Deadline;


# direct methods
.method private constructor <init>(Lorg/apache/hc/core5/util/Deadline;)V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/util/Deadline;->format(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/hc/core5/util/DeadlineTimeoutException;->deadline:Lorg/apache/hc/core5/util/Deadline;

    return-void
.end method

.method public static from(Lorg/apache/hc/core5/util/Deadline;)Lorg/apache/hc/core5/util/DeadlineTimeoutException;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/util/DeadlineTimeoutException;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/util/DeadlineTimeoutException;-><init>(Lorg/apache/hc/core5/util/Deadline;)V

    return-object v0
.end method


# virtual methods
.method public getDeadline()Lorg/apache/hc/core5/util/Deadline;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/util/DeadlineTimeoutException;->deadline:Lorg/apache/hc/core5/util/Deadline;

    return-object v0
.end method
