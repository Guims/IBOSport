.class Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

.field final synthetic val$connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->val$connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->val$connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-static {v1}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$100(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;)Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->val$connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    sget-object v3, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v2, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->cancel(Z)Z

    throw v1
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->val$connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$100(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;)Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->val$connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    sget-object v2, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1$1;->this$1:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$1;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    throw v0
.end method
