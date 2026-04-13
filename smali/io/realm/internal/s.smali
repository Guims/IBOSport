.class public abstract Lio/realm/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Lio/realm/internal/OsResults;

.field public q:I


# direct methods
.method public constructor <init>(Lio/realm/internal/OsResults;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/realm/internal/s;->q:I

    iget-object v0, p1, Lio/realm/internal/OsResults;->q:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    iget-boolean v0, p1, Lio/realm/internal/OsResults;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lio/realm/internal/OsResults;->q:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {p1}, Lio/realm/internal/OsResults;->c()Lio/realm/internal/OsResults;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    return-void

    :cond_1
    iget-object p1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    iget-object p1, p1, Lio/realm/internal/OsResults;->q:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1, p0}, Lio/realm/internal/OsSharedRealm;->addIterator(Lio/realm/internal/s;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Realm instance has already been closed, making it unusable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "No outside changes to a Realm is allowed while iterating a living Realm collection."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract b(ILio/realm/internal/OsResults;)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 6

    invoke-virtual {p0}, Lio/realm/internal/s;->a()V

    iget v0, p0, Lio/realm/internal/s;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->i()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lio/realm/internal/s;->a()V

    iget v0, p0, Lio/realm/internal/s;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/internal/s;->q:I

    int-to-long v0, v0

    iget-object v2, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {v2}, Lio/realm/internal/OsResults;->i()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lio/realm/internal/s;->q:I

    iget-object v1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/s;->b(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot access index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/realm/internal/s;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {v2}, Lio/realm/internal/OsResults;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported by RealmResults iterators."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
