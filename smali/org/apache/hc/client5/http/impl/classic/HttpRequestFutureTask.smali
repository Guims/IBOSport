.class final Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final callable:Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final request:Lorg/apache/hc/core5/http/ClassicHttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->callable:Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->callable:Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->cancel()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    instance-of v1, v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/hc/core5/concurrent/Cancellable;

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public endedTime()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->callable:Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->getEnded()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDuration()J
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->startedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scheduledTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->callable:Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->getScheduled()J

    move-result-wide v0

    return-wide v0
.end method

.method public startedTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->callable:Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestTaskCallable;->getStarted()J

    move-result-wide v0

    return-wide v0
.end method

.method public taskDuration()J
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->scheduledTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestFutureTask;->request:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
