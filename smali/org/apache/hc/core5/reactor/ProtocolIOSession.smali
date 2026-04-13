.class public interface abstract Lorg/apache/hc/core5/reactor/ProtocolIOSession;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOSession;
.implements Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;


# virtual methods
.method public abstract getInitialEndpoint()Lorg/apache/hc/core5/net/NamedEndpoint;
.end method

.method public registerProtocol(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;)V
    .locals 0

    return-void
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
