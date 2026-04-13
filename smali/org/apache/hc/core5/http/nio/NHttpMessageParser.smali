.class public interface abstract Lorg/apache/hc/core5/http/nio/NHttpMessageParser;
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
.method public abstract parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/MessageHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/SessionInputBuffer;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
