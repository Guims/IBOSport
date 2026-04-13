.class public Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;
.super Lorg/apache/hc/core5/reactor/AbstractIOReactorBase;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ConnectionAcceptor;


# static fields
.field private static final DISPATCH_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final LISTENER_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

.field private final listener:Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;

.field private final workerCount:I

.field private final workerSelector:Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

.field private final workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "I/O server dispatch"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->DISPATCH_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "I/O listener"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->LISTENER_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOSessionListener;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/AbstractIOReactorBase;-><init>()V

    const-string v1, "Event handler factory"

    invoke-static {p1, v1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getIoThreadCount()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getIoThreadCount()I

    move-result v1

    :goto_0
    iput v1, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workerCount:I

    new-array v2, v1, [Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    iput-object v2, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    const/4 v9, 0x1

    add-int/2addr v1, v9

    new-array v1, v1, [Ljava/lang/Thread;

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    iget-object v2, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    array-length v3, v2

    if-ge v11, v3, :cond_3

    new-instance v2, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    if-eqz p2, :cond_1

    move-object v5, p2

    move-object v4, p1

    move-object/from16 v6, p5

    move-object/from16 v3, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    goto :goto_2

    :cond_1
    sget-object v3, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    move-object v5, v3

    move-object v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p6

    :goto_2
    invoke-direct/range {v2 .. v8}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;-><init>(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    aput-object v2, v3, v11

    add-int/lit8 v11, v11, 0x1

    if-eqz p3, :cond_2

    move-object v3, p3

    goto :goto_3

    :cond_2
    sget-object v3, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->DISPATCH_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    :goto_3
    new-instance v4, Lorg/apache/hc/core5/reactor/IOReactorWorker;

    invoke-direct {v4, v2}, Lorg/apache/hc/core5/reactor/IOReactorWorker;-><init>(Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v1, v11

    goto :goto_1

    :cond_3
    iget v3, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workerCount:I

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lorg/apache/hc/core5/reactor/IOReactor;

    invoke-static {v2, v10, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;

    new-instance v3, Lorg/apache/hc/core5/reactor/b;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lorg/apache/hc/core5/reactor/b;-><init>(Lorg/apache/hc/core5/io/ModalCloseable;I)V

    move-object/from16 v5, p6

    invoke-direct {v2, v5, p2, v3}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;-><init>(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Callback;)V

    iput-object v2, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listener:Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;

    aput-object v2, v4, v10

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    goto :goto_4

    :cond_4
    sget-object v0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->LISTENER_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    :goto_4
    new-instance v3, Lorg/apache/hc/core5/reactor/IOReactorWorker;

    invoke-direct {v3, v2}, Lorg/apache/hc/core5/reactor/IOReactorWorker;-><init>(Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    aput-object v0, v1, v10

    new-instance v0, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-direct {v0, v4, v1}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;-><init>([Lorg/apache/hc/core5/reactor/IOReactor;[Ljava/lang/Thread;)V

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/IOWorkers;->newSelector([Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workerSelector:Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;Lorg/apache/hc/core5/reactor/ChannelEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->enqueueChannel(Lorg/apache/hc/core5/reactor/ChannelEntry;)V

    return-void
.end method

.method private enqueueChannel(Lorg/apache/hc/core5/reactor/ChannelEntry;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workerSelector:Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOWorkers$Selector;->next()Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;->enqueueChannel(Lorg/apache/hc/core5/reactor/ChannelEntry;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/reactor/IOReactorShutdownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->initiateShutdown()V

    return-void
.end method


# virtual methods
.method public awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public getEndpoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listener:Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->getEndpoints()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    return-object v0
.end method

.method public getWorkerSelector()Lorg/apache/hc/core5/reactor/IOWorkers$Selector;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->workerSelector:Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    return-object v0
.end method

.method public initiateShutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->initiateShutdown()V

    return-void
.end method

.method public listen(Ljava/net/SocketAddress;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listen(Ljava/net/SocketAddress;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listener:Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public listen(Ljava/net/SocketAddress;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/reactor/ListenerEndpoint;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listen(Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listener:Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->listener:Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/SingleCoreListeningIOReactor;->resume()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->start()V

    return-void
.end method
