.class abstract Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;
.super Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;
    }
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

.field private final pushConsumerRegistry:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->pushConsumerRegistry:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-static {p3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;->READY:Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->status:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public final close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Shutdown {}"

    invoke-interface {v0, p1, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->initiateShutdown()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->internalClose(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public getConnectionInitiator()Lorg/apache/hc/core5/reactor/ConnectionInitiator;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    return-object v0
.end method

.method public final getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    return-object v0
.end method

.method public final initiateShutdown()V
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Initiating shutdown"

    invoke-interface {v0, v1}, LO5/a;->n(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->initiateShutdown()V

    return-void
.end method

.method public internalClose(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;->RUNNING:Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->pushConsumerRegistry:Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->register(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/function/Supplier;)V

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;->READY:Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;->RUNNING:Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase$Status;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AbstractHttpAsyncClientBase;->ioReactor:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/hc/client5/http/impl/async/a;

    invoke-direct {v2, v1}, Lorg/apache/hc/client5/http/impl/async/a;-><init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    return-void
.end method
