.class Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ResourceHolder;


# instance fields
.field private final connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

.field private final exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

.field private volatile keepAlive:Z

.field private final outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private volatile receivedRequest:Lorg/apache/hc/core5/http/HttpRequest;

.field private volatile requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

.field private final responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

.field private final responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpCoreContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/ConnectionReuseStrategy;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpCoreContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$1;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    new-instance p1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;

    invoke-direct {p1, p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$2;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->keepAlive:Z

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->IDLE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->keepAlive:Z

    return p0
.end method

.method public static synthetic access$102(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/impl/nio/MessageState;)Lorg/apache/hc/core5/http/impl/nio/MessageState;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->commitInformation(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->commitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->commitPromise()V

    return-void
.end method

.method private commitInformation(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string v1, "Invalid intermediate response: "

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string v0, "Response already committed"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private commitPromise()V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/HttpException;

    const-string v1, "HTTP/1.1 does not support server push"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private commitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a

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
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_9

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_1
    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v3, "http.response"

    invoke-virtual {v0, v3, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v3}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->receivedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    if-eqz p2, :cond_3

    sget-object p2, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->receivedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :cond_4
    :goto_2
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->receivedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {p2, v0, p1, v3}, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p2

    if-nez p2, :cond_5

    iput-boolean v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->keepAlive:Z

    :cond_5
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    if-eqz v2, :cond_6

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    goto :goto_3

    :cond_6
    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->BUFFER:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    :goto_3
    invoke-interface {p2, p1, v2, v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->submit(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V

    if-eqz v2, :cond_8

    iget-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->keepAlive:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->close()V

    :cond_7
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    return-void

    :cond_8
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void

    :cond_9
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "Invalid response: "

    invoke-static {v3, p2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lorg/apache/hc/core5/http/HttpException;

    const-string p2, "Response already committed"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public activateChannel()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->activate()V

    return-void
.end method

.method public appendState(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "requestState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", responseState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", responseCommitted="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", keepAlive="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->keepAlive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", done="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public consumeData(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->ACK:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->outputChannel:Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/impl/nio/Http1StreamChannel;->requestOutput()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Unexpected message data"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumeHeader(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_6

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->receivedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    :goto_0
    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/HandlerFactory;->create(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/ResourceHolder;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;
    :try_end_0
    .catch Lorg/apache/hc/core5/http/MisdirectedRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_1
    new-instance v1, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;

    const/16 v2, 0x1f4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(ILjava/lang/String;)V

    :goto_2
    move-object v0, v1

    goto :goto_4

    :goto_3
    new-instance v1, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;

    const/16 v2, 0x1a5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :goto_4
    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;

    const/16 v1, 0x194

    const-string v2, "Cannot handle request"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(ILjava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_5

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    throw p1

    :cond_3
    :goto_5
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    if-eqz v0, :cond_4

    goto :goto_6

    :cond_4
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_6
    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    const-string v1, "http.request"

    invoke-virtual {v0, v1, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/ServerSupport;->toStatusCode(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-interface {v1, v2, v3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/impl/ServerSupport;->toErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;

    invoke-direct {v0, v2}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :goto_7
    return-void

    :cond_5
    throw v0

    :cond_6
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

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->BODY:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Unexpected message data"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public isCompleted()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOutputReady()Z
    .locals 3

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$3;->$SwitchMap$org$apache$hc$core5$http$impl$nio$MessageState:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public isResponseFinal()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public keepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->keepAlive:Z

    return v0
.end method

.method public produceOutput()V
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler$3;->$SwitchMap$org$apache$hc$core5$http$impl$nio$MessageState:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->internalDataChannel:Lorg/apache/hc/core5/http/nio/DataStreamChannel;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public releaseResources()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public terminateExchange(Lorg/apache/hc/core5/http/HttpException;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->HEADERS:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->receivedRequest:Lorg/apache/hc/core5/http/HttpRequest;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/MessageState;->COMPLETE:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->requestState:Lorg/apache/hc/core5/http/impl/nio/MessageState;

    new-instance v1, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/ServerSupport;->toStatusCode(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-interface {v1, v2, v3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;

    invoke-static {p1}, Lorg/apache/hc/core5/http/impl/ServerSupport;->toErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;

    invoke-direct {p1, v2}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->responseChannel:Lorg/apache/hc/core5/http/nio/ResponseChannel;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->context:Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-interface {p1, v0, v0, v1, v2}, Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;->handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Unexpected message head"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-static {v0}, Lp/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->appendState(Ljava/lang/StringBuilder;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamHandler;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
