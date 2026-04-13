.class public final Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;
.super Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private volatile capacityChannel:Lorg/apache/hc/core5/http/nio/CapacityChannel;

.field private final capacityIncrement:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final initialBufferSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;-><init>(Ljava/util/concurrent/locks/ReentrantLock;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;-><init>(Ljava/util/concurrent/locks/ReentrantLock;I)V

    iput p2, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->initialBufferSize:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityIncrement:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private awaitInput()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->endStream:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->aborted:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    :cond_1
    return-void
.end method

.method private incrementCapacity()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityChannel:Lorg/apache/hc/core5/http/nio/CapacityChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityIncrement:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityChannel:Lorg/apache/hc/core5/http/nio/CapacityChannel;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic abort()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->abort()V

    return-void
.end method

.method public bridge synthetic capacity()I
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public fill(Ljava/nio/ByteBuffer;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->ensureAdjustedCapacity(I)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public bridge synthetic hasData()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->hasData()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEndStream()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->isEndStream()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic length()I
    .locals 1

    invoke-super {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->length()I

    move-result v0

    return v0
.end method

.method public markEndStream()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->endStream:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->endStream:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->endStream:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityChannel:Lorg/apache/hc/core5/http/nio/CapacityChannel;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->awaitInput()V

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->aborted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->endStream:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityIncrement:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->incrementCapacity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setOutputMode()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->awaitInput()V

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->aborted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->endStream:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityIncrement:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->incrementCapacity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p3

    :goto_1
    iget-object p2, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->reset()V

    return-void
.end method

.method public updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->capacityChannel:Lorg/apache/hc/core5/http/nio/CapacityChannel;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->setInputMode()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/ExpandableBuffer;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->initialBufferSize:I

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/nio/CapacityChannel;->update(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractSharedBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
