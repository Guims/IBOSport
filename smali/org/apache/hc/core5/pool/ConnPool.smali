.class public interface abstract Lorg/apache/hc/core5/pool/ConnPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lorg/apache/hc/core5/io/ModalCloseable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;"
        }
    .end annotation
.end method

.method public abstract release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;Z)V"
        }
    .end annotation
.end method
