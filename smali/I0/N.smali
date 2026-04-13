.class public final LI0/N;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:[B

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LI0/N;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lk0/C;->f:[B

    iput-object v0, p0, LI0/N;->d:[B

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LI0/N;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LI0/N;->b:I

    iput p2, p0, LI0/N;->c:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    new-array p1, p2, [B

    iput-object p1, p0, LI0/N;->d:[B

    const/4 p1, 0x0

    iput p1, p0, LI0/N;->e:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LI0/N;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/N;->d:[B

    array-length p1, p1

    iput p1, p0, LI0/N;->b:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LI0/N;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/N;->d:[B

    iput p2, p0, LI0/N;->e:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LI0/N;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/N;->d:[B

    iput p2, p0, LI0/N;->c:I

    iput p3, p0, LI0/N;->b:I

    const/4 p1, 0x0

    iput p1, p0, LI0/N;->e:I

    invoke-virtual {p0}, LI0/N;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, LI0/N;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LI0/N;->c:I

    if-ltz v0, :cond_1

    iget v1, p0, LI0/N;->b:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, LI0/N;->e:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    return-void

    :pswitch_0
    iget v0, p0, LI0/N;->b:I

    if-ltz v0, :cond_3

    iget v1, p0, LI0/N;->e:I

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_3

    iget v0, p0, LI0/N;->c:I

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lk0/c;->j(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 2

    iget v0, p0, LI0/N;->e:I

    iget v1, p0, LI0/N;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, LI0/N;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 1

    iget v0, p0, LI0/N;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LI0/N;->c:I

    iget v0, p0, LI0/N;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LI0/N;->b:I

    invoke-virtual {p0}, LI0/N;->a()V

    return-void
.end method

.method public d(I)Z
    .locals 4

    iget v0, p0, LI0/N;->c:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iget v3, p0, LI0/N;->e:I

    add-int/2addr v3, p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    iget v1, p0, LI0/N;->b:I

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v0}, LI0/N;->r(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget v0, p0, LI0/N;->b:I

    if-lt v2, v0, :cond_4

    if-ne v2, v0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method public e()Z
    .locals 7

    iget v0, p0, LI0/N;->c:I

    iget v1, p0, LI0/N;->e:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, LI0/N;->c:I

    iget v5, p0, LI0/N;->b:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, LI0/N;->h()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, LI0/N;->c:I

    iget v5, p0, LI0/N;->b:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput v0, p0, LI0/N;->c:I

    iput v1, p0, LI0/N;->e:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, LI0/N;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v6

    :cond_2
    return v2
.end method

.method public f()I
    .locals 1

    iget v0, p0, LI0/N;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget v0, p0, LI0/N;->b:I

    return v0
.end method

.method public g()I
    .locals 2

    iget v0, p0, LI0/N;->b:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, LI0/N;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public h()Z
    .locals 3

    iget v0, p0, LI0/N;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LI0/N;->d:[B

    iget v1, p0, LI0/N;->c:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, LI0/N;->e:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LI0/N;->s()V

    return v0

    :pswitch_1
    iget-object v0, p0, LI0/N;->d:[B

    iget v1, p0, LI0/N;->b:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, LI0/N;->c:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, LI0/N;->s()V

    return v0

    :pswitch_2
    iget-object v0, p0, LI0/N;->d:[B

    iget v1, p0, LI0/N;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, LI0/N;->e:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v1}, LI0/N;->t(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public i(I)I
    .locals 9

    iget v0, p0, LI0/N;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, LI0/N;->e:I

    add-int/2addr v0, p1

    iput v0, p0, LI0/N;->e:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LI0/N;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-le v2, v5, :cond_1

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, LI0/N;->e:I

    iget-object v5, p0, LI0/N;->d:[B

    iget v6, p0, LI0/N;->c:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int v2, v5, v2

    or-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v2}, LI0/N;->r(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    add-int/2addr v6, v3

    iput v6, p0, LI0/N;->c:I

    goto :goto_0

    :cond_1
    iget-object v6, p0, LI0/N;->d:[B

    iget v7, p0, LI0/N;->c:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v6, v8

    or-int/2addr v1, v6

    rsub-int/lit8 p1, p1, 0x20

    const/4 v6, -0x1

    ushr-int p1, v6, p1

    and-int/2addr p1, v1

    if-ne v2, v5, :cond_3

    iput v0, p0, LI0/N;->e:I

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, LI0/N;->r(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    add-int/2addr v7, v3

    iput v7, p0, LI0/N;->c:I

    :cond_3
    invoke-virtual {p0}, LI0/N;->a()V

    return p1

    :pswitch_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    iget v1, p0, LI0/N;->c:I

    add-int/2addr v1, p1

    iput v1, p0, LI0/N;->c:I

    move v1, v0

    :goto_3
    iget v2, p0, LI0/N;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_5

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, LI0/N;->c:I

    iget-object v3, p0, LI0/N;->d:[B

    iget v4, p0, LI0/N;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, LI0/N;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    iget-object v4, p0, LI0/N;->d:[B

    iget v5, p0, LI0/N;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_6

    iput v0, p0, LI0/N;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, LI0/N;->b:I

    :cond_6
    invoke-virtual {p0}, LI0/N;->a()V

    move v0, p1

    :goto_4
    return v0

    :pswitch_2
    iget v0, p0, LI0/N;->c:I

    iget v1, p0, LI0/N;->e:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, LI0/N;->d:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v4, 0xff

    and-int/2addr v0, v4

    iget v5, p0, LI0/N;->e:I

    shr-int/2addr v0, v5

    rsub-int/lit8 v5, v1, 0x8

    shr-int v5, v4, v5

    and-int/2addr v0, v5

    :goto_5
    if-ge v1, p1, :cond_7

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_5

    :cond_7
    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, p1}, LI0/N;->t(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public j([BI)V
    .locals 9

    shr-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v2, v0, :cond_0

    iget-object v5, p0, LI0/N;->d:[B

    iget v6, p0, LI0/N;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, LI0/N;->b:I

    aget-byte v6, v5, v6

    iget v8, p0, LI0/N;->c:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    aget-byte v5, v5, v7

    and-int/2addr v3, v5

    sub-int/2addr v4, v8

    shr-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    return-void

    :cond_1
    aget-byte v2, p1, v0

    shr-int v5, v3, p2

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v5, p0, LI0/N;->c:I

    add-int v6, v5, p2

    if-le v6, v4, :cond_2

    iget-object v6, p0, LI0/N;->d:[B

    iget v7, p0, LI0/N;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, LI0/N;->b:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    sub-int/2addr v5, v4

    iput v5, p0, LI0/N;->c:I

    :cond_2
    iget v2, p0, LI0/N;->c:I

    add-int/2addr v2, p2

    iput v2, p0, LI0/N;->c:I

    iget-object v5, p0, LI0/N;->d:[B

    iget v6, p0, LI0/N;->b:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v3, v5

    aget-byte v5, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v3, p2

    int-to-byte p2, p2

    or-int/2addr p2, v5

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne v2, v4, :cond_3

    iput v1, p0, LI0/N;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, LI0/N;->b:I

    :cond_3
    invoke-virtual {p0}, LI0/N;->a()V

    return-void
.end method

.method public k(I)J
    .locals 6

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, p1}, LI0/N;->i(I)I

    move-result p1

    sget v2, Lk0/C;->a:I

    int-to-long v2, p1

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, LI0/N;->i(I)I

    move-result p1

    invoke-virtual {p0, v2}, LI0/N;->i(I)I

    move-result v3

    sget v4, Lk0/C;->a:I

    int-to-long v4, p1

    and-long/2addr v4, v0

    shl-long/2addr v4, v2

    int-to-long v2, v3

    and-long/2addr v0, v2

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public l([BI)V
    .locals 3

    iget v0, p0, LI0/N;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, LI0/N;->d:[B

    iget v2, p0, LI0/N;->b:I

    invoke-static {v0, v2, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LI0/N;->b:I

    add-int/2addr p1, p2

    iput p1, p0, LI0/N;->b:I

    invoke-virtual {p0}, LI0/N;->a()V

    return-void
.end method

.method public m()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, LI0/N;->h()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, LI0/N;->i(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method public n()I
    .locals 3

    invoke-virtual {p0}, LI0/N;->m()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public o(Lk0/u;)V
    .locals 2

    iget-object v0, p1, Lk0/u;->a:[B

    iget v1, p1, Lk0/u;->c:I

    invoke-virtual {p0, v0, v1}, LI0/N;->p([BI)V

    iget p1, p1, Lk0/u;->b:I

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, LI0/N;->q(I)V

    return-void
.end method

.method public p([BI)V
    .locals 0

    iput-object p1, p0, LI0/N;->d:[B

    const/4 p1, 0x0

    iput p1, p0, LI0/N;->b:I

    iput p1, p0, LI0/N;->c:I

    iput p2, p0, LI0/N;->e:I

    return-void
.end method

.method public q(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, LI0/N;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, LI0/N;->c:I

    invoke-virtual {p0}, LI0/N;->a()V

    return-void
.end method

.method public r(I)Z
    .locals 3

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, LI0/N;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LI0/N;->d:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s()V
    .locals 3

    iget v0, p0, LI0/N;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LI0/N;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, LI0/N;->e:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, LI0/N;->e:I

    iget v0, p0, LI0/N;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, LI0/N;->r(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, LI0/N;->c:I

    :cond_1
    invoke-virtual {p0}, LI0/N;->a()V

    return-void

    :pswitch_0
    iget v0, p0, LI0/N;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LI0/N;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, LI0/N;->c:I

    iget v0, p0, LI0/N;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LI0/N;->b:I

    :cond_2
    invoke-virtual {p0}, LI0/N;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public t(I)V
    .locals 4

    iget v0, p0, LI0/N;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, LI0/N;->c:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iput v2, p0, LI0/N;->c:I

    iget v3, p0, LI0/N;->e:I

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr p1, v1

    add-int/2addr p1, v3

    iput p1, p0, LI0/N;->e:I

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LI0/N;->c:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, LI0/N;->e:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, LI0/N;->c:I

    if-gt v0, p1, :cond_1

    invoke-virtual {p0, v0}, LI0/N;->r(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, LI0/N;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LI0/N;->c:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LI0/N;->a()V

    return-void

    :pswitch_1
    div-int/lit8 v0, p1, 0x8

    iget v1, p0, LI0/N;->b:I

    add-int/2addr v1, v0

    iput v1, p0, LI0/N;->b:I

    iget v2, p0, LI0/N;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, LI0/N;->c:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LI0/N;->b:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, LI0/N;->c:I

    :cond_2
    invoke-virtual {p0}, LI0/N;->a()V

    return-void

    :pswitch_2
    div-int/lit8 v0, p1, 0x8

    iget v1, p0, LI0/N;->c:I

    add-int/2addr v1, v0

    iput v1, p0, LI0/N;->c:I

    iget v2, p0, LI0/N;->e:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, LI0/N;->e:I

    const/4 v0, 0x7

    const/4 v2, 0x1

    if-le p1, v0, :cond_3

    add-int/2addr v1, v2

    iput v1, p0, LI0/N;->c:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, LI0/N;->e:I

    :cond_3
    iget p1, p0, LI0/N;->c:I

    if-ltz p1, :cond_4

    iget v0, p0, LI0/N;->b:I

    if-lt p1, v0, :cond_5

    if-ne p1, v0, :cond_4

    iget p1, p0, LI0/N;->e:I

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Lk0/c;->j(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public u(I)V
    .locals 1

    iget v0, p0, LI0/N;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget v0, p0, LI0/N;->b:I

    add-int/2addr v0, p1

    iput v0, p0, LI0/N;->b:I

    invoke-virtual {p0}, LI0/N;->a()V

    return-void
.end method
