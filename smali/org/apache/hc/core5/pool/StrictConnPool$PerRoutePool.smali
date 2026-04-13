.class Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/pool/StrictConnPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerRoutePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lorg/apache/hc/core5/io/ModalCloseable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final available:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/DisposalCallback<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/hc/core5/pool/DisposalCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/pool/DisposalCallback<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->route:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public createEntry(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/util/TimeValue;",
            ")",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/pool/PoolEntry;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->route:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->disposalCallback:Lorg/apache/hc/core5/pool/DisposalCallback;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/hc/core5/pool/PoolEntry;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/DisposalCallback;)V

    iget-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public free(Lorg/apache/hc/core5/pool/PoolEntry;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Entry %s has not been leased from this pool"

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getAllocatedCount()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getAvailableCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getFree(Ljava/lang/Object;)Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {v1}, Lorg/apache/hc/core5/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {v0}, Lorg/apache/hc/core5/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    iget-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastUsed()Lorg/apache/hc/core5/pool/PoolEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    return-object v0
.end method

.method public getLeasedCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final getRoute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public remove(Lorg/apache/hc/core5/pool/PoolEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/PoolEntry<",
            "TT;TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shutdown(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/pool/PoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/pool/PoolEntry;->discardConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[route: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/pool/StrictConnPool$PerRoutePool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
