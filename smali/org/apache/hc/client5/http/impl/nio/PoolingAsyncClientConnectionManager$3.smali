.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field final connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

.field final leaseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field final resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/concurrent/BasicFuture<",
            "Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$requestTimeout:Lorg/apache/hc/core5/util/Timeout;

.field final synthetic val$route:Lorg/apache/hc/client5/http/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/concurrent/FutureCallback;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$state:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$requestTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$000(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p6

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    new-instance p6, Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-direct {p6, p3}, Lorg/apache/hc/core5/concurrent/BasicFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$200(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;)Lorg/apache/hc/core5/pool/ManagedConnPool;

    move-result-object p1

    new-instance p3, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;

    invoke-direct {p3, p0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;)V

    invoke-interface {p1, p2, p4, p5, p3}, Lorg/apache/hc/core5/pool/ConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->leaseFuture:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->leaseFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->get()Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    move-result-object p1

    return-object p1
.end method

.method public get()Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/concurrent/BasicFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->isDone()Z

    move-result v0

    return v0
.end method
