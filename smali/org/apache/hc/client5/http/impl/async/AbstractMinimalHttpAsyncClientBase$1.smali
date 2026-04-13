.class Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;->doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public completed(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractMinimalHttpAsyncClientBase$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
