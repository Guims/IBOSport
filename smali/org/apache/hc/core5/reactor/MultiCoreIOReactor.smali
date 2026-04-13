.class Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOReactor;


# instance fields
.field private final ioReactors:[Lorg/apache/hc/core5/reactor/IOReactor;

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/reactor/IOReactorStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final threads:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>([Lorg/apache/hc/core5/reactor/IOReactor;[Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Lorg/apache/hc/core5/reactor/IOReactor;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/hc/core5/reactor/IOReactor;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->ioReactors:[Lorg/apache/hc/core5/reactor/IOReactor;

    invoke-virtual {p2}, [Ljava/lang/Thread;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Thread;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->threads:[Ljava/lang/Thread;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 10

    const-string v0, "Wait time"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v0

    const/4 p1, 0x0

    move v4, p1

    :goto_0
    iget-object v5, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->ioReactors:[Lorg/apache/hc/core5/reactor/IOReactor;

    array-length v6, v5

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    invoke-interface {v5}, Lorg/apache/hc/core5/reactor/IOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v6

    sget-object v9, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {v6, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-gez v6, :cond_0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v6}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/hc/core5/reactor/IOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v5, v0, v7

    if-gtz v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->threads:[Ljava/lang/Thread;

    array-length v5, v4

    if-ge p1, v5, :cond_3

    aget-object v4, v4, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/Thread;->join(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v7

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public final close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->initiateShutdown()V

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, p2

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->ioReactors:[Lorg/apache/hc/core5/reactor/IOReactor;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/io/Closer;->close(Lorg/apache/hc/core5/io/ModalCloseable;Lorg/apache/hc/core5/io/CloseMode;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->threads:[Ljava/lang/Thread;

    array-length v0, p1

    if-ge p2, v0, :cond_2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    return-object v0
.end method

.method public final initiateShutdown()V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    sget-object v2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    sget-object v5, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUTTING_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    :cond_2
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->ioReactors:[Lorg/apache/hc/core5/reactor/IOReactor;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOReactor;->initiateShutdown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_2

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    sget-object v2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->threads:[Ljava/lang/Thread;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
