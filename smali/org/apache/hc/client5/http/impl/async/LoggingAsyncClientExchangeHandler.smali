.class final Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;
.implements Lorg/apache/hc/core5/util/Identifiable;


# instance fields
.field private final exchangeId:Ljava/lang/String;

.field private final handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field private final log:LO5/a;


# direct methods
.method public constructor <init>(LO5/a;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->lambda$produceRequest$0(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)LO5/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/CapacityChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->lambda$updateCapacity$1(Lorg/apache/hc/core5/http/nio/CapacityChannel;I)V

    return-void
.end method

.method private synthetic lambda$produceRequest$0(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    new-instance v2, Lorg/apache/hc/core5/http/message/RequestLine;

    invoke-direct {v2, p2}, Lorg/apache/hc/core5/http/message/RequestLine;-><init>(Lorg/apache/hc/core5/http/HttpRequest;)V

    if-eqz p3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "entity len "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null entity"

    :goto_0
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{} send request {}, {}"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, p2, p3, p4}, Lorg/apache/hc/core5/http/nio/RequestChannel;->sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method private synthetic lambda$updateCapacity$1(Lorg/apache/hc/core5/http/nio/CapacityChannel;I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "{} capacity update {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public cancel()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    const-string v1, "{}: execution cancelled"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->cancel()V

    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "{}: consume response data, len {} bytes"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    new-instance v2, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v2, p1}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    const-string v3, "{}: information response {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    new-instance v2, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v2, p1}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "entity len "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, " null entity"

    :goto_0
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{}: consume response {}, {}"

    invoke-interface {v0, v2, v1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}: execution failed: {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    return-object v0
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    const-string v1, "{}: produce request data"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler$1;-><init>(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/l;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/client5/http/impl/async/l;-><init>(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;->produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method

.method public streamEnd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->log:LO5/a;

    const-string v1, "{}: end of response data"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;->handler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/l;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/client5/http/impl/async/l;-><init>(Lorg/apache/hc/client5/http/impl/async/LoggingAsyncClientExchangeHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
