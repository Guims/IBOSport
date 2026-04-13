.class final Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOWorkers$Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/reactor/IOWorkers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerOfTwoSelector"
.end annotation


# instance fields
.field private final dispatchers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

.field private final idx:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>([Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;->idx:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;->dispatchers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    return-void
.end method


# virtual methods
.method public next()Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;->dispatchers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;->idx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/IOWorkers$PowerOfTwoSelector;->dispatchers:[Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/apache/hc/core5/reactor/IOWorkers;->access$000(Lorg/apache/hc/core5/reactor/SingleCoreIOReactor;)V

    return-object v0
.end method
