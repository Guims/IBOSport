.class public abstract Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/AsyncEntityConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

.field private final exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final resultRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Executor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;-><init>(I)V

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;->IDLE:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->resultRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;Lorg/apache/hc/core5/http/ContentType;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->lambda$streamStart$0(Lorg/apache/hc/core5/http/ContentType;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method private synthetic lambda$streamStart$0(Lorg/apache/hc/core5/http/ContentType;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;-><init>(Lorg/apache/hc/core5/http/nio/support/classic/ContentInputBuffer;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->consumeData(Lorg/apache/hc/core5/http/ContentType;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->resultRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;->COMPLETED:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->abort()V

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;->COMPLETED:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public final consume(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->fill(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public abstract consumeData(Lorg/apache/hc/core5/http/ContentType;Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/ContentType;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method

.method public final failed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->releaseResources()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->resultRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method

.method public releaseResources()V
    .locals 0

    return-void
.end method

.method public final streamEnd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->markEndStream()V

    return-void
.end method

.method public final streamStart(Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/ContentType;->parse(Ljava/lang/CharSequence;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;->IDLE:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;

    sget-object v2, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;->ACTIVE:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer$State;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, LG0/n;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->buffer:Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/nio/support/classic/SharedInputBuffer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    return-void
.end method
