.class final Lorg/apache/hc/core5/reactor/IOWorkers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/reactor/IOWorkers$GenericSelector;,
        Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;,
        Lorg/apache/hc/core5/reactor/IOWorkers$Selector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/reactor/IOWorkers;->validate(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)V

    return-void
.end method

.method private static isPowerOfTwo(I)Z
    .locals 1

    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newSelector([Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)Lorg/apache/hc/core5/reactor/IOWorkers$Selector;
    .locals 1

    array-length v0, p0

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/IOWorkers;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;-><init>([Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/reactor/IOWorkers$GenericSelector;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/reactor/IOWorkers$GenericSelector;-><init>([Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)V

    return-object v0
.end method

.method private static validate(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/reactor/AbstractSingleCoreIOReactor;->getStatus()Lorg/apache/hc/core5/reactor/IOReactorStatus;

    move-result-object p0

    sget-object v0, Lorg/apache/hc/core5/reactor/IOReactorStatus;->SHUT_DOWN:Lorg/apache/hc/core5/reactor/IOReactorStatus;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;

    const-string v0, "I/O reactor has been shut down"

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/IOReactorShutdownException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
