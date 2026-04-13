.class public Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;


# instance fields
.field private final dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field private final response:Lorg/apache/hc/core5/http/HttpResponse;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->response:Lorg/apache/hc/core5/http/HttpResponse;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    invoke-static {p2, p3}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->response:Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;-><init>(ILorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->available()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;->failed(Ljava/lang/Exception;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->releaseResources()V

    return-void
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public sendResponse(Lorg/apache/hc/core5/http/nio/ResponseChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->response:Lorg/apache/hc/core5/http/HttpResponse;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/BasicResponseProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-interface {p1, v0, v1, p2}, Lorg/apache/hc/core5/http/nio/ResponseChannel;->sendResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
