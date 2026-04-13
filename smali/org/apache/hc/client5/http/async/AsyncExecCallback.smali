.class public interface abstract Lorg/apache/hc/client5/http/async/AsyncExecCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract completed()V
.end method

.method public abstract failed(Ljava/lang/Exception;)V
.end method

.method public abstract handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V
.end method

.method public abstract handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
.end method
