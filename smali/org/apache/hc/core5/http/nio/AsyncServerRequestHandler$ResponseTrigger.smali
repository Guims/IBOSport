.class public interface abstract Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler$ResponseTrigger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/nio/AsyncServerRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseTrigger"
.end annotation


# virtual methods
.method public abstract pushPromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncPushProducer;)V
.end method

.method public abstract sendInformation(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method

.method public abstract submitResponse(Lorg/apache/hc/core5/http/nio/AsyncResponseProducer;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method
