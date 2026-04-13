.class public interface abstract Lorg/apache/hc/core5/http/HttpMessage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/MessageHeaders;


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract addHeader(Lorg/apache/hc/core5/http/Header;)V
.end method

.method public abstract getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
.end method

.method public abstract removeHeader(Lorg/apache/hc/core5/http/Header;)Z
.end method

.method public abstract removeHeaders(Ljava/lang/String;)Z
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setHeader(Lorg/apache/hc/core5/http/Header;)V
.end method

.method public varargs abstract setHeaders([Lorg/apache/hc/core5/http/Header;)V
.end method

.method public abstract setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V
.end method
