.class public Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;
.super Lorg/apache/hc/core5/reactor/AbstractIOReactorBase;


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

.field private final workerCount:I

.field private final workerSelector:Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

.field private final workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "I/O client dispatch"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
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

    const-string v0, "Event handler factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getIoThreadCount()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/IOReactorConfig;->getIoThreadCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->workerCount:I

    new-array v1, v0, [Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    iput-object v1, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    new-array v0, v0, [Ljava/lang/Thread;

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    array-length v2, v1

    if-ge v8, v2, :cond_3

    new-instance v1, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    if-eqz p2, :cond_1

    move-object v4, p2

    move-object v3, p1

    move-object v5, p4

    move-object v2, p5

    move-object v6, p6

    move-object/from16 v7, p7

    goto :goto_2

    :cond_1
    sget-object v2, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    move-object v4, v2

    move-object v3, p1

    move-object v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object v2, p5

    :goto_2
    invoke-direct/range {v1 .. v7}, Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;-><init>(Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    aput-object v1, v2, v8

    if-eqz p3, :cond_2

    move-object v2, p3

    goto :goto_3

    :cond_2
    sget-object v2, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    :goto_3
    new-instance v3, Lorg/apache/hc/core5/reactor/IOReactorWorker;

    invoke-direct {v3, v1}, Lorg/apache/hc/core5/reactor/IOReactorWorker;-><init>(Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    aput-object v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-direct {v2, v1, v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;-><init>([Lorg/apache/hc/core5/reactor/IOReactor;[Ljava/lang/Thread;)V

    iput-object v2, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->workers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/IOWorkers;->newSelector([Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->workerSelector:Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/function/Callback;)V
    .locals 8
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

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/function/Callback;)V

    return-void
.end method


# virtual methods
.method public awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object v0

    return-object v0
.end method

.method public getWorkerSelector()Lorg/apache/hc/core5/reactor/IOWorkers$Selector;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->workerSelector:Lorg/apache/hc/core5/reactor/IOWorkers$Selector;

    return-object v0
.end method

.method public initiateShutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->initiateShutdown()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->ioReactor:Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/MultiCoreIOReactor;->start()V

    return-void
.end method
