.class public Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;
.super Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/methods/HttpUriRequest;
.implements Lorg/apache/hc/core5/concurrent/CancellableDependency;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference<",
            "Lorg/apache/hc/core5/concurrent/Cancellable;",
            ">;"
        }
    .end annotation
.end field

.field private requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancel()Z

    return-void
.end method

.method public cancel()Z
    .locals 4

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    iget-object v2, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

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

.method public getConfig()Lorg/apache/hc/client5/http/config/RequestConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_1
    iget-object v2, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public setConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-void
.end method

.method public setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    iget-object v1, p0, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->cancellableRef:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
