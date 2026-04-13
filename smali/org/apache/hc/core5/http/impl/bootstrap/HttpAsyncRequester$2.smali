.class Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->lambda$execute$0(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

.field final synthetic val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

.field final synthetic val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field final synthetic val$executeContext:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$executeContext:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->cancel()V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->completed(Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;)V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2$1;-><init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$executeContext:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;->execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester$2;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method
