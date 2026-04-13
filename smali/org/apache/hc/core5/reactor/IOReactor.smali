.class public interface abstract Lorg/apache/hc/core5/reactor/IOReactor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# virtual methods
.method public abstract awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
.end method

.method public abstract close(Lorg/apache/hc/core5/io/CloseMode;)V
.end method

.method public abstract getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
.end method

.method public abstract initiateShutdown()V
.end method
