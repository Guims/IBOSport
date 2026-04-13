.class Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/concurrent/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

.field final synthetic val$complexCancellable:Lorg/apache/hc/core5/concurrent/ComplexCancellable;

.field final synthetic val$context:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$endpoint:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

.field final synthetic val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$session:Lorg/apache/hc/core5/reactor/IOSession;

.field final synthetic val$target:Lorg/apache/hc/core5/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;Ljava/lang/String;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$id:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$session:Lorg/apache/hc/core5/reactor/IOSession;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$complexCancellable:Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$context:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$000(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v1, v2, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;-><init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/reactor/IOSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$102(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Z)Z

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)LO5/a;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$id:Ljava/lang/String;

    const-string v2, "{} start execution {}"

    invoke-interface {p1, v0, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$session:Lorg/apache/hc/core5/reactor/IOSession;

    new-instance v0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$300(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$complexCancellable:Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$context:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    sget-object v1, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p1, v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$3;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method
