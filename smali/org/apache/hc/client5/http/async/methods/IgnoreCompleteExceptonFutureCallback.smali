.class public Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptonFutureCallback;
.super Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method
