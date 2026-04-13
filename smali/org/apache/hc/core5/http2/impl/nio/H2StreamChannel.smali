.class interface abstract Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/DataStreamChannel;
.implements Lorg/apache/hc/core5/http/nio/CapacityChannel;
.implements Lorg/apache/hc/core5/concurrent/Cancellable;


# virtual methods
.method public abstract push(Ljava/util/List;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/AsyncPushProducer;",
            ")V"
        }
    .end annotation
.end method

.method public abstract submit(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;Z)V"
        }
    .end annotation
.end method
