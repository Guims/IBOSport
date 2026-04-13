.class public final Lorg/apache/hc/core5/http/io/support/TerminalServerFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpFilterHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final handlerMapper:Lorg/apache/hc/core5/http/HttpRequestMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpRequestMapper<",
            "Lorg/apache/hc/core5/http/io/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpRequestMapper;Lorg/apache/hc/core5/http/HttpResponseFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequestMapper<",
            "Lorg/apache/hc/core5/http/io/HttpRequestHandler;",
            ">;",
            "Lorg/apache/hc/core5/http/HttpResponseFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Handler mapper"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequestMapper;

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/support/TerminalServerFilter;->handlerMapper:Lorg/apache/hc/core5/http/HttpRequestMapper;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/impl/io/DefaultClassicHttpResponseFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultClassicHttpResponseFactory;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/io/support/TerminalServerFilter;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpFilterChain;)V
    .locals 1

    iget-object p4, p0, Lorg/apache/hc/core5/http/io/support/TerminalServerFilter;->responseFactory:Lorg/apache/hc/core5/http/HttpResponseFactory;

    const/16 v0, 0xc8

    invoke-interface {p4, v0}, Lorg/apache/hc/core5/http/HttpResponseFactory;->newHttpResponse(I)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object p4

    check-cast p4, Lorg/apache/hc/core5/http/ClassicHttpResponse;

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/support/TerminalServerFilter;->handlerMapper:Lorg/apache/hc/core5/http/HttpRequestMapper;

    invoke-interface {v0, p1, p3}, Lorg/apache/hc/core5/http/HttpRequestMapper;->resolve(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/io/HttpRequestHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p4, p3}, Lorg/apache/hc/core5/http/io/HttpRequestHandler;->handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f5

    invoke-interface {p4, p1}, Lorg/apache/hc/core5/http/HttpResponse;->setCode(I)V

    :goto_0
    invoke-interface {p2, p4}, Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    return-void
.end method
