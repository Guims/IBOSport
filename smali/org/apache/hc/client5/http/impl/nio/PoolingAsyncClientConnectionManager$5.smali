.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->upgrade(Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field final synthetic val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

.field final synthetic val$internalEndpoint:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$internalEndpoint:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->completed(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;)V
    .locals 4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$internalEndpoint:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} upgraded {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object v2, v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    new-instance v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5$1;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {v1, p0, v2}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5$1;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-interface {p1, v0, v1}, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;->switchProtocol(Ljava/lang/String;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
