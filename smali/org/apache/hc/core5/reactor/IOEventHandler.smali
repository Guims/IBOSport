.class public interface abstract Lorg/apache/hc/core5/reactor/IOEventHandler;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract connected(Lorg/apache/hc/core5/reactor/IOSession;)V
.end method

.method public abstract disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
.end method

.method public abstract exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
.end method

.method public abstract inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
.end method

.method public abstract timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
.end method
