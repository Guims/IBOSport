.class Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;


# instance fields
.field private final connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

.field private final context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

.field private final failed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final internalOutputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

.field private final pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile request:Lorg/apache/hc/core5/http/HttpRequest;

.field private volatile requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field private volatile responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpCoreContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->internalOutputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p5, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void
.end method


# virtual methods
.method public consumeData(Ljava/nio/ByteBuffer;Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    const-string v1, "Exchange handler"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Unexpected message data"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumeHeader(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->request:Lorg/apache/hc/core5/http/HttpRequest;

    const-string v1, "Request"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    const-string v1, "Exchange handler"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;->INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;->convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->request:Lorg/apache/hc/core5/http/HttpRequest;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;J)V

    :goto_0
    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v3, "http.response"

    invoke-virtual {v2, v3, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v2, p1, v1, v3}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementResponseCount()V

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v2, v3, p1, v1, v4}, Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;->consumePromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-eqz p2, :cond_1

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Unexpected message headers"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumePromise(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;->INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;->convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->request:Lorg/apache/hc/core5/http/HttpRequest;

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {p1, v1, v2}, Lorg/apache/hc/core5/http/nio/HandlerFactory;->create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/ResourceHolder;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    :try_end_0
    .catch Lorg/apache/hc/core5/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    sget-object v1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v1, "http.request"

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {p1, v1, v2}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {p1, v1, v0, v2}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementRequestCount()V

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/NoopAsyncPushHandler;

    invoke-direct {p1}, Lorg/apache/hc/core5/http2/impl/nio/NoopAsyncPushHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    new-instance p1, Lorg/apache/hc/core5/http2/H2StreamResetException;

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->REFUSED_STREAM:Lorg/apache/hc/core5/http2/H2Error;

    const-string v1, "Stream refused"

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :goto_1
    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/NoopAsyncPushHandler;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/nio/NoopAsyncPushHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    new-instance v0, Lorg/apache/hc/core5/http2/H2StreamResetException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v1, "Unexpected promise"

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->releaseResources()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->releaseResources()V

    throw p1
.end method

.method public getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-object v0
.end method

.method public handle(Lorg/apache/hc/core5/http/HttpException;Z)V
    .locals 0

    throw p1
.end method

.method public isDone()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOutputReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public produceOutput()V
    .locals 0

    return-void
.end method

.method public releaseResources()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[requestState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInputCapacity()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    const-string v1, "Exchange handler"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientPushH2StreamHandler;->internalOutputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
