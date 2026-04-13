.class public interface abstract Lorg/apache/hc/core5/pool/ConnPoolStats;
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


# virtual methods
.method public abstract getStats(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/hc/core5/pool/PoolStats;"
        }
    .end annotation
.end method

.method public abstract getTotalStats()Lorg/apache/hc/core5/pool/PoolStats;
.end method
