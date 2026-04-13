.class public abstract Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;"
    }
.end annotation


# instance fields
.field private final responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Response consumer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    return-void
.end method


# virtual methods
.method public final consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->consume(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final consumePromise(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    new-instance v1, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler$1;-><init>(Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;Lorg/apache/hc/core5/http/HttpRequest;)V

    invoke-interface {v0, p2, p3, p4, v1}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public final failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;->failed(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->releaseResources()V

    return-void
.end method

.method public handleError(Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public abstract handleResponse(Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final releaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_0
    return-void
.end method

.method public final streamEnd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->streamEnd(Ljava/util/List;)V

    return-void
.end method

.method public final updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncPushHandler;->responseConsumer:Lorg/apache/hc/core5/http/nio/AsyncResponseConsumer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
