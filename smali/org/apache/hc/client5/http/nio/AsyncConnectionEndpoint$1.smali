.class Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncRequestProducer;Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/BasicFuture;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/concurrent/BasicFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint$1;->this$0:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    iput-object p2, p0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint$1;->val$future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint$1;->val$future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public completed(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint$1;->val$future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint$1;->val$future:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
