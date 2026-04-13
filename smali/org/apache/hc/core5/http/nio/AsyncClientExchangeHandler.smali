.class public interface abstract Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract consumeInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method

.method public abstract consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method

.method public abstract produceRequest(Lorg/apache/hc/core5/http/nio/RequestChannel;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method
