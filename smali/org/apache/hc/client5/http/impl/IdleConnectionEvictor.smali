.class public final Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final thread:Ljava/lang/Thread;

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ConnPoolControl<",
            "*>;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v0, "idle-connection-evictor"

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p3

    :goto_1
    new-instance v0, LG0/n;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p1, p4, v1}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ConnPoolControl<",
            "*>;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p2}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;-><init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ConnPoolControl<",
            "*>;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;-><init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->lambda$new$0(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->sleep()V

    invoke-interface {p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeExpired()V

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/pool/ConnPoolControl;->closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    :cond_1
    return-void
.end method


# virtual methods
.method public awaitTermination(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
