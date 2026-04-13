.class Lorg/apache/hc/core5/http2/impl/nio/NoopAsyncPushHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public consumePromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public releaseResources()V
    .locals 0

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
