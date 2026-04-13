.class public interface abstract Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ")TT;"
        }
    .end annotation
.end method
