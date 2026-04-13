.class Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/pool/PoolEntry<",
        "Lorg/apache/hc/client5/http/HttpRoute;",
        "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;Ljava/lang/String;Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/pool/PoolEntry;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->lambda$completed$0(Ljava/lang/String;Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/pool/PoolEntry;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$completed$0(Ljava/lang/String;Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/pool/PoolEntry;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_2

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object p4

    invoke-interface {p4}, LO5/a;->c()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object p4

    const-string v0, "{} connection {} is stale"

    invoke-static {p2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p3, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_2
    invoke-virtual {p0, p3}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->leaseCompleted(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$id:Ljava/lang/String;

    const-string v2, "{} endpoint lease cancelled"

    invoke-interface {v0, v1, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->completed(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getTimeToLive()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TimeValue;->isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getCreated()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/apache/hc/core5/util/TimeValue;->isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getUpdated()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2_0:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/hc/core5/http2/nio/command/PingCommand;

    new-instance v2, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v3, v3, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$id:Ljava/lang/String;

    new-instance v4, Lorg/apache/hc/client5/http/impl/nio/d;

    invoke-direct {v4, p0, v3, v0, p1}, Lorg/apache/hc/client5/http/impl/nio/d;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;Ljava/lang/String;Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/pool/PoolEntry;)V

    invoke-direct {v2, v4}, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;-><init>(Lorg/apache/hc/core5/function/Callback;)V

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http2/nio/command/PingCommand;-><init>(Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;)V

    sget-object p1, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {v0, v1, p1}, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;->submitCommand(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$id:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "{} connection {} is closed"

    invoke-interface {v1, v2, v0, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->leaseCompleted(Lorg/apache/hc/core5/pool/PoolEntry;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$id:Ljava/lang/String;

    const-string v2, "{} endpoint lease failed"

    invoke-interface {v0, v1, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/BasicFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method

.method public leaseCompleted(Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;->activate()V

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v2, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$id:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v4, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$state:Ljava/lang/Object;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$200(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;)Lorg/apache/hc/core5/pool/ManagedConnPool;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{} endpoint leased {}"

    invoke-interface {v0, v2, v1, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$InternalConnectionEndpoint;-><init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;Lorg/apache/hc/core5/pool/PoolEntry;)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;->access$100()LO5/a;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object v1, v1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->val$id:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} acquired {}"

    invoke-interface {p1, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->this$1:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;

    iget-object p1, p1, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3;->resultFuture:Lorg/apache/hc/core5/concurrent/BasicFuture;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method
