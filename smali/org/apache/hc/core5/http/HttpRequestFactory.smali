.class public interface abstract Lorg/apache/hc/core5/http/HttpRequestFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract newHttpRequest(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/hc/core5/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation
.end method
