.class public interface abstract Lorg/apache/hc/core5/http/message/HeaderValueParser;
.super Ljava/lang/Object;


# virtual methods
.method public abstract parseElements(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/HeaderElement;
.end method

.method public abstract parseHeaderElement(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/HeaderElement;
.end method

.method public abstract parseNameValuePair(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)Lorg/apache/hc/core5/http/NameValuePair;
.end method

.method public abstract parseParameters(Ljava/lang/CharSequence;Lorg/apache/hc/core5/http/message/ParserCursor;)[Lorg/apache/hc/core5/http/NameValuePair;
.end method
