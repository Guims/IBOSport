.class public abstract Lorg/apache/hc/core5/concurrent/FutureContribution;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final future:Lorg/apache/hc/core5/concurrent/BasicFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/concurrent/BasicFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/concurrent/FutureContribution;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    return-void
.end method


# virtual methods
.method public final cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/FutureContribution;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    :cond_0
    return-void
.end method

.method public final failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/concurrent/FutureContribution;->future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->failed(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
