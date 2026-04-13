.class Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;


# instance fields
.field private final connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

.field private final context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

.field private final dataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field private final failed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

.field private final pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field private volatile responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpCoreContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler$1;-><init>(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->dataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p5, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p6, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->lambda$produceOutput$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public static synthetic access$002(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;Lorg/apache/hc/core5/http/impl/nio/MessageState;)Lorg/apache/hc/core5/http/impl/nio/MessageState;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-object p1
.end method

.method private commitRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    sget-object v3, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v0, v3}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v3, "http.request"

    invoke-virtual {v0, v3, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v3}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;->INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2RequestConverter;->convert(Lorg/apache/hc/core5/http/HttpRequest;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    if-nez p2, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v3, v0, v1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;->submit(Ljava/util/List;Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementRequestCount()V

    if-nez p2, :cond_1

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_1
    const-string p2, "Expect"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "100-continue"

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_2
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->dataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v0, "Request already committed"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$produceOutput$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->commitRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V

    return-void
.end method


# virtual methods
.method public consumeData(Ljava/nio/ByteBuffer;Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

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

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Unexpected message headers"

    if-nez v0, :cond_9

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler$2;->$SwitchMap$org$apache$hc$core5$http$impl$nio$MessageState:[I

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    sget-object p2, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-direct {p1, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;->INSTANCE:Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/impl/DefaultH2ResponseConverter;->convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_8

    const/16 v2, 0xc8

    if-le v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v3, p1, v4}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :cond_2
    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v4, Lorg/apache/hc/core5/http/impl/nio/MessageState;->ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v3, v4, :cond_4

    if-eq v0, v1, :cond_3

    if-lt v0, v2, :cond_4

    :cond_3
    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->dataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v1, v3}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    :cond_4
    if-ge v0, v2, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    new-instance v0, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;

    const-wide/16 v1, -0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;J)V

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v2, "http.response"

    invoke-virtual {v1, v2, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v1, p1, v0, v2}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;->incrementResponseCount()V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v1, p1, v0, v2}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-eqz p2, :cond_7

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    goto :goto_1

    :cond_7
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    :goto_1
    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_8
    new-instance p2, Lorg/apache/hc/core5/http/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v1, p1}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    invoke-direct {p1, v1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumePromise(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Unexpected message promise"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->releaseResources()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->releaseResources()V

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

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-object v0
.end method

.method public handle(Lorg/apache/hc/core5/http/HttpException;Z)V
    .locals 0

    throw p1
.end method

.method public isOutputReady()Z
    .locals 4

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler$2;->$SwitchMap$org$apache$hc$core5$http$impl$nio$MessageState:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public produceOutput()V
    .locals 3

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler$2;->$SwitchMap$org$apache$hc$core5$http$impl$nio$MessageState:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->dataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/b;

    invoke-direct {v1, p0}, Lorg/apache/hc/core5/http2/impl/nio/b;-><init>(Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public releaseResources()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[requestState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInputCapacity()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamHandler;->outputChannel:Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
