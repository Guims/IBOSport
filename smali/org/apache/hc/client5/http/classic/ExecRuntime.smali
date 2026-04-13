.class public interface abstract Lorg/apache/hc/client5/http/classic/ExecRuntime;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract acquireEndpoint(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
.end method

.method public abstract connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
.end method

.method public abstract discardEndpoint()V
.end method

.method public abstract disconnectEndpoint()V
.end method

.method public abstract execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
.end method

.method public abstract fork(Lorg/apache/hc/core5/concurrent/CancellableDependency;)Lorg/apache/hc/client5/http/classic/ExecRuntime;
.end method

.method public abstract isConnectionReusable()Z
.end method

.method public abstract isEndpointAcquired()Z
.end method

.method public abstract isEndpointConnected()Z
.end method

.method public abstract isExecutionAborted()Z
.end method

.method public abstract markConnectionNonReusable()V
.end method

.method public abstract markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
.end method

.method public abstract releaseEndpoint()V
.end method

.method public abstract upgradeTls(Lorg/apache/hc/client5/http/protocol/HttpClientContext;)V
.end method
