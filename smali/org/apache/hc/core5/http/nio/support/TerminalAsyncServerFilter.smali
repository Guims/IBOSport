.class public final Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final handlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/HandlerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Handler factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;->handlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/nio/AsyncFilterChain;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 1

    iget-object p5, p0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;->handlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    invoke-interface {p5, p1, p3}, Lorg/apache/hc/core5/http/nio/HandlerFactory;->create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/ResourceHolder;

    move-result-object p5

    check-cast p5, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    if-eqz p5, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;

    invoke-direct {v0, p0, p4, p5}, Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter$1;-><init>(Lorg/apache/hc/core5/http/nio/support/TerminalAsyncServerFilter;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;)V

    invoke-interface {p5, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object p5

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    const/16 p2, 0x194

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    const-string p2, "Not found"

    invoke-static {p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    const/4 p1, 0x0

    return-object p1
.end method
