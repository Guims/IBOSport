.class public interface abstract Lorg/apache/hc/core5/http2/H2MessageConverter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convert(Lorg/apache/hc/core5/http/HttpMessage;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract convert(Ljava/util/List;)Lorg/apache/hc/core5/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)TT;"
        }
    .end annotation
.end method
