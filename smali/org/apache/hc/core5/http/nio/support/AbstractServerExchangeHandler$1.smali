.class Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

.field final synthetic val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;Lorg/apache/hc/core5/http/nio/ResponseChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    invoke-interface {v0, p1, p3, p2}, Lorg/apache/hc/core5/http/nio/ResponseChannel;->pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/ResponseChannel;->sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public submitResponse(Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;->access$000(Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    invoke-interface {p1, v0, p2}, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;->sendResponse(Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response trigger: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractServerExchangeHandler$1;->val$responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
