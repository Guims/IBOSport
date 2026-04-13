.class Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;->completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
