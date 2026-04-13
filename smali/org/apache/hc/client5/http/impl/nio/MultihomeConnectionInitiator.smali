.class public final Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ConnectionInitiator;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

.field private final sessionRequester:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection initiator"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    new-instance p1, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;-><init>(Lorg/apache/hc/client5/http/DnsResolver;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;->sessionRequester:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    return-void
.end method


# virtual methods
.method public connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation

    const-string v0, "Remote endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;->sessionRequester:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation

    const-string v0, "Remote endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;->sessionRequester:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/MultihomeConnectionInitiator;->connectionInitiator:Lorg/apache/hc/core5/reactor/ConnectionInitiator;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
