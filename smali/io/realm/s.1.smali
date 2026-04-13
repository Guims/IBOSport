.class public final Lio/realm/s;
.super Lio/realm/internal/s;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic r:Lio/realm/T;


# direct methods
.method public constructor <init>(Lio/realm/T;I)V
    .locals 5

    iput-object p1, p0, Lio/realm/s;->r:Lio/realm/T;

    iget-object p1, p1, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1}, Lio/realm/internal/s;-><init>(Lio/realm/internal/OsResults;)V

    if-ltz p2, :cond_0

    int-to-long v0, p2

    iget-object p1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {p1}, Lio/realm/internal/OsResults;->i()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lio/realm/internal/s;->q:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting location must be a valid index: [0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->i()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]. Yours was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Adding an element is not supported. Use Realm.createObject() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/realm/s;->r:Lio/realm/T;

    iget-object v0, v0, Lio/realm/T;->r:LJ/l;

    invoke-virtual {v0, p1, p2}, LJ/l;->M(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/s;->a()V

    iget v0, p0, Lio/realm/internal/s;->q:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/s;->a()V

    iget v0, p0, Lio/realm/internal/s;->q:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lio/realm/internal/s;->a()V

    :try_start_0
    iget v0, p0, Lio/realm/internal/s;->q:I

    iget-object v1, p0, Lio/realm/internal/s;->b:Lio/realm/internal/OsResults;

    invoke-virtual {p0, v0, v1}, Lio/realm/s;->b(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/realm/internal/s;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/realm/internal/s;->q:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot access index less than zero. This was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/realm/internal/s;->q:I

    const-string v3, ". Remember to check hasPrevious() before using previous()."

    invoke-static {v1, v2, v3}, Lcom/google/android/material/datepicker/e;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/s;->a()V

    iget v0, p0, Lio/realm/internal/s;->q:I

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Replacing an element is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
