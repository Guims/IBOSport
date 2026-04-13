.class public final Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;
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
.field private final exceptionCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final filterChain:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;-><init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;Lorg/apache/hc/core5/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Filter chain"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->filterChain:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;)Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->filterChain:Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainElement;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;)Lorg/apache/hc/core5/function/Callback;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    return-object p0
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    .locals 0

    new-instance p1, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;

    invoke-direct {p1, p0}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory$1;-><init>(Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;)V

    return-object p1
.end method

.method public bridge synthetic create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/ResourceHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/AsyncServerFilterChainExchangeHandlerFactory;->create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    move-result-object p1

    return-object p1
.end method
