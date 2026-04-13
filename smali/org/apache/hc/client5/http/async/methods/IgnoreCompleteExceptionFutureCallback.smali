.class public Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;
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


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final callback:Lorg/apache/hc/core5/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V

    :cond_0
    return-void
.end method

.method public completed(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;->LOG:LO5/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, LO5/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/IgnoreCompleteExceptionFutureCallback;->callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
