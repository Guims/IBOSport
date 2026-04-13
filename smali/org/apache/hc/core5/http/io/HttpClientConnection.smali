.class public interface abstract Lorg/apache/hc/core5/http/io/HttpClientConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/BHttpConnection;


# virtual methods
.method public abstract isConsistent()Z
.end method

.method public abstract receiveResponseEntity(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
.end method

.method public abstract receiveResponseHeader()Lorg/apache/hc/core5/http/ClassicHttpResponse;
.end method

.method public abstract sendRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
.end method

.method public abstract sendRequestHeader(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
.end method

.method public abstract terminateRequest(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
.end method
