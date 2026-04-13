.class public final Ld1/c;
.super Ld1/i;


# instance fields
.field public n:LI0/w;

.field public o:Landroidx/media3/exoplayer/source/Z;


# virtual methods
.method public final b(Lk0/u;)J
    .locals 4

    iget-object v0, p1, Lk0/u;->a:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Lk0/u;->H(I)V

    invoke-virtual {p1}, Lk0/u;->B()J

    :cond_1
    invoke-static {p1, v0}, LI0/b;->k(Lk0/u;I)I

    move-result v0

    invoke-virtual {p1, v1}, Lk0/u;->G(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(Lk0/u;JLY1/c;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Lk0/u;->a:[B

    iget-object v4, v0, Ld1/c;->n:LI0/w;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    new-instance v4, LI0/w;

    const/16 v6, 0x11

    invoke-direct {v4, v3, v6}, LI0/w;-><init>([BI)V

    iput-object v4, v0, Ld1/c;->n:LI0/w;

    const/16 v6, 0x9

    iget v1, v1, Lk0/u;->c:I

    invoke-static {v3, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, LI0/w;->c([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v2, LY1/c;->q:Ljava/lang/Object;

    return v5

    :cond_0
    const/4 v6, 0x0

    aget-byte v3, v3, v6

    and-int/lit8 v7, v3, 0x7f

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-static {v1}, LI0/b;->l(Lk0/u;)LA/j;

    move-result-object v19

    new-instance v9, LI0/w;

    iget v10, v4, LI0/w;->a:I

    iget v11, v4, LI0/w;->b:I

    iget v12, v4, LI0/w;->c:I

    iget v13, v4, LI0/w;->d:I

    iget v14, v4, LI0/w;->e:I

    iget v15, v4, LI0/w;->g:I

    iget v1, v4, LI0/w;->h:I

    iget-wide v2, v4, LI0/w;->j:J

    iget-object v4, v4, LI0/w;->l:Landroidx/media3/common/Metadata;

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-object/from16 v20, v4

    invoke-direct/range {v9 .. v20}, LI0/w;-><init>(IIIIIIIJLA/j;Landroidx/media3/common/Metadata;)V

    move-object/from16 v1, v19

    iput-object v9, v0, Ld1/c;->n:LI0/w;

    new-instance v2, Landroidx/media3/exoplayer/source/Z;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v9, v2, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroidx/media3/exoplayer/source/Z;->b:J

    iput-wide v3, v2, Landroidx/media3/exoplayer/source/Z;->q:J

    iput-object v2, v0, Ld1/c;->o:Landroidx/media3/exoplayer/source/Z;

    return v5

    :cond_1
    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    iget-object v1, v0, Ld1/c;->o:Landroidx/media3/exoplayer/source/Z;

    if-eqz v1, :cond_2

    move-wide/from16 v3, p2

    iput-wide v3, v1, Landroidx/media3/exoplayer/source/Z;->b:J

    iput-object v1, v2, LY1/c;->r:Ljava/lang/Object;

    :cond_2
    iget-object v1, v2, LY1/c;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v6

    :cond_3
    return v5
.end method

.method public final d(Z)V
    .locals 0

    invoke-super {p0, p1}, Ld1/i;->d(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ld1/c;->n:LI0/w;

    iput-object p1, p0, Ld1/c;->o:Landroidx/media3/exoplayer/source/Z;

    :cond_0
    return-void
.end method
