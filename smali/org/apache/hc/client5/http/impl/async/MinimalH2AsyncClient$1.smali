.class Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->lambda$execute$3(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
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
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

.field final synthetic val$cancellable:Lorg/apache/hc/core5/concurrent/ComplexCancellable;

.field final synthetic val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

.field final synthetic val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field final synthetic val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexCancellable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$cancellable:Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->cancel()V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 5

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1$1;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1$1;-><init>(Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->access$000()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/ExecSupport;->getNextExchangeId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v2, v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setExchangeId(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->access$000()LO5/a;

    move-result-object v2

    invoke-interface {v2}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->access$000()LO5/a;

    move-result-object v2

    const-string v3, "{} executing message exchange {}"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    new-instance v3, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->access$000()LO5/a;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;-><init>(LO5/a;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$cancellable:Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    sget-object v0, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p1, v2, v0}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void

    :cond_1
    new-instance v1, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$cancellable:Lorg/apache/hc/core5/concurrent/ComplexCancellable;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    sget-object v0, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p1, v1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method
