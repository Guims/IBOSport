.class Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/io/HttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final httpService:Lorg/apache/hc/core5/http/impl/io/HttpService;

.field private final serverSocket:Ljava/net/ServerSocket;

.field private final socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

.field private final terminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/io/SocketConfig;Ljava/net/ServerSocket;Lorg/apache/hc/core5/http/impl/io/HttpService;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/core5/http/ExceptionListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/SocketConfig;",
            "Ljava/net/ServerSocket;",
            "Lorg/apache/hc/core5/http/impl/io/HttpService;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/io/HttpServerConnection;",
            ">;",
            "Lorg/apache/hc/core5/http/ExceptionListener;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->serverSocket:Ljava/net/ServerSocket;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->httpService:Lorg/apache/hc/core5/http/impl/io/HttpService;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSndBufSize()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSndBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoLinger()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/TimeValue;->toSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getSoLinger()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/TimeValue;->toSecondsIntBound()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http/io/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/io/HttpServerConnection;

    new-instance v1, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->httpService:Lorg/apache/hc/core5/http/impl/io/HttpService;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;-><init>(Lorg/apache/hc/core5/http/impl/io/HttpService;Lorg/apache/hc/core5/http/io/HttpServerConnection;Lorg/apache/hc/core5/http/ExceptionListener;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    return-void

    :goto_2
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http/ExceptionListener;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public terminate()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    return-void
.end method
