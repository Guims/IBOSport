.class Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/pool/LaxConnPool;
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
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/Cancellable;"
    }
.end annotation


# instance fields
.field private final deadline:Lorg/apache/hc/core5/util/Deadline;

.field private final future:Lorg/apache/hc/core5/concurrent/BasicFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final state:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/BasicFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->state:Ljava/lang/Object;

    invoke-static {p2}, Lorg/apache/hc/core5/util/Deadline;->calculate(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->deadline:Lorg/apache/hc/core5/util/Deadline;

    iput-object p3, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    move-result v0

    return v0
.end method

.method public completed(Lorg/apache/hc/core5/pool/PoolEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->completed(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public failed(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->failed(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public getDeadline()Lorg/apache/hc/core5/util/Deadline;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->deadline:Lorg/apache/hc/core5/util/Deadline;

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

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/LaxConnPool$LeaseRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isDone()Z

    move-result v0

    return v0
.end method
