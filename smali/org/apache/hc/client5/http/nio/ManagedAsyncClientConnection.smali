.class public interface abstract Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpConnection;
.implements Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract activate()V
.end method

.method public abstract passivate()V
.end method

.method public abstract submitCommand(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V
.end method

.method public switchProtocol(Ljava/lang/String;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Protocol switch not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
