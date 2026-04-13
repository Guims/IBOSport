.class public Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;
.super Lorg/apache/hc/core5/http/impl/bootstrap/AbstractConnectionInitiatorBase;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOReactorService;
.implements Lorg/apache/hc/core5/reactor/ConnectionAcceptor;


# instance fields
.field private final ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V
    .locals 9
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
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/AbstractConnectionInitiatorBase;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    new-instance v3, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "server-dispatch"

    const/4 v2, 0x1

    invoke-direct {v3, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    new-instance v4, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "server-listener"

    invoke-direct {v4, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    return-void
.end method


# virtual methods
.method public awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public getEndpoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->getEndpoints()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIOReactor()Lorg/apache/hc/core5/reactor/ConnectionInitiator;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    return-object v0
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    return-object v0
.end method

.method public initiateShutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->initiateShutdown()V

    return-void
.end method

.method public listen(Ljava/net/SocketAddress;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listen(Ljava/net/SocketAddress;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listen(Ljava/net/SocketAddress;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->resume()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/AsyncServer;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->start()V

    return-void
.end method
