.class public interface abstract Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public abstract connect(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
.end method

.method public abstract upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-eqz p4, :cond_0

    invoke-interface {p4, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
