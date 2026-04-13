.class public interface abstract Lorg/apache/hc/core5/http/message/LineParser;
.super Ljava/lang/Object;


# virtual methods
.method public abstract parseHeader(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/Header;
.end method

.method public abstract parseRequestLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/RequestLine;
.end method

.method public abstract parseStatusLine(Lorg/apache/hc/core5/util/CharArrayBuffer;)Lorg/apache/hc/core5/http/message/StatusLine;
.end method
