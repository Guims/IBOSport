.class Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;
.super Lorg/apache/hc/client5/http/io/ConnectionEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalConnectionEndpoint"
.end annotation


# instance fields
.field private final connRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final route:Lorg/apache/hc/client5/http/HttpRoute;

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->this$0:Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;

    invoke-direct {p0}, Lorg/apache/hc/client5/http/io/ConnectionEndpoint;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->route:Lorg/apache/hc/client5/http/HttpRoute;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->detach()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->close()V

    :cond_0
    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->detach()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    return-void
.end method

.method public detach()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    return-object v0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 3

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Request executor"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->access$000()LO5/a;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->this$0:Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->access$100(Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} Executing exchange {}"

    invoke-interface {v0, v1, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getValidatedConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object p1

    invoke-virtual {p3, p2, p1, p4}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->connRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method public getRoute()Lorg/apache/hc/client5/http/HttpRoute;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->route:Lorg/apache/hc/client5/http/HttpRoute;

    return-object v0
.end method

.method public getValidatedConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v1

    const-string v2, "Endpoint is not connected"

    invoke-static {v1, v2}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getValidatedConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
