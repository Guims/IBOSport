.class Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdleConnectionEvictor"
.end annotation


# instance fields
.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "idle-connection-evictor"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/h;

    invoke-direct {v1, p2, p1}, Lorg/apache/hc/client5/http/impl/async/h;-><init>(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;)V

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->lambda$new$0(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;)V
    .locals 1

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/core5/util/TimeValue;->sleep()V

    invoke-virtual {p1, p0}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :catch_1
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->shutdown()V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
