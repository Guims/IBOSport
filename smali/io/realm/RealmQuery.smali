.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/realm/y;

.field public final b:Lio/realm/internal/TableQuery;

.field public final c:Ljava/lang/Class;

.field public final d:Z


# direct methods
.method public constructor <init>(Lio/realm/y;Ljava/lang/Class;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    iput-object p2, p0, Lio/realm/RealmQuery;->c:Ljava/lang/Class;

    const-class v0, Lio/realm/M;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lio/realm/RealmQuery;->d:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Lio/realm/y;->z:Lio/realm/k;

    iget-object v0, p1, Lio/realm/k;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/Q;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/Q;

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p1, p2}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    new-instance v3, Lio/realm/j;

    iget-object v4, p1, Lio/realm/k;->f:Lio/realm/d;

    invoke-virtual {p1, v2}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    invoke-direct {v3, v4, v1}, Lio/realm/Q;-><init>(Lio/realm/d;Lio/realm/internal/Table;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object p1, v1, Lio/realm/Q;->b:Lio/realm/internal/Table;

    invoke-virtual {p1}, Lio/realm/internal/Table;->n()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Queries on primitive lists are not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    iget-object v1, v0, Lio/realm/y;->z:Lio/realm/k;

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-static {p3}, Lio/realm/A;->a(Ljava/lang/String;)Lio/realm/A;

    move-result-object p3

    invoke-virtual {v0}, Lio/realm/d;->b()V

    const/4 v0, 0x1

    const-string v2, "\\ "

    const-string v3, " "

    const/4 v4, 0x0

    iget-object v5, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    if-ne p2, v0, :cond_0

    iget-object p2, v1, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v0, v5, Lio/realm/internal/TableQuery;->r:LW3/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " CONTAINS $0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3}, [Lio/realm/A;

    move-result-object p3

    invoke-static {v5, p2, p1, p3}, LW3/e;->p(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/A;)V

    iput-boolean v4, v5, Lio/realm/internal/TableQuery;->s:Z

    return-void

    :cond_0
    iget-object p2, v1, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v0, v5, Lio/realm/internal/TableQuery;->r:LW3/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " CONTAINS[c] $0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3}, [Lio/realm/A;

    move-result-object p3

    invoke-static {v5, p2, p1, p3}, LW3/e;->p(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/A;)V

    iput-boolean v4, v5, Lio/realm/internal/TableQuery;->s:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Nonnull \'value\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-virtual {v0}, Lio/realm/d;->a()V

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/realm/RealmQuery;->c(Lio/realm/internal/TableQuery;Z)Lio/realm/T;

    move-result-object v0

    iget-object v0, v0, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Lio/realm/internal/TableQuery;Z)Lio/realm/T;
    .locals 6

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    iget-object v1, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    sget v2, Lio/realm/internal/OsResults;->w:I

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->j()V

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    iget-wide v4, p1, Lio/realm/internal/TableQuery;->q:J

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsResults;->nativeCreateResults(JJ)J

    move-result-wide v2

    new-instance v4, Lio/realm/internal/OsResults;

    iget-object p1, p1, Lio/realm/internal/TableQuery;->b:Lio/realm/internal/Table;

    invoke-direct {v4, v1, p1, v2, v3}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    new-instance p1, Lio/realm/T;

    new-instance v1, LJ/l;

    const/16 v2, 0x15

    iget-object v3, p0, Lio/realm/RealmQuery;->c:Ljava/lang/Class;

    invoke-direct {v1, v0, v4, v3, v2}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v4, v1}, Lio/realm/T;-><init>(Lio/realm/y;Lio/realm/internal/OsResults;LJ/l;)V

    if-eqz p2, :cond_0

    iget-object p2, p1, Lio/realm/T;->b:Lio/realm/y;

    invoke-virtual {p2}, Lio/realm/d;->b()V

    iget-object p2, p1, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-virtual {p2}, Lio/realm/internal/OsResults;->f()V

    :cond_0
    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v1}, Lio/realm/d;->b()V

    iget-object v1, v1, Lio/realm/y;->z:Lio/realm/k;

    iget-object v1, v1, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    new-instance v2, Lio/realm/A;

    new-instance v3, Lio/realm/e;

    sget-object v4, Lio/realm/z;->q:Lio/realm/z;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lio/realm/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Lio/realm/A;-><init>(Lio/realm/B;)V

    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    invoke-virtual {v0, v1, p1, v2}, Lio/realm/internal/TableQuery;->c(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/A;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-static {p2}, Lio/realm/A;->a(Ljava/lang/String;)Lio/realm/A;

    move-result-object p2

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, v0, Lio/realm/y;->z:Lio/realm/k;

    iget-object v0, v0, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v1, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p1, p2}, Lio/realm/internal/TableQuery;->c(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/A;)V

    return-void
.end method

.method public final f()Lio/realm/T;
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-virtual {v0}, Lio/realm/d;->a()V

    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/realm/RealmQuery;->c(Lio/realm/internal/TableQuery;Z)Lio/realm/T;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lio/realm/T;
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    const-string v1, "Async query cannot be created on current thread."

    check-cast v0, LB0/i;

    invoke-virtual {v0, v1}, LB0/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/realm/RealmQuery;->c(Lio/realm/internal/TableQuery;Z)Lio/realm/T;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lio/realm/M;
    .locals 7

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-virtual {v0}, Lio/realm/d;->a()V

    iget-boolean v1, p0, Lio/realm/RealmQuery;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    :goto_0
    return-object v2

    :cond_1
    iget-object v1, p0, Lio/realm/RealmQuery;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/realm/d;->s(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/M;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    const/4 v1, 0x0

    iget-object v2, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    array-length v4, p2

    if-nez v4, :cond_0

    goto :goto_4

    :cond_0
    array-length v4, p2

    new-array v5, v4, [Lio/realm/A;

    move v6, v3

    :goto_0
    array-length v7, p2

    if-ge v6, v7, :cond_2

    aget-object v7, p2, v6

    if-eqz v7, :cond_1

    invoke-static {v7}, Lio/realm/A;->a(Ljava/lang/String;)Lio/realm/A;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_1

    :cond_1
    aput-object v1, v5, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, v0, Lio/realm/y;->z:Lio/realm/k;

    iget-object p2, p2, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, " "

    const-string v1, "\\ "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lio/realm/internal/TableQuery;->a()V

    const/4 v0, 0x1

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v6, v5, v1

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lio/realm/internal/TableQuery;->g()V

    :cond_3
    if-nez v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lio/realm/internal/TableQuery;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = NULL"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [J

    invoke-virtual {v2, p2, v0, v6}, Lio/realm/internal/TableQuery;->h(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    iput-boolean v3, v2, Lio/realm/internal/TableQuery;->s:Z

    goto :goto_3

    :cond_4
    invoke-virtual {v2, p2, p1, v6}, Lio/realm/internal/TableQuery;->c(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/A;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lio/realm/internal/TableQuery;->b()V

    iput-boolean v3, v2, Lio/realm/internal/TableQuery;->s:Z

    return-void

    :cond_6
    :goto_4
    invoke-virtual {v0}, Lio/realm/d;->b()V

    const-string p1, "FALSEPREDICATE"

    new-array p2, v3, [J

    invoke-virtual {v2, v1, p1, p2}, Lio/realm/internal/TableQuery;->h(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    iput-boolean v3, v2, Lio/realm/internal/TableQuery;->s:Z

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->f()V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-static {p1}, Lio/realm/A;->a(Ljava/lang/String;)Lio/realm/A;

    move-result-object p1

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, v0, Lio/realm/y;->z:Lio/realm/k;

    iget-object v0, v0, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v1, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    iget-object v2, v1, Lio/realm/internal/TableQuery;->r:LW3/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    const-string v4, "\\ "

    const-string v5, "category_id"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " != $0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Lio/realm/A;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, LW3/e;->p(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/A;)V

    const/4 p1, 0x0

    iput-boolean p1, v1, Lio/realm/internal/TableQuery;->s:Z

    return-void
.end method

.method public final l(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/realm/RealmQuery;->a:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, v0, Lio/realm/y;->z:Lio/realm/k;

    iget-object v0, v0, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v1, p0, Lio/realm/RealmQuery;->b:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0, p2, p1}, Lio/realm/internal/TableQuery;->i(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;[I)V

    return-void
.end method
