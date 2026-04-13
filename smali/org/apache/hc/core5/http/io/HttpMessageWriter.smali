.class public interface abstract Lorg/apache/hc/core5/http/io/HttpMessageWriter;
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
.method public abstract write(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/io/SessionOutputBuffer;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/http/io/SessionOutputBuffer;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation
.end method
