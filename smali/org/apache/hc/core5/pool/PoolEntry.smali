.class public final Lorg/apache/hc/core5/pool/PoolEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lorg/apache/hc/core5/io/ModalCloseable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final connRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TC;>;"
        }
    .end annotation
.end field

.field private volatile created:J

.field private final currentTimeSupplier:Lorg/apache/hc/core5/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/DisposalCallback<",
            "TC;>;"
        }
    .end annotation
.end field

.field private volatile expiryDeadline:Lorg/apache/hc/core5/util/Deadline;

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile state:Ljava/lang/Object;

.field private final timeToLive:Lorg/apache/hc/core5/util/TimeValue;

.field private volatile updated:J

.field private volatile validityDeadline:Lorg/apache/hc/core5/util/Deadline;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/pool/PoolEntry;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/hc/core5/pool/PoolEntry;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/pool/PoolEntry;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/DisposalCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/pool/DisposalCallback<",
            "TC;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/pool/PoolEntry;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/DisposalCallback;Lorg/apache/hc/core5/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/pool/DisposalCallback<",
            "TC;>;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/core5/util/Deadline;->MIN_VALUE:Lorg/apache/hc/core5/util/Deadline;

    iput-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->expiryDeadline:Lorg/apache/hc/core5/util/Deadline;

    sget-object v0, Lorg/apache/hc/core5/util/Deadline;->MIN_VALUE:Lorg/apache/hc/core5/util/Deadline;

    iput-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->validityDeadline:Lorg/apache/hc/core5/util/Deadline;

    const-string v0, "Route"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->route:Ljava/lang/Object;

    invoke-static {p2}, Lorg/apache/hc/core5/util/TimeValue;->defaultsToNegativeOneMillisecond(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lorg/apache/hc/core5/pool/PoolEntry;->disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;

    iput-object p4, p0, Lorg/apache/hc/core5/pool/PoolEntry;->currentTimeSupplier:Lorg/apache/hc/core5/function/Supplier;

    return-void
.end method


# virtual methods
.method public assignConnection(Lorg/apache/hc/core5/io/ModalCloseable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/pool/PoolEntry;->getCurrentTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/hc/core5/pool/PoolEntry;->created:J

    iget-wide v2, p0, Lorg/apache/hc/core5/pool/PoolEntry;->created:J

    iput-wide v2, p0, Lorg/apache/hc/core5/pool/PoolEntry;->updated:J

    iget-wide v2, p0, Lorg/apache/hc/core5/pool/PoolEntry;->created:J

    iget-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {v2, v3, p1}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->validityDeadline:Lorg/apache/hc/core5/util/Deadline;

    iget-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->validityDeadline:Lorg/apache/hc/core5/util/Deadline;

    iput-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->expiryDeadline:Lorg/apache/hc/core5/util/Deadline;

    iput-object v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->state:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection already assigned"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/io/ModalCloseable;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->state:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->created:J

    iput-wide v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->updated:J

    sget-object v1, Lorg/apache/hc/core5/util/Deadline;->MIN_VALUE:Lorg/apache/hc/core5/util/Deadline;

    iput-object v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->expiryDeadline:Lorg/apache/hc/core5/util/Deadline;

    sget-object v1, Lorg/apache/hc/core5/util/Deadline;->MIN_VALUE:Lorg/apache/hc/core5/util/Deadline;

    iput-object v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->validityDeadline:Lorg/apache/hc/core5/util/Deadline;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lorg/apache/hc/core5/pool/DisposalCallback;->execute(Lorg/apache/hc/core5/io/ModalCloseable;Lorg/apache/hc/core5/io/CloseMode;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    return-void
.end method

.method public getConnection()Lorg/apache/hc/core5/io/ModalCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/io/ModalCloseable;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->created:J

    return-wide v0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->currentTimeSupplier:Lorg/apache/hc/core5/function/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpiryDeadline()Lorg/apache/hc/core5/util/Deadline;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->expiryDeadline:Lorg/apache/hc/core5/util/Deadline;

    return-object v0
.end method

.method public getRoute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public getUpdated()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->updated:J

    return-wide v0
.end method

.method public getValidityDeadline()Lorg/apache/hc/core5/util/Deadline;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->validityDeadline:Lorg/apache/hc/core5/util/Deadline;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[route:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateExpiry(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 3

    const-string v0, "Expiry time"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/pool/PoolEntry;->getCurrentTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/hc/core5/pool/PoolEntry;->validityDeadline:Lorg/apache/hc/core5/util/Deadline;

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/util/Deadline;->min(Lorg/apache/hc/core5/util/Deadline;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->expiryDeadline:Lorg/apache/hc/core5/util/Deadline;

    iput-wide v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->updated:J

    return-void
.end method

.method public updateState(Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/hc/core5/pool/PoolEntry;->state:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/pool/PoolEntry;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/hc/core5/pool/PoolEntry;->updated:J

    return-void
.end method
