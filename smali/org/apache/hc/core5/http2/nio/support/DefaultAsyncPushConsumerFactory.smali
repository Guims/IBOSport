.class public final Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/HandlerFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
        "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mapper:Lorg/apache/hc/core5/http/HttpRequestMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/HttpRequestMapper<",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
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
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Request handler mapper"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpRequestMapper;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;->mapper:Lorg/apache/hc/core5/http/HttpRequestMapper;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;->mapper:Lorg/apache/hc/core5/http/HttpRequestMapper;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/HttpRequestMapper;->resolve(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/function/Supplier;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    :try_end_0
    .catch Lorg/apache/hc/core5/http/MisdirectedRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/ResourceHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http2/nio/support/DefaultAsyncPushConsumerFactory;->create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p1

    return-object p1
.end method
