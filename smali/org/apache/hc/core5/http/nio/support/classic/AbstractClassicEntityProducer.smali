.class public abstract Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

.field private final contentType:Lorg/apache/hc/core5/http/ContentType;

.field private final exception:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/apache/hc/core5/http/ContentType;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    const-string p1, "Executor"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;->IDLE:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->lambda$produce$0()V

    return-void
.end method

.method private synthetic lambda$produce$0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    new-instance v1, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputStream;-><init>(Lorg/apache/hc/core5/http/nio/support/classic/ContentOutputBuffer;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->produceData(Lorg/apache/hc/core5/http/ContentType;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;->writeCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;->COMPLETED:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;->COMPLETED:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;->length()I

    move-result v0

    return v0
.end method

.method public final failed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->releaseResources()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public final getTrailerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final produce(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;->IDLE:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;

    sget-object v2, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;->ACTIVE:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer$State;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, LB4/l;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/nio/support/classic/SharedOutputBuffer;->flush(Lorg/apache/hc/core5/http/nio/DataStreamChannel;)V

    return-void
.end method

.method public abstract produceData(Lorg/apache/hc/core5/http/ContentType;Ljava/io/OutputStream;)V
.end method

.method public releaseResources()V
    .locals 0

    return-void
.end method
