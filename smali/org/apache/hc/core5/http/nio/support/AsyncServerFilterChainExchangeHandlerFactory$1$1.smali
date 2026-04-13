.class Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;

.field final synthetic val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->this$1:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/hc/core5/http/nio/ResponseChannel;->pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public sendInformation(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/ResponseChannel;->sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public submitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->this$1:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;

    invoke-static {p1}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;->access$000(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iget-object p2, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1$1;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;->sendResponse(Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
