.class Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->consumeResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
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
.field final synthetic this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$000(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$100(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/FutureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$100(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/FutureCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$200(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V

    return-void

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v1}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$200(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V

    throw v0

    :cond_1
    return-void
.end method

.method public completed(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$000(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$100(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/FutureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$100(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/FutureCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {p1}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$200(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V

    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$200(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V

    throw p1

    :cond_1
    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$000(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$100(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/FutureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$100(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)Lorg/apache/hc/core5/concurrent/FutureCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {p1}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$200(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V

    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler$1;->this$0:Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;->access$200(Lorg/apache/hc/core5/http/nio/support/BasicClientExchangeHandler;)V

    throw p1

    :cond_1
    return-void
.end method
