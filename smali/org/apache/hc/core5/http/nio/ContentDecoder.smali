.class public interface abstract Lorg/apache/hc/core5/http/nio/ContentDecoder;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getTrailers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)I
.end method
