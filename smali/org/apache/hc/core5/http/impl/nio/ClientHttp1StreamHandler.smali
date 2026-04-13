.class Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ResourceHolder;


# instance fields
.field private volatile committedRequest:Lorg/apache/hc/core5/http/HttpRequest;

.field private final connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field private final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

.field private volatile keepAlive:Z

.field private final outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field private volatile responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field private volatile timeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/ConnectionReuseStrategy;",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/protocol/HttpCoreContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler$1;-><init>(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->keepAlive:Z

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->IDLE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->lambda$produceOutput$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public static synthetic access$002(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;Lorg/apache/hc/core5/http/impl/nio/MessageState;)Lorg/apache/hc/core5/http/impl/nio/MessageState;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-object p1
.end method

.method private commitRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v0, v3}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_1
    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v3, "http.request"

    invoke-virtual {v0, v3, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v3}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    invoke-interface {p2, p1, v2, v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->committedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_3
    const-string p2, "Expect"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "100-continue"

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    if-eqz v2, :cond_5

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    goto :goto_3

    :cond_5
    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->BUFFER:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    :goto_3
    invoke-interface {p2, p1, v1, v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->committedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    if-eqz v2, :cond_6

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->timeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/config/Http1Config;->getWaitForContinueTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void

    :cond_6
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void

    :cond_7
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "Request already committed"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$produceOutput$0(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->commitRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V

    return-void
.end method


# virtual methods
.method public appendState(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "requestState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", responseState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", responseCommitted="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", keepAlive="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->keepAlive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", done="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public consumeData(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Unexpected message data"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumeHeader(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_c

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_b

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-le v1, v2, :cond_2

    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v5, p1, v6}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->committedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v5, v6, p1, v7}, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v5

    if-nez v5, :cond_3

    iput-boolean v3, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->keepAlive:Z

    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v6, Lorg/apache/hc/core5/http/impl/nio/MessageState;->ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    const/16 v7, 0x190

    if-ne v5, v6, :cond_5

    if-eq v1, v2, :cond_4

    if-lt v1, v4, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->timeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {v2, v5}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    sget-object v2, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ge v1, v7, :cond_5

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v2, v5}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    :cond_5
    if-ge v1, v4, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v4, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v2, v4, :cond_7

    if-lt v1, v7, :cond_7

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->abortGracefully()Z

    move-result v1

    if-nez v1, :cond_7

    iput-boolean v3, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->keepAlive:Z

    :cond_7
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_2
    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v1, "http.response"

    invoke-virtual {v0, v1, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-nez p2, :cond_9

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->keepAlive:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->close()V

    :cond_9
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-nez p2, :cond_a

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_a
    iput-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_b
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

    :cond_c
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Unexpected message head"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dataEnd(Ljava/util/List;)V
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

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->keepAlive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->close()V

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Unexpected message data"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->committedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->committedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleTimeout()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->timeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->requestOutput()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOutputReady()Z
    .locals 4

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler$2;->$SwitchMap$org$apache$hc$core5$http$impl$nio$MessageState:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public isResponseFinal()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public produceOutput()V
    .locals 3

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler$2;->$SwitchMap$org$apache$hc$core5$http$impl$nio$MessageState:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->suspendOutput()V

    return-void

    :cond_2
    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/a;

    invoke-direct {v1, p0}, Lorg/apache/hc/core5/http/impl/nio/a;-><init>(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public releaseResources()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-static {v0}, Lp/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->appendState(Ljava/lang/StringBuilder;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
