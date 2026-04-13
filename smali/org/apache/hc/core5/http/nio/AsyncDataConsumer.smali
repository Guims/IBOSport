.class public interface abstract Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ResourceHolder;


# virtual methods
.method public abstract consume(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract streamEnd(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
.end method
