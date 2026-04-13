.class Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PoolEntryHolder"
.end annotation


# instance fields
.field private final poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/io/HttpClientConnection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public discardConnection()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

    invoke-static {v1}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->access$300(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;)Lorg/apache/hc/core5/pool/ManagedConnPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/hc/core5/pool/ConnPool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    :cond_0
    return-void
.end method

.method public getConnection()Lorg/apache/hc/core5/http/io/HttpClientConnection;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/io/HttpClientConnection;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseConnection()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->poolEntryRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http/io/HttpClientConnection;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester$PoolEntryHolder;->this$0:Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;

    invoke-static {v2}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;->access$300(Lorg/apache/hc/core5/http/impl/bootstrap/HttpRequester;)Lorg/apache/hc/core5/pool/ManagedConnPool;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v0, v1}, Lorg/apache/hc/core5/pool/ConnPool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    :cond_1
    return-void
.end method
