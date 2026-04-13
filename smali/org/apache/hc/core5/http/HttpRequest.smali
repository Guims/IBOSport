.class public interface abstract Lorg/apache/hc/core5/http/HttpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpMessage;


# virtual methods
.method public abstract getAuthority()Lorg/apache/hc/core5/net/URIAuthority;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getRequestUri()Ljava/lang/String;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/net/URI;
.end method

.method public abstract setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setScheme(Ljava/lang/String;)V
.end method

.method public abstract setUri(Ljava/net/URI;)V
.end method
