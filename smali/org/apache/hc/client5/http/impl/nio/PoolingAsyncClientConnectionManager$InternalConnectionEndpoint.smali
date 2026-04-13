.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;
.super Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

# interfaces
.implements Lorg/apache/hc/core5/util/Identifiable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalConnectionEndpoint"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-direct {p0}, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$300()Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;->getNextId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v1

    const-string v2, "{} close {}"

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->id:Ljava/lang/String;

    invoke-interface {v1, v3, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    return-void
.end method

.method public detach()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    return-object v0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->getValidatedPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->id:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "{} executing exchange {} over {}"

    invoke-interface {v1, v2, p1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    sget-object p2, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;->submitCommand(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method public getValidatedPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->getPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method public isConnected()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;->getValidatedPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
