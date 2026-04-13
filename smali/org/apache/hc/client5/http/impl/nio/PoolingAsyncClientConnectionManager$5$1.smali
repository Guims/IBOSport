.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5$1;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->completed(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5$1;->completed(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;

    iget-object v0, p1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$5;->val$endpoint:Lorg/apache/hc/client5/http/nio/AsyncConnectionEndpoint;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
