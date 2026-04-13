.class Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;
.super Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalAsyncClientEndpoint"
.end annotation


# instance fields
.field private final connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

.field private final released:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Endpoint has already been released"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p3

    :goto_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/ExecSupport;->getNextExchangeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->setExchangeId(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$200()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$200()LO5/a;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} executing message exchange {}"

    invoke-interface {v1, v0, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$200()LO5/a;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;-><init>(LO5/a;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)V

    invoke-virtual {v1, v0, v2, p2, p3}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    :cond_1
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {p2, v0, p1, p3}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReleased()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public releaseAndDiscard()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$100(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;)Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    :cond_0
    return-void
.end method

.method public releaseAndReuse()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->this$0:Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->access$100(Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;)Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/hc/core5/util/TimeValue;->NEG_ONE_MILLISECOND:Lorg/apache/hc/core5/util/TimeValue;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;->release(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    :cond_0
    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient$InternalAsyncClientEndpoint;->connectionEndpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
