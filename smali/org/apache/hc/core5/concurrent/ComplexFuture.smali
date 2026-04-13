.class public final Lorg/apache/hc/core5/concurrent/ComplexFuture;
.super Lorg/apache/hc/core5/concurrent/BasicFuture;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/CancellableDependency;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/hc/core5/concurrent/BasicFuture<",
        "TT;>;",
        "Lorg/apache/hc/core5/concurrent/CancellableDependency;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/concurrent/ComplexFuture;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/Future;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->lambda$setDependency$0(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setDependency$0(Ljava/util/concurrent/Future;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel(Z)Z

    move-result p1

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexFuture;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_0
    return p1
.end method

.method public completed(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->completed(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexFuture;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return p1
.end method

.method public failed(Ljava/lang/Exception;)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->failed(Ljava/lang/Exception;)Z

    move-result p1

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexFuture;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return p1
.end method

.method public setDependency(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "dependency"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/hc/core5/concurrent/Cancellable;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void

    :cond_0
    new-instance v0, LM5/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LM5/b;-><init>(Ljava/util/concurrent/Future;I)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-void
.end method

.method public setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V
    .locals 1

    const-string v0, "dependency"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/ComplexFuture;->dependencyRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
