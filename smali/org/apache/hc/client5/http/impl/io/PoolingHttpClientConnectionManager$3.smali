.class Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/io/LeaseRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private volatile endpoint:Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$leaseFuture:Ljava/util/concurrent/Future;

.field final synthetic val$route:Lorg/apache/hc/client5/http/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$leaseFuture:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$leaseFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized get(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/io/ConnectionEndpoint;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "Operation timeout"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->endpoint:Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->endpoint:Lorg/apache/hc/client5/http/io/ConnectionEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$leaseFuture:Ljava/util/concurrent/Future;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-interface {v1, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v1

    const-string v2, "{} endpoint leased {}"

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$state:Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-static {v6}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$100(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;)Lorg/apache/hc/core5/pool/ManagedConnPool;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->formatStats(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;Lorg/apache/hc/core5/pool/ConnPoolControl;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-static {v1, v2}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$200(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;)Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getTimeToLive()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/core5/util/TimeValue;->isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getCreated()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->hasConnection()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-static {v2, v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$300(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TimeValue;->isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getUpdated()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v1}, Lorg/apache/hc/core5/http/io/BHttpConnection;->isStale()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    if-eqz v0, :cond_4

    :try_start_5
    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v0

    const-string v2, "{} connection {} is stale"

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$id:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/hc/core5/pool/PoolEntry;->getConnection()Lorg/apache/hc/core5/io/ModalCloseable;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->activate()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$400(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;)Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/io/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/pool/PoolEntry;->assignConnection(Lorg/apache/hc/core5/io/ModalCloseable;)V

    :goto_1
    new-instance v0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$InternalConnectionEndpoint;-><init>(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;Lorg/apache/hc/core5/pool/PoolEntry;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->endpoint:Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v0

    const-string v1, "{} acquired {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->endpoint:Lorg/apache/hc/client5/http/io/ConnectionEndpoint;

    invoke-static {v3}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->endpoint:Lorg/apache/hc/client5/http/io/ConnectionEndpoint;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_6
    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v1

    const-string v2, "{} endpoint lease failed"

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$id:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->this$0:Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;->access$100(Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager;)Lorg/apache/hc/core5/pool/ManagedConnPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/apache/hc/core5/pool/ConnPool;->release(Lorg/apache/hc/core5/pool/PoolEntry;Z)V

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/PoolingHttpClientConnectionManager$3;->val$leaseFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
