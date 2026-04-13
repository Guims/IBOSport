.class public interface abstract Lorg/apache/hc/core5/pool/ConnPoolListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# virtual methods
.method public abstract onLease(Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolStats;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/pool/ConnPoolStats<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onRelease(Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolStats;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/pool/ConnPoolStats<",
            "TT;>;)V"
        }
    .end annotation
.end method
