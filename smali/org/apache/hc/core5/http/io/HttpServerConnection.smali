.class public interface abstract Lorg/apache/hc/core5/http/io/HttpServerConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/BHttpConnection;


# virtual methods
.method public abstract receiveRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
.end method

.method public abstract receiveRequestHeader()Lorg/apache/hc/core5/http/ClassicHttpRequest;
.end method

.method public abstract sendResponseEntity(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
.end method

.method public abstract sendResponseHeader(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
.end method
