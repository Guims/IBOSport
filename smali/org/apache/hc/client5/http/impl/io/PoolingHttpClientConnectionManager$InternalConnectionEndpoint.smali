.class Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;
.super Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

# interfaces
.implements Lorg/apache/hc/core5/util/Identifiable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;
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
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-direct {p0}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$500()Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;->getNextId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    return-void
.end method

.method public detach()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    return-object v0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Request executor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->getValidatedPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->id:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "{} executing exchange {} over {}"

    invoke-interface {v1, v2, p1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3, p2, v0, p4}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->getPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Endpoint is not connected"

    invoke-static {v1, v2}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->getPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;->getValidatedPoolEntry()Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
