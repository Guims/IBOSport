.class public Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;


# instance fields
.field private final dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field private final request:Lorg/apache/hc/core5/http/HttpRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Ljava/lang/String;Ljava/net/URI;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;-><init>(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

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

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->releaseResources()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->releaseResources()V

    throw p1
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataProducer;->produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public sendRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/BasicRequestProducer;->dataProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    invoke-interface {p1, v0, v1, p2}, Lorg/apache/hc/core5/http/nio/RequestChannel;->sendRequest(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
