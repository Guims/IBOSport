.class Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ResponseChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;->handle(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/nio/AsyncFilterChain;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;

.field final synthetic val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

.field final synthetic val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->this$0:Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p3, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;

    invoke-interface {p3, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;)V

    return-void
.end method

.method public sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->sendInformation(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public sendResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    iget-object p3, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;

    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;

    invoke-direct {v0, p0, p2}, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1$1;-><init>(Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;Lorg/apache/hc/core5/http/EntityDetails;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3, p1, v0}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method
