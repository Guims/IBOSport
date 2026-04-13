.class public interface abstract Lorg/apache/hc/core5/http/io/HttpMessageParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/MessageHeaders;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Lorg/apache/hc/core5/http/io/SessionInputBuffer;Ljava/io/InputStream;)Lorg/apache/hc/core5/http/MessageHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/SessionInputBuffer;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method
