.class public Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;
.super Lorg/apache/hc/core5/http/impl/bootstrap/AbstractConnectionInitiatorBase;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOReactorService;


# instance fields
.field private final addressResolver:Lorg/apache/hc/core5/function/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/function/Resolver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOSessionListener;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Resolver<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/AbstractConnectionInitiatorBase;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    new-instance v3, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "requester-dispatch"

    const/4 v2, 0x1

    invoke-direct {v3, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    sget-object p7, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    :goto_0
    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->addressResolver:Lorg/apache/hc/core5/function/Resolver;

    return-void
.end method


# virtual methods
.method public awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public getIOReactor()Lorg/apache/hc/core5/reactor/ConnectionInitiator;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    return-object v0
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    return-object v0
.end method

.method public initiateShutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->initiateShutdown()V

    return-void
.end method

.method public requestSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpHost;",
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

    const-string v0, "Host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Timeout"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->addressResolver:Lorg/apache/hc/core5/function/Resolver;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Resolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/SocketAddress;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/hc/core5/http/impl/bootstrap/AbstractConnectionInitiatorBase;->connect(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncRequester;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->start()V

    return-void
.end method
