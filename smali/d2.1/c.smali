.class public final Ld2/c;
.super Ln/e;


# instance fields
.field public z:I


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld2/c;->z:I

    invoke-super {p0}, Ln/j;->clear()V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Ld2/c;->z:I

    if-nez v0, :cond_0

    invoke-super {p0}, Ln/j;->hashCode()I

    move-result v0

    iput v0, p0, Ld2/c;->z:I

    :cond_0
    iget v0, p0, Ld2/c;->z:I

    return v0
.end method

.method public final i(Ln/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld2/c;->z:I

    invoke-super {p0, p1}, Ln/j;->i(Ln/e;)V

    return-void
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld2/c;->z:I

    invoke-super {p0, p1}, Ln/j;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld2/c;->z:I

    invoke-super {p0, p1, p2}, Ln/j;->k(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld2/c;->z:I

    invoke-super {p0, p1, p2}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
