.class public interface abstract Lorg/apache/hc/core5/http/nio/ContentEncoder;
.super Ljava/lang/Object;


# virtual methods
.method public abstract complete(Ljava/util/List;)V
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

.method public abstract isCompleted()Z
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)I
.end method
