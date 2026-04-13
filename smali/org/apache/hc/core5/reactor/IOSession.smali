.class public interface abstract Lorg/apache/hc/core5/reactor/IOSession;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Lorg/apache/hc/core5/http/SocketModalCloseable;
.implements Lorg/apache/hc/core5/util/Identifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/reactor/IOSession$Status;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract channel()Ljava/nio/channels/ByteChannel;
.end method

.method public abstract clearEvent(I)V
.end method

.method public abstract close()V
.end method

.method public abstract enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V
.end method

.method public abstract getEventMask()I
.end method

.method public abstract getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;
.end method

.method public abstract getLastEventTime()J
.end method

.method public abstract getLastReadTime()J
.end method

.method public abstract getLastWriteTime()J
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getLock()Ljava/util/concurrent/locks/Lock;
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
.end method

.method public abstract getStatus()Lorg/apache/hc/core5/reactor/IOSession$Status;
.end method

.method public abstract hasCommands()Z
.end method

.method public abstract poll()Lorg/apache/hc/core5/reactor/Command;
.end method

.method public abstract setEvent(I)V
.end method

.method public abstract setEventMask(I)V
.end method

.method public abstract setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
.end method

.method public abstract updateReadTime()V
.end method

.method public abstract updateWriteTime()V
.end method

.method public abstract upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V
.end method
