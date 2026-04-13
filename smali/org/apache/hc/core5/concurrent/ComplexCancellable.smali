.class public final Lorg/apache/hc/core5/concurrent/ComplexCancellable;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/CancellableDependency;


# instance fields
.field private final dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference<",
            "Lorg/apache/hc/core5/concurrent/Cancellable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    iget-object v2, p0, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v0

    return v0
.end method

.method public setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V
    .locals 3

    const-string v0, "dependency"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    iget-object v1, p0, Lorg/apache/hc/core5/concurrent/ComplexCancellable;->dependencyRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_0
    return-void
.end method
