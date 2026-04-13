.class interface abstract Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ResourceHolder;


# virtual methods
.method public abstract consumeData(Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract consumeHeader(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract consumePromise(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract failed(Ljava/lang/Exception;)V
.end method

.method public abstract getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handle(Lorg/apache/hc/core5/http/HttpException;Z)V
.end method

.method public abstract isOutputReady()Z
.end method

.method public abstract produceOutput()V
.end method

.method public abstract updateInputCapacity()V
.end method
