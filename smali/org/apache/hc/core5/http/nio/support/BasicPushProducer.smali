.class public Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncPushProducer;


# instance fields
.field private final dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field private final response:Lorg/apache/hc/core5/http/HttpResponse;


# direct methods
.method public constructor <init>(ILorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->response:Lorg/apache/hc/core5/http/HttpResponse;

    const-string p1, "Entity producer"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;-><init>(ILorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->releaseResources()V

    return-void
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    :cond_0
    return-void
.end method

.method public produceResponse(Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->response:Lorg/apache/hc/core5/http/HttpResponse;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-interface {p1, v0, v1, p2}, Lorg/apache/hc/core5/http/nio/ResponseChannel;->sendResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicPushProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method
