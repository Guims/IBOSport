.class public final Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncServerExchangeHandler;


# instance fields
.field private final responseProducer:Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;

    invoke-static {p2}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;-><init>(Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Response producer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;->responseProducer:Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;->responseProducer:Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;->responseProducer:Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;->failed(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;->releaseResources()V

    return-void
.end method

.method public handleRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;->responseProducer:Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    invoke-interface {p1, p3, p4}, Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;->sendResponse(Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;->responseProducer:Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/ImmediateResponseExchangeHandler;->responseProducer:Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void
.end method

.method public streamEnd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    return-void
.end method
