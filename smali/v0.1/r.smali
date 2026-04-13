.class public final Lv0/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# instance fields
.field public final b:I

.field public final q:Lv0/w;

.field public r:I


# direct methods
.method public constructor <init>(Lv0/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/r;->q:Lv0/w;

    iput p2, p0, Lv0/r;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lv0/r;->r:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lv0/r;->r:I

    const/4 v1, -0x2

    iget-object v2, p0, Lv0/r;->q:Lv0/w;

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Lv0/w;->A()V

    return-void

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Lv0/w;->A()V

    iget-object v1, v2, Lv0/w;->K:[Lv0/v;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->maybeThrowError()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, LI1/c;

    invoke-virtual {v2}, Lv0/w;->j()V

    iget-object v1, v2, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    iget v2, p0, Lv0/r;->b:I

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "Unable to bind a sample queue to TrackGroup with MIME type "

    const-string v3, "."

    invoke-static {v2, v1, v3}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 6

    iget v0, p0, Lv0/r;->r:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget-object v0, p0, Lv0/r;->q:Lv0/w;

    invoke-virtual {v0}, Lv0/w;->j()V

    iget-object v3, v0, Lv0/w;->Z:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lv0/w;->Z:[I

    iget v4, p0, Lv0/r;->b:I

    aget v3, v3, v4

    const/4 v5, -0x2

    if-ne v3, v2, :cond_2

    iget-object v1, v0, Lv0/w;->Y:Ljava/util/Set;

    iget-object v0, v0, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, -0x3

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v5

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lv0/w;->c0:[Z

    aget-boolean v2, v0, v3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    aput-boolean v1, v0, v3

    :goto_2
    iput v3, p0, Lv0/r;->r:I

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lv0/r;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 3

    iget v0, p0, Lv0/r;->r:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lv0/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lv0/r;->r:I

    iget-object v1, p0, Lv0/r;->q:Lv0/w;

    invoke-virtual {v1}, Lv0/w;->y()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lv0/w;->K:[Lv0/v;

    aget-object v0, v2, v0

    iget-boolean v1, v1, Lv0/w;->i0:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/e0;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j(J)I
    .locals 4

    invoke-virtual {p0}, Lv0/r;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lv0/r;->r:I

    iget-object v1, p0, Lv0/r;->q:Lv0/w;

    invoke-virtual {v1}, Lv0/w;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v1, Lv0/w;->K:[Lv0/v;

    aget-object v2, v2, v0

    iget-boolean v3, v1, Lv0/w;->i0:Z

    invoke-virtual {v2, p1, p2, v3}, Landroidx/media3/exoplayer/source/e0;->getSkipCount(JZ)I

    move-result p1

    iget-object p2, v1, Lv0/w;->C:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move-object p2, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Lv0/o;

    if-eqz p2, :cond_5

    iget-boolean v1, p2, Lv0/o;->Z:Z

    if-nez v1, :cond_5

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v1

    invoke-virtual {p2, v0}, Lv0/o;->f(I)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_5
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/e0;->skip(I)V

    return p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lv0/r;->r:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, LU2/e;->a(I)V

    const/4 v1, -0x4

    return v1

    :cond_0
    invoke-virtual {v0}, Lv0/r;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, v0, Lv0/r;->r:I

    iget-object v5, v0, Lv0/r;->q:Lv0/w;

    iget-object v6, v5, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lv0/w;->y()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv0/o;

    iget v9, v9, Lv0/o;->z:I

    iget-object v10, v5, Lv0/w;->K:[Lv0/v;

    array-length v10, v10

    move v11, v8

    :goto_1
    if-ge v11, v10, :cond_3

    iget-object v12, v5, Lv0/w;->c0:[Z

    aget-boolean v12, v12, v11

    if-eqz v12, :cond_2

    iget-object v12, v5, Lv0/w;->K:[Lv0/v;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Landroidx/media3/exoplayer/source/e0;->peekSourceId()J

    move-result-wide v12

    int-to-long v14, v9

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-static {v8, v7, v6}, Lk0/C;->V(IILjava/util/List;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv0/o;

    iget-object v11, v7, LB0/f;->s:Landroidx/media3/common/Format;

    iget-object v9, v5, Lv0/w;->V:Landroidx/media3/common/Format;

    invoke-virtual {v11, v9}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v5, Lv0/w;->z:LA/d;

    iget v10, v5, Lv0/w;->q:I

    iget v12, v7, LB0/f;->t:I

    iget-object v13, v7, LB0/f;->u:Ljava/lang/Object;

    iget-wide v14, v7, LB0/f;->v:J

    invoke-virtual/range {v9 .. v15}, LA/d;->g(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V

    :cond_5
    iput-object v11, v5, Lv0/w;->V:Landroidx/media3/common/Format;

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv0/o;

    iget-boolean v7, v7, Lv0/o;->Z:Z

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v5, Lv0/w;->K:[Lv0/v;

    aget-object v4, v4, v3

    iget-boolean v7, v5, Lv0/w;->i0:Z

    move/from16 v9, p3

    invoke-virtual {v4, v1, v2, v9, v7}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    move-result v2

    const/4 v4, -0x5

    if-ne v2, v4, :cond_b

    iget-object v4, v1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v5, Lv0/w;->Q:I

    if-ne v3, v7, :cond_a

    iget-object v7, v5, Lv0/w;->K:[Lv0/v;

    aget-object v3, v7, v3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->peekSourceId()J

    move-result-wide v9

    invoke-static {v9, v10}, La/a;->f(J)I

    move-result v3

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv0/o;

    iget v7, v7, Lv0/o;->z:I

    if-eq v7, v3, :cond_8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_9

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/o;

    iget-object v3, v3, LB0/f;->s:Landroidx/media3/common/Format;

    goto :goto_4

    :cond_9
    iget-object v3, v5, Lv0/w;->U:Landroidx/media3/common/Format;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format;->withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v4

    :cond_a
    iput-object v4, v1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    :cond_b
    return v2

    :cond_c
    :goto_5
    return v4
.end method
