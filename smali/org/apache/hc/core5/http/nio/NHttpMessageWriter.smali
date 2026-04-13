.class public interface abstract Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;
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
.method public abstract reset()V
.end method

.method public abstract write(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;",
            ")V"
        }
    .end annotation
.end method
