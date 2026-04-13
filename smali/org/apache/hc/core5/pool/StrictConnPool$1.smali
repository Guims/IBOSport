.class Lorg/apache/hc/core5/pool/StrictConnPool$1;
.super Lorg/apache/hc/core5/concurrent/BasicFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/pool/StrictConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/BasicFuture<",
        "Lorg/apache/hc/core5/pool/PoolEntry<",
        "TT;TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/core5/pool/StrictConnPool;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/pool/StrictConnPool;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$1;->this$0:Lorg/apache/hc/core5/pool/StrictConnPool;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/BasicFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/core5/pool/StrictConnPool$1;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/pool/PoolEntry;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/hc/core5/concurrent/BasicFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
