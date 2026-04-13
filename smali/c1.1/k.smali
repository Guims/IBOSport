.class public abstract Lc1/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/media3/common/Metadata;Ljava/lang/String;)Ll0/a;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    instance-of v2, v1, Ll0/a;

    if-eqz v2, :cond_0

    check-cast v1, Ll0/a;

    iget-object v2, v1, Ll0/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lk0/u;I)LW0/e;
    .locals 3

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lk0/u;->H(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p0, v0}, Lk0/u;->q(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, LW0/e;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, LW0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse comment attribute: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LU2/e;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lk0/u;)LW0/a;
    .locals 5

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v1

    const v2, 0x64617461

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v1

    sget-object v2, Lc1/d;->a:[B

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const-string v2, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const-string v2, "image/png"

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "Unrecognized cover art flags: "

    invoke-static {p0, v1, v3}, Lcom/google/android/material/datepicker/e;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lk0/u;->H(I)V

    add-int/lit8 v0, v0, -0x10

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lk0/u;->e([BII)V

    new-instance p0, LW0/a;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, LW0/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    invoke-static {v3, p0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static d(ILjava/lang/String;Lk0/u;)LW0/o;
    .locals 4

    invoke-virtual {p2}, Lk0/u;->g()I

    move-result v0

    invoke-virtual {p2}, Lk0/u;->g()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lk0/u;->H(I)V

    invoke-virtual {p2}, Lk0/u;->A()I

    move-result v0

    if-lez v0, :cond_1

    const-string p0, ""

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lk0/u;->A()I

    move-result p2

    if-lez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p2, LW0/o;

    invoke-static {p0}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, LW0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lp3/Y;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse index/count attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LU2/e;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static e(Lk0/u;)I
    .locals 3

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lk0/u;->H(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk0/u;->a:[B

    iget v1, p0, Lk0/u;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lk0/u;->y()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lk0/u;->x()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lk0/u;->A()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lk0/u;->u()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    invoke-static {p0, v0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static f(ILjava/lang/String;Lk0/u;ZZ)LW0/j;
    .locals 0

    invoke-static {p2}, Lc1/k;->e(Lk0/u;)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, LW0/o;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, LW0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lp3/Y;)V

    return-object p0

    :cond_1
    new-instance p0, LW0/e;

    const-string p3, "und"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, LW0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LU2/e;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method public static g(ILjava/lang/String;Lk0/u;)LW0/o;
    .locals 4

    invoke-virtual {p2}, Lk0/u;->g()I

    move-result v0

    invoke-virtual {p2}, Lk0/u;->g()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Lk0/u;->H(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p2, v0}, Lk0/u;->q(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, LW0/o;

    invoke-static {p0}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, LW0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lp3/Y;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse text attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LU2/e;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
