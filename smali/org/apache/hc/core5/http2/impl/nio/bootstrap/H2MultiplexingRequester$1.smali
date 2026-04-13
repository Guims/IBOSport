.class Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;->lambda$execute$0(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
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
.field final synthetic this$0:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;

.field final synthetic val$cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

.field final synthetic val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

.field final synthetic val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field final synthetic val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->this$0:Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    iput-object p5, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p6, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iput-object p7, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->cancel()V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;

    invoke-direct {v1, p0}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1$1;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    sget-object v1, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p1, v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    invoke-interface {p1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v0, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2MultiplexingRequester$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method
