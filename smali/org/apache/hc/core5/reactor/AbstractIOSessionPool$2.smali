.class Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;->getSessionInternal(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;ZLjava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;

.field final synthetic val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->this$0:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/ConnectionClosedException;

    const-string v1, "Connection request cancelled"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    iput-object p1, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    iget-object v1, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->requestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->session:Lorg/apache/hc/core5/reactor/IOSession;

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$2;->val$poolEntry:Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;

    iget-object v1, v1, Lorg/apache/hc/core5/reactor/AbstractIOSessionPool$PoolEntry;->requestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
