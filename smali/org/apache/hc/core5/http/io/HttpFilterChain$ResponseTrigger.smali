.class public interface abstract Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/io/HttpFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseTrigger"
.end annotation


# virtual methods
.method public abstract sendInformation(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
.end method

.method public abstract submitResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
.end method
