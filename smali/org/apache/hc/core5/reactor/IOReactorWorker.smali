.class final Lorg/apache/hc/core5/reactor/IOReactorWorker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ioReactor:Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOReactorWorker;->ioReactor:Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;

    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorWorker;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorWorker;->ioReactor:Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->execute()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorWorker;->throwable:Ljava/lang/Throwable;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOReactorWorker;->throwable:Ljava/lang/Throwable;

    throw v0
.end method
