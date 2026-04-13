.class public interface abstract Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;
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
.method public abstract create(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            ")",
            "Lorg/apache/hc/core5/http/io/HttpMessageParser<",
            "TT;>;"
        }
    .end annotation
.end method
