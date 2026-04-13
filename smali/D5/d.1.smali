.class public final LD5/d;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:[LD5/b;

.field public e:I

.field public f:I

.field public g:I

.field public final h:LK5/g;


# direct methods
.method public constructor <init>(LK5/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/d;->h:LK5/g;

    const p1, 0x7fffffff

    iput p1, p0, LD5/d;->a:I

    const/16 p1, 0x1000

    iput p1, p0, LD5/d;->c:I

    const/16 p1, 0x8

    new-array p1, p1, [LD5/b;

    iput-object p1, p0, LD5/d;->d:[LD5/b;

    const/4 p1, 0x7

    iput p1, p0, LD5/d;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, LD5/d;->d:[LD5/b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LD5/d;->e:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, LD5/d;->d:[LD5/b;

    aget-object v2, v2, v0

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget v2, v2, LD5/b;->a:I

    sub-int/2addr p1, v2

    iget v2, p0, LD5/d;->g:I

    iget-object v3, p0, LD5/d;->d:[LD5/b;

    aget-object v3, v3, v0

    invoke-static {v3}, Le5/g;->c(Ljava/lang/Object;)V

    iget v3, v3, LD5/b;->a:I

    sub-int/2addr v2, v3

    iput v2, p0, LD5/d;->g:I

    iget v2, p0, LD5/d;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LD5/d;->f:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LD5/d;->d:[LD5/b;

    add-int/lit8 v2, v2, 0x1

    add-int v0, v2, v1

    iget v3, p0, LD5/d;->f:I

    invoke-static {p1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LD5/d;->d:[LD5/b;

    iget v0, p0, LD5/d;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int v2, v0, v1

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, LD5/d;->e:I

    add-int/2addr p1, v1

    iput p1, p0, LD5/d;->e:I

    :cond_1
    return-void
.end method

.method public final b(LD5/b;)V
    .locals 6

    iget v0, p1, LD5/b;->a:I

    iget v1, p0, LD5/d;->c:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object p1, p0, LD5/d;->d:[LD5/b;

    array-length v0, p1

    invoke-static {p1, v2, v0}, LT4/f;->z([Ljava/lang/Object;II)V

    iget-object p1, p0, LD5/d;->d:[LD5/b;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LD5/d;->e:I

    iput v2, p0, LD5/d;->f:I

    iput v2, p0, LD5/d;->g:I

    return-void

    :cond_0
    iget v3, p0, LD5/d;->g:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, LD5/d;->a(I)V

    iget v1, p0, LD5/d;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, LD5/d;->d:[LD5/b;

    array-length v4, v3

    if-le v1, v4, :cond_1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [LD5/b;

    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LD5/d;->d:[LD5/b;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LD5/d;->e:I

    iput-object v1, p0, LD5/d;->d:[LD5/b;

    :cond_1
    iget v1, p0, LD5/d;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LD5/d;->e:I

    iget-object v2, p0, LD5/d;->d:[LD5/b;

    aput-object p1, v2, v1

    iget p1, p0, LD5/d;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LD5/d;->f:I

    iget p1, p0, LD5/d;->g:I

    add-int/2addr p1, v0

    iput p1, p0, LD5/d;->g:I

    return-void
.end method

.method public final c(LK5/j;)V
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LD5/B;->a:[I

    invoke-virtual {p1}, LK5/j;->b()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {p1, v4}, LK5/j;->g(I)B

    move-result v7

    sget-object v8, Lx5/b;->a:[B

    and-int/lit16 v7, v7, 0xff

    sget-object v8, LD5/B;->b:[B

    aget-byte v7, v8, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    int-to-long v7, v0

    add-long/2addr v5, v7

    const/4 v0, 0x3

    shr-long v4, v5, v0

    long-to-int v0, v4

    invoke-virtual {p1}, LK5/j;->b()I

    move-result v4

    iget-object v5, p0, LD5/d;->h:LK5/g;

    const/16 v6, 0x7f

    if-ge v0, v4, :cond_4

    new-instance v0, LK5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v4, LD5/B;->a:[I

    invoke-virtual {p1}, LK5/j;->b()I

    move-result v4

    move v7, v3

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, LK5/j;->g(I)B

    move-result v8

    sget-object v9, Lx5/b;->a:[B

    and-int/lit16 v8, v8, 0xff

    sget-object v9, LD5/B;->a:[I

    aget v9, v9, v8

    sget-object v10, LD5/B;->b:[B

    aget-byte v8, v10, v8

    shl-long/2addr v1, v8

    int-to-long v9, v9

    or-long/2addr v1, v9

    add-int/2addr v7, v8

    :goto_2
    const/16 v8, 0x8

    if-lt v7, v8, :cond_1

    add-int/lit8 v7, v7, -0x8

    shr-long v8, v1, v7

    long-to-int v8, v8

    invoke-virtual {v0, v8}, LK5/g;->G(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-lez v7, :cond_3

    rsub-int/lit8 p1, v7, 0x8

    shl-long/2addr v1, p1

    const-wide/16 v3, 0xff

    ushr-long/2addr v3, v7

    or-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p1}, LK5/g;->G(I)V

    :cond_3
    iget-wide v1, v0, LK5/g;->q:J

    invoke-virtual {v0, v1, v2}, LK5/g;->c(J)LK5/j;

    move-result-object p1

    invoke-virtual {p1}, LK5/j;->b()I

    move-result v0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v6, v1}, LD5/d;->e(III)V

    invoke-virtual {v5, p1}, LK5/g;->F(LK5/j;)V

    return-void

    :cond_4
    invoke-virtual {p1}, LK5/j;->b()I

    move-result v0

    invoke-virtual {p0, v0, v6, v3}, LD5/d;->e(III)V

    invoke-virtual {v5, p1}, LK5/g;->F(LK5/j;)V

    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 13

    iget-boolean v0, p0, LD5/d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, LD5/d;->a:I

    iget v2, p0, LD5/d;->c:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0, v4, v3}, LD5/d;->e(III)V

    :cond_0
    iput-boolean v1, p0, LD5/d;->b:Z

    const v0, 0x7fffffff

    iput v0, p0, LD5/d;->a:I

    iget v0, p0, LD5/d;->c:I

    invoke-virtual {p0, v0, v4, v3}, LD5/d;->e(III)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LD5/b;

    iget-object v4, v3, LD5/b;->b:LK5/j;

    invoke-virtual {v4}, LK5/j;->n()LK5/j;

    move-result-object v4

    iget-object v5, v3, LD5/b;->c:LK5/j;

    sget-object v6, LD5/e;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x2

    if-le v9, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x7

    if-lt v9, v8, :cond_4

    sget-object v9, LD5/e;->a:[LD5/b;

    aget-object v10, v9, v6

    iget-object v10, v10, LD5/b;->c:LK5/j;

    invoke-static {v10, v5}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v6, v8

    goto :goto_2

    :cond_3
    aget-object v9, v9, v8

    iget-object v9, v9, LD5/b;->c:LK5/j;

    invoke-static {v9, v5}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v6, v6, 0x2

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v8

    move v8, v7

    goto :goto_2

    :cond_5
    move v6, v7

    move v8, v6

    :goto_2
    if-ne v8, v7, :cond_8

    iget v9, p0, LD5/d;->e:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, LD5/d;->d:[LD5/b;

    array-length v10, v10

    :goto_3
    if-ge v9, v10, :cond_8

    iget-object v11, p0, LD5/d;->d:[LD5/b;

    aget-object v11, v11, v9

    invoke-static {v11}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v11, v11, LD5/b;->b:LK5/j;

    invoke-static {v11, v4}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, LD5/d;->d:[LD5/b;

    aget-object v11, v11, v9

    invoke-static {v11}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v11, v11, LD5/b;->c:LK5/j;

    invoke-static {v11, v5}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget v8, p0, LD5/d;->e:I

    sub-int/2addr v9, v8

    sget-object v8, LD5/e;->a:[LD5/b;

    array-length v8, v8

    add-int/2addr v8, v9

    goto :goto_4

    :cond_6
    if-ne v6, v7, :cond_7

    iget v6, p0, LD5/d;->e:I

    sub-int v6, v9, v6

    sget-object v11, LD5/e;->a:[LD5/b;

    array-length v11, v11

    add-int/2addr v6, v11

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-eq v8, v7, :cond_9

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v8, v3, v4}, LD5/d;->e(III)V

    goto :goto_5

    :cond_9
    const/16 v8, 0x40

    if-ne v6, v7, :cond_a

    iget-object v6, p0, LD5/d;->h:LK5/g;

    invoke-virtual {v6, v8}, LK5/g;->G(I)V

    invoke-virtual {p0, v4}, LD5/d;->c(LK5/j;)V

    invoke-virtual {p0, v5}, LD5/d;->c(LK5/j;)V

    invoke-virtual {p0, v3}, LD5/d;->b(LD5/b;)V

    goto :goto_5

    :cond_a
    sget-object v7, LD5/b;->d:LK5/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "prefix"

    invoke-static {v7, v9}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, LK5/j;->b()I

    move-result v9

    invoke-virtual {v4, v1, v7, v9}, LK5/j;->k(ILK5/j;I)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, LD5/b;->i:LK5/j;

    invoke-static {v7, v4}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v3, 0xf

    invoke-virtual {p0, v6, v3, v1}, LD5/d;->e(III)V

    invoke-virtual {p0, v5}, LD5/d;->c(LK5/j;)V

    goto :goto_5

    :cond_b
    const/16 v4, 0x3f

    invoke-virtual {p0, v6, v4, v8}, LD5/d;->e(III)V

    invoke-virtual {p0, v5}, LD5/d;->c(LK5/j;)V

    invoke-virtual {p0, v3}, LD5/d;->b(LD5/b;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final e(III)V
    .locals 1

    iget-object v0, p0, LD5/d;->h:LK5/g;

    if-ge p1, p2, :cond_0

    or-int/2addr p1, p3

    invoke-virtual {v0, p1}, LK5/g;->G(I)V

    return-void

    :cond_0
    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, LK5/g;->G(I)V

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, LK5/g;->G(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, LK5/g;->G(I)V

    return-void
.end method
