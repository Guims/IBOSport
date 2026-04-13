.class public interface abstract Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# virtual methods
.method public abstract connect(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method

.method public abstract lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;
.end method

.method public abstract release(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
.end method

.method public abstract upgrade(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method
