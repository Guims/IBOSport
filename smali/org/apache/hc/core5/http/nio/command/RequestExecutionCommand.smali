.class public final Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;
.super Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

.field private final context:Lorg/apache/hc/core5/http/protocol/HttpContext;

.field private final exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

.field private final failed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/concurrent/CancellableDependency;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;-><init>()V

    const-string v0, "Handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iput-object p4, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;-><init>(Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    new-instance v1, Lorg/apache/hc/core5/http/RequestNotExecutedException;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/RequestNotExecutedException;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    throw v0

    :cond_0
    return v1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/AsyncDataExchangeHandler;->failed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    throw p1

    :cond_0
    return-void
.end method

.method public getCancellableDependency()Lorg/apache/hc/core5/concurrent/CancellableDependency;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    return-object v0
.end method

.method public getContext()Lorg/apache/hc/core5/http/protocol/HttpContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    return-object v0
.end method

.method public getExchangeHandler()Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->exchangeHandler:Lorg/apache/hc/core5/http/nio/AsyncClientExchangeHandler;

    return-object v0
.end method

.method public getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    return-object v0
.end method
