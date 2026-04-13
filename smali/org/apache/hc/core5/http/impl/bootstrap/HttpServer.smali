.class public Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;
    }
.end annotation


# instance fields
.field private final connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

.field private final httpService:Lorg/apache/hc/core5/http/impl/io/HttpService;

.field private final ifAddress:Ljava/net/InetAddress;

.field private final listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final port:I

.field private volatile requestListener:Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private final serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private final socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

.field private final sslSetupHandler:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljavax/net/ssl/SSLParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final workerExecutorService:Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;

.field private final workerThreads:Ljava/lang/ThreadGroup;


# direct methods
.method public constructor <init>(ILorg/apache/hc/core5/http/impl/io/HttpService;Ljava/net/InetAddress;Lorg/apache/hc/core5/http/io/SocketConfig;Ljavax/net/ServerSocketFactory;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/http/ExceptionListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/hc/core5/http/impl/io/HttpService;",
            "Ljava/net/InetAddress;",
            "Lorg/apache/hc/core5/http/io/SocketConfig;",
            "Ljavax/net/ServerSocketFactory;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "+",
            "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljavax/net/ssl/SSLParameters;",
            ">;",
            "Lorg/apache/hc/core5/http/ExceptionListener;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Port value is negative"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->port:I

    const-string v0, "HTTP service"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/core5/http/impl/io/HttpService;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->httpService:Lorg/apache/hc/core5/http/impl/io/HttpService;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    :goto_0
    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object p5

    :goto_1
    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    if-eqz p6, :cond_2

    goto :goto_4

    :cond_2
    new-instance p6, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;

    instance-of p2, p5, Ljavax/net/ssl/SSLServerSocketFactory;

    if-eqz p2, :cond_3

    sget-object p2, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    :goto_2
    iget-object p2, p2, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object p2, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    goto :goto_2

    :goto_3
    sget-object p3, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    sget-object p4, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-direct {p6, p2, p3, p4}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V

    :goto_4
    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    if-eqz p8, :cond_4

    move-object/from16 p2, p8

    goto :goto_5

    :cond_4
    sget-object p2, Lorg/apache/hc/core5/http/ExceptionListener;->NO_OP:Lorg/apache/hc/core5/http/ExceptionListener;

    :goto_5
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string p2, "HTTP-listener-"

    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Ljava/lang/ThreadGroup;

    const-string p2, "HTTP-workers"

    invoke-direct {p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    new-instance v0, Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string p2, "HTTP-worker"

    const/4 p3, 0x1

    invoke-direct {v7, p2, p1, p3}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;Z)V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public awaitTermination(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 3

    const-string v0, "Wait time"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->close(Lorg/apache/hc/core5/io/CloseMode;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->initiateShutdown()V

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->awaitTermination(Lorg/apache/hc/core5/util/TimeValue;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;->getWorkers()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->getConnection()Lorg/apache/hc/core5/http/io/HttpServerConnection;

    move-result-object p2

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-static {p2, v0}, Lorg/apache/hc/core5/io/Closer;->close(Lorg/apache/hc/core5/io/ModalCloseable;Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public initiateShutdown()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->stop()V

    return-void
.end method

.method public start()V
    .locals 10

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    iget v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->port:I

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/io/SocketConfig;->getBacklogSize()I

    move-result v2

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/io/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/hc/core5/function/Callback;

    invoke-interface {v2, v1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    :cond_2
    new-instance v3, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->httpService:Lorg/apache/hc/core5/http/impl/io/HttpService;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->connectionFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    iget-object v9, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;

    invoke-direct/range {v3 .. v9}, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;-><init>(Lorg/apache/hc/core5/http/io/SocketConfig;Ljava/net/ServerSocket;Lorg/apache/hc/core5/http/impl/io/HttpService;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/core5/http/ExceptionListener;Ljava/util/concurrent/ExecutorService;)V

    iput-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;->STOPPING:Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer$Status;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/hc/core5/http/impl/bootstrap/WorkerPoolExecutor;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/bootstrap/RequestListener;->terminate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http/ExceptionListener;->onError(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    return-void
.end method
