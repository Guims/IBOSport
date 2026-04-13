.class public interface abstract Lorg/apache/hc/client5/http/ssl/HttpClientHostnameVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public abstract verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
.end method
