.class Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/pool/StrictConnPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeaseRequest"
.end annotation

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
.field private final completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final deadline:Lorg/apache/hc/core5/util/Deadline;

.field private volatile ex:Ljava/lang/Exception;

.field private final future:Lorg/apache/hc/core5/concurrent/BasicFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;"
        }
    .end annotation
.end field

.field private volatile result:Lorg/apache/hc/core5/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation
.end field

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final state:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/BasicFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->route:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->state:Ljava/lang/Object;

    invoke-static {p3}, Lorg/apache/hc/core5/util/Deadline;->calculate(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->deadline:Lorg/apache/hc/core5/util/Deadline;

    iput-object p4, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public completed(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->result:Lorg/apache/hc/core5/pool/PoolEntry;

    :cond_0
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->ex:Ljava/lang/Exception;

    :cond_0
    return-void
.end method

.method public getDeadline()Lorg/apache/hc/core5/util/Deadline;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->deadline:Lorg/apache/hc/core5/util/Deadline;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFuture()Lorg/apache/hc/core5/concurrent/BasicFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    return-object v0
.end method

.method public getResult()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->result:Lorg/apache/hc/core5/pool/PoolEntry;

    return-object v0
.end method

.method public getRoute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->ex:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->result:Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$LeaseRequest;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
