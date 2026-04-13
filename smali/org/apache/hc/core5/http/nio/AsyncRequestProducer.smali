.class public interface abstract Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncDataProducer;


# virtual methods
.method public abstract failed(Ljava/lang/Exception;)V
.end method

.method public abstract isRepeatable()Z
.end method

.method public abstract sendRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method
