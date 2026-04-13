.class Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;->handle(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/nio/AsyncFilterChain;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;

.field final synthetic val$responseContentProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field final synthetic val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;

.field final synthetic val$unauthorized:Lorg/apache/hc/core5/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->this$0:Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->val$unauthorized:Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p4, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->val$responseContentProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->val$responseContentProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public streamEnd(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->val$responseTrigger:Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->val$unauthorized:Lorg/apache/hc/core5/http/HttpResponse;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;->val$responseContentProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-interface {p1, v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    return-void
.end method
