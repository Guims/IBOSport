.class public final Lio/realm/T;
.super Ljava/util/AbstractList;

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# instance fields
.field public final b:Lio/realm/y;

.field public final q:Lio/realm/internal/OsResults;

.field public final r:LJ/l;


# direct methods
.method public constructor <init>(Lio/realm/y;Lio/realm/internal/OsResults;LJ/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lio/realm/T;->b:Lio/realm/y;

    iput-object p2, p0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    iput-object p3, p0, Lio/realm/T;->r:LJ/l;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lio/realm/H;)V
    .locals 2

    iget-object v0, p0, Lio/realm/T;->b:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    const-string v1, "Listeners cannot be used on current thread."

    check-cast v0, LB0/i;

    invoke-virtual {v0, v1}, LB0/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/realm/internal/l;

    invoke-direct {v1, p1}, Lio/realm/internal/l;-><init>(Lio/realm/H;)V

    invoke-virtual {v0, p0, v1}, Lio/realm/internal/OsResults;->a(Lio/realm/T;Lio/realm/q;)V

    return-void
.end method

.method public final c(Lio/realm/S;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lio/realm/T;->b:Lio/realm/y;

    invoke-virtual {p1}, Lio/realm/d;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lio/realm/d;->r:Lio/realm/J;

    iget-object p1, p1, Lio/realm/J;->c:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    invoke-static {p2, p1}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final clear()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lio/realm/T;->b:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    iget-boolean v0, v0, Lio/realm/internal/OsResults;->s:Z

    if-eqz v0, :cond_4

    instance-of v0, p1, Lio/realm/internal/y;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    sget-object v1, Lio/realm/internal/f;->b:Lio/realm/internal/f;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lio/realm/r;

    invoke-direct {v0, p0}, Lio/realm/r;-><init>(Lio/realm/T;)V

    :cond_1
    invoke-virtual {v0}, Lio/realm/internal/s;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lio/realm/internal/s;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_2

    instance-of v2, p1, [B

    if-eqz v2, :cond_2

    check-cast v1, [B

    move-object v2, p1

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lio/realm/T;->b:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-virtual {p0}, Lio/realm/T;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->b()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/realm/T;->c(Lio/realm/S;Z)V

    iget-object v0, p0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->g()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/realm/T;->b:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/T;->r:LJ/l;

    iget-object v1, v0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    iget-object v2, v0, LJ/l;->q:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    iget-object v0, v0, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/OsResults;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsResults;->d(I)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lio/realm/d;->r(Ljava/lang/Class;Lio/realm/internal/UncheckedRow;)Lio/realm/M;

    move-result-object p1

    return-object p1
.end method

.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->e()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lio/realm/r;

    invoke-direct {v0, p0}, Lio/realm/r;-><init>(Lio/realm/T;)V

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lio/realm/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/s;-><init>(Lio/realm/T;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lio/realm/s;

    invoke-direct {v0, p0, p1}, Lio/realm/s;-><init>(Lio/realm/T;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()I
    .locals 4

    iget-object v0, p0, Lio/realm/T;->b:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    iget-boolean v1, v0, Lio/realm/internal/OsResults;->s:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->i()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
