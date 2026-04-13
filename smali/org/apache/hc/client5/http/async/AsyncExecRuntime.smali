.class public interface abstract Lorg/apache/hc/client5/http/async/AsyncExecRuntime;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/client5/http/protocol/HttpClientContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
            ">;)",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation
.end method

.method public abstract connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/protocol/HttpClientContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
            ">;)",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation
.end method

.method public abstract discardEndpoint()V
.end method

.method public abstract execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
.end method

.method public abstract fork()Lorg/apache/hc/client5/http/async/AsyncExecRuntime;
.end method

.method public abstract isEndpointAcquired()Z
.end method

.method public abstract isEndpointConnected()Z
.end method

.method public abstract markConnectionNonReusable()V
.end method

.method public abstract markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
.end method

.method public abstract releaseEndpoint()V
.end method

.method public abstract upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
.end method

.method public upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/protocol/HttpClientContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract validateConnection()Z
.end method
