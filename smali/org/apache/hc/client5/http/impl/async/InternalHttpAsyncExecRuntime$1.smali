.class Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;
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
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Ljava/lang/String;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->access$000(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->isConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->access$102(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Z)Z

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->val$id:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} acquired endpoint {}"

    invoke-interface {v0, v1, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method
