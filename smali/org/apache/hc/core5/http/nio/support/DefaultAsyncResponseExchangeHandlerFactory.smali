.class public final Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/HandlerFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
        "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final decorator:Lorg/apache/hc/core5/function/Decorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mapper:Lorg/apache/hc/core5/http/HttpRequestMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpRequestMapper<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpRequestMapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequestMapper<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/HttpRequestMapper;Lorg/apache/hc/core5/function/Decorator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpRequestMapper;Lorg/apache/hc/core5/function/Decorator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequestMapper<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;>;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Request handler mapper"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequestMapper;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;->mapper:Lorg/apache/hc/core5/http/HttpRequestMapper;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;->decorator:Lorg/apache/hc/core5/function/Decorator;

    return-void
.end method

.method private createHandler(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;->mapper:Lorg/apache/hc/core5/http/HttpRequestMapper;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/HttpRequestMapper;->resolve(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/function/Supplier;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;

    const-string p2, "Resource not found"

    const/16 v0, 0x194

    invoke-direct {p1, v0, p2}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/MisdirectedRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;

    const/16 p2, 0x1a5

    const-string v0, "Not authoritative"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(ILjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;->createHandler(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;->decorator:Lorg/apache/hc/core5/function/Decorator;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/function/Decorator;->decorate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/ResourceHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/DefaultAsyncResponseExchangeHandlerFactory;->create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p1

    return-object p1
.end method
