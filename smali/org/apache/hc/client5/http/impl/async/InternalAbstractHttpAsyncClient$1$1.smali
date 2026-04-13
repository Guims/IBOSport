.class Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public completed(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
