.class abstract Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOReactor;


# instance fields
.field private final exceptionCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field final selector:Ljava/nio/channels/Selector;

.field private final shutdownMutex:Ljava/lang/Object;

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/reactor/IOReactorStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final terminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/function/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->shutdownMutex:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;->INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected failure opening I/O selector"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 6

    const-string v0, "Wait time"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->shutdownMutex:Ljava/lang/Object;

    monitor-enter p1

    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    sget-object v5, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->shutdownMutex:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public final close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->initiateShutdown()V

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->awaitShutdown(Lorg/apache/hc/core5/util/TimeValue;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V

    :goto_2
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V

    :cond_2
    :goto_4
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->shutdownMutex:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object p2, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->shutdownMutex:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p2
.end method

.method public abstract doExecute()V
.end method

.method public abstract doTerminate()V
.end method

.method public execute()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    sget-object v2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->doExecute()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->doTerminate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->doTerminate()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :goto_2
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw v0

    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->doTerminate()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_4
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :goto_5
    throw v0

    :goto_6
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw v0

    :catch_4
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->doTerminate()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->logException(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_0

    :goto_7
    return-void

    :goto_8
    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    return-void
.end method

.method public final getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;

    return-object v0
.end method

.method public final initiateShutdown()V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorStatus;->INACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    sget-object v2, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->shutdownMutex:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->shutdownMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lorg/apache/hc/core5/reactor/IOReactorStatus;->ACTIVE:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    sget-object v5, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUTTING_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    :cond_2
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void

    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_2

    return-void
.end method

.method public logException(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->exceptionCallback:Lorg/apache/hc/core5/function/Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
