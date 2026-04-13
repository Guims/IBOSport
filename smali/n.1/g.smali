.class public final Ln/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ln/g;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Ln/g;->c:[I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, Ln/g;->c:[I

    iget v1, p0, Ln/g;->b:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Ln/g;->d:I

    and-int/2addr p1, v1

    iput p1, p0, Ln/g;->b:I

    iget v1, p0, Ln/g;->a:I

    if-ne p1, v1, :cond_1

    array-length p1, v0

    sub-int v2, p1, v1

    shl-int/lit8 v3, p1, 0x1

    if-ltz v3, :cond_0

    new-array v4, v3, [I

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ln/g;->c:[I

    iget v1, p0, Ln/g;->a:I

    invoke-static {v0, v5, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Ln/g;->c:[I

    iput v5, p0, Ln/g;->a:I

    iput p1, p0, Ln/g;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ln/g;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Max array capacity exceeded"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Ln/g;->d:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Ln/g;->c:[I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Ln/g;->c:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Ln/g;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Ln/g;->c:[I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget p1, p0, Ln/g;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln/g;->d:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Ln/g;->d:I

    iget-object v0, p0, Ln/g;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lv1/G;->i:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->t:LA5/t;

    invoke-virtual {v1}, LA5/t;->m()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v1}, Lv1/y;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lv1/G;->j(ILn/g;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Ln/g;->a:I

    iget v2, p0, Ln/g;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    invoke-virtual {v0, v1, v2, v3, p0}, Lv1/G;->i(IILv1/T;Ln/g;)V

    :cond_2
    :goto_0
    iget v1, p0, Ln/g;->d:I

    iget v2, v0, Lv1/G;->j:I

    if-le v1, v2, :cond_3

    iput v1, v0, Lv1/G;->j:I

    iput-boolean p2, v0, Lv1/G;->k:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    invoke-virtual {p1}, Lv1/M;->n()V

    :cond_3
    return-void
.end method

.method public d(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ln/g;->e()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ln/g;->c:[I

    iget v1, p0, Ln/g;->a:I

    add-int/2addr v1, p1

    iget p1, p0, Ln/g;->d:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public e()I
    .locals 2

    iget v0, p0, Ln/g;->b:I

    iget v1, p0, Ln/g;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Ln/g;->d:I

    and-int/2addr v0, v1

    return v0
.end method
