.class public interface abstract Lorg/apache/hc/client5/http/auth/AuthScheme;
.super Ljava/lang/Object;


# virtual methods
.method public abstract generateAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPrincipal()Ljava/security/Principal;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract isChallengeComplete()Z
.end method

.method public abstract isConnectionBased()Z
.end method

.method public abstract isResponseReady(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
.end method

.method public abstract processChallenge(Lorg/apache/hc/client5/http/auth/AuthChallenge;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method
