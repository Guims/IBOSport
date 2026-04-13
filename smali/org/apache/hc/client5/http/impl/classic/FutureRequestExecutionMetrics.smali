.class public final Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;
    }
.end annotation


# instance fields
.field private final activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

.field private final failedConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

.field private final requests:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

.field private final scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

.field private final successfulConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

.field private final tasks:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->requests:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->tasks:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    return-void
.end method


# virtual methods
.method public getActiveConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public getFailedConnectionAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedConnections()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public getRequestAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->requests:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->requests:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequests()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->requests:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public getScheduledConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScheduledConnections()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public getSuccessfulConnectionAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSuccessfulConnectionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSuccessfulConnections()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public getTaskAverageDuration()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->tasks:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaskCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->tasks:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTasks()Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->tasks:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[activeConnections="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", successfulConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failedConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->requests:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics;->tasks:Lorg/apache/hc/client5/http/impl/classic/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
