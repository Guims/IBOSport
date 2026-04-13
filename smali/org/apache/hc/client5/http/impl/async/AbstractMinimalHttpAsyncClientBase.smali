.class abstract Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;
.super Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;-><init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {p1, p6}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    new-instance p6, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;-><init>(Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V

    invoke-direct {p6, p2, p3, v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-virtual {p0, p6, p4, p5}, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    return-object p1
.end method

.method public final execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/concurrent/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation
.end method
