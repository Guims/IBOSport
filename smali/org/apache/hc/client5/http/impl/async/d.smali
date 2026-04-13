.class public final synthetic Lorg/apache/hc/client5/http/impl/async/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/HandlerFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;I)V
    .locals 0

    iput p2, p0, Lorg/apache/hc/client5/http/impl/async/d;->a:I

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/d;->b:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/ResourceHolder;
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/async/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/d;->b:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-static {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->c(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/d;->b:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-static {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->b(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/d;->b:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-static {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->a(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/d;->b:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-static {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->d(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/d;->b:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-static {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->b(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
