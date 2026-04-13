.class final Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/CancellableDependency;


# instance fields
.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/concurrent/Cancellable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/CancellableExecution;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_0
    return-void
.end method
