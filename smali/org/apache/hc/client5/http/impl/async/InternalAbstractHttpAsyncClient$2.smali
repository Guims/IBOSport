.class Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->lambda$doExecute$0(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

.field final synthetic val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

.field final synthetic val$outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/EntityDetails;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrailerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->getTrailerNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$entityDetails:Lorg/apache/hc/core5/http/EntityDetails;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/EntityDetails;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$outputTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/StreamChannel;->endStream()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$2;->val$requestProducer:Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method
