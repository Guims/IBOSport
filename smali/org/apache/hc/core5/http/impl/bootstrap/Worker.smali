.class Lorg/apache/hc/core5/http/impl/bootstrap/Worker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

.field private final exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

.field private final httpservice:Lorg/apache/hc/core5/http/impl/io/HttpService;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/io/HttpService;Lorg/apache/hc/core5/http/io/HttpServerConnection;Lorg/apache/hc/core5/http/ExceptionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->httpservice:Lorg/apache/hc/core5/http/impl/io/HttpService;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/apache/hc/core5/http/io/HttpServerConnection;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    return-object v0
.end method

.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    move-result-object v1

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->httpservice:Lorg/apache/hc/core5/http/impl/io/HttpService;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    invoke-virtual {v2, v3, v1}, Lorg/apache/hc/core5/http/impl/io/HttpService;->handleRequest(Lorg/apache/hc/core5/http/io/HttpServerConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void

    :goto_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->exceptionListener:Lorg/apache/hc/core5/http/ExceptionListener;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    invoke-interface {v1, v2, v0}, Lorg/apache/hc/core5/http/ExceptionListener;->onError(Lorg/apache/hc/core5/http/HttpConnection;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/bootstrap/Worker;->conn:Lorg/apache/hc/core5/http/io/HttpServerConnection;

    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v1, v2}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw v0
.end method
