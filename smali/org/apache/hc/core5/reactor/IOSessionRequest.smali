.class final Lorg/apache/hc/core5/reactor/IOSessionRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final attachment:Ljava/lang/Object;

.field private final closeableRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/io/ModalCloseable;",
            ">;"
        }
    .end annotation
.end field

.field final future:Lorg/apache/hc/core5/concurrent/BasicFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;"
        }
    .end annotation
.end field

.field final localAddress:Ljava/net/SocketAddress;

.field final remoteAddress:Ljava/net/SocketAddress;

.field final remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

.field final timeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteAddress:Ljava/net/SocketAddress;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->localAddress:Ljava/net/SocketAddress;

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->timeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p5, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->attachment:Ljava/lang/Object;

    new-instance p1, Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-direct {p1, p6}, Lorg/apache/hc/core5/concurrent/BasicFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->closeableRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public assign(Lorg/apache/hc/core5/io/ModalCloseable;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->closeableRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->closeableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/io/ModalCloseable;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v1, v2}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    return v0
.end method

.method public cancel(Z)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->cancel()Z

    move-result p1

    return p1
.end method

.method public completed(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->completed(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->closeableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->failed(Ljava/lang/Exception;)Z

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->closeableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->get()Lorg/apache/hc/core5/reactor/IOSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/core5/reactor/IOSessionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/reactor/IOSession;

    move-result-object p1

    return-object p1
.end method

.method public get()Lorg/apache/hc/core5/reactor/IOSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOSession;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/reactor/IOSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/concurrent/BasicFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[remoteEndpoint="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->remoteAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->localAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/IOSessionRequest;->attachment:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
