.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->connect(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

.field final synthetic val$connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

.field final synthetic val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

.field final synthetic val$internalEndpoint:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

.field final synthetic val$poolEntry:Lorg/apache/hc/core5/pool/PoolEntry;

.field final synthetic val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/pool/PoolEntry;Lorg/apache/hc/core5/concurrent/ComplexFuture;Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$poolEntry:Lorg/apache/hc/core5/pool/PoolEntry;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$internalEndpoint:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->completed(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} connected {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpConnection;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$poolEntry:Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->assignConnection(Lorg/apache/hc/core5/io/ModalCloseable;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$internalEndpoint:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$4;->val$resultFuture:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
