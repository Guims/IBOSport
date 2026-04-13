.class public interface abstract Lorg/apache/hc/core5/http/HeaderElement;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameter(I)Lorg/apache/hc/core5/http/NameValuePair;
.end method

.method public abstract getParameterByName(Ljava/lang/String;)Lorg/apache/hc/core5/http/NameValuePair;
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getParameters()[Lorg/apache/hc/core5/http/NameValuePair;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
