.class Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

.field final synthetic val$context:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

.field final synthetic val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$context:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->completed(Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V
    .locals 4

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)LO5/a;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$id:Ljava/lang/String;

    const-string v2, "{} start execution {}"

    invoke-interface {p1, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;->access$300(Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime;)Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$context:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalHttpAsyncExecRuntime$4;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method
