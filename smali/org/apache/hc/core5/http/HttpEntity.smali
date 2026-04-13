.class public interface abstract Lorg/apache/hc/core5/http/HttpEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/EntityDetails;
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public abstract getTrailers()Lorg/apache/hc/core5/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract isRepeatable()Z
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
