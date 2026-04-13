.class public final LB0/m;
.super LB0/a;


# instance fields
.field public final D:I

.field public final E:J

.field public final F:LB0/h;

.field public G:J

.field public volatile H:Z

.field public I:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJIJLB0/h;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, LB0/a;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 p1, p16

    iput p1, p0, LB0/m;->D:I

    move-wide/from16 p1, p17

    iput-wide p1, p0, LB0/m;->E:J

    move-object/from16 p1, p19

    iput-object p1, p0, LB0/m;->F:LB0/h;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget v0, p0, LB0/m;->D:I

    int-to-long v0, v0

    iget-wide v2, p0, LB0/o;->y:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, LB0/m;->I:Z

    return v0
.end method

.method public final d(LA/j;)V
    .locals 10

    iget-object v0, p0, LB0/f;->s:Landroidx/media3/common/Format;

    iget-object v1, v0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, v0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    iget v3, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    if-le v3, v2, :cond_3

    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget v1, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, LA/j;->z(I)LI0/L;

    move-result-object v3

    iget p1, v0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v0, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    mul-int/2addr p1, v0

    iget-wide v0, p0, LB0/f;->w:J

    iget-wide v4, p0, LB0/f;->v:J

    sub-long/2addr v0, v4

    int-to-long v4, p1

    div-long/2addr v0, v4

    :goto_0
    if-ge v2, p1, :cond_3

    int-to-long v4, v2

    mul-long/2addr v4, v0

    new-instance v6, Lk0/u;

    invoke-direct {v6}, Lk0/u;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, LI0/L;->sampleData(Lk0/u;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v9}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 13

    iget-object v1, p0, LB0/a;->B:LA/j;

    invoke-static {v1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-wide v2, p0, LB0/m;->G:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-nez v0, :cond_3

    iget-wide v2, p0, LB0/m;->E:J

    iget-object v0, v1, LA/j;->r:Ljava/lang/Object;

    check-cast v0, [Landroidx/media3/exoplayer/source/e0;

    array-length v4, v0

    move v5, v6

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v7, v0, v5

    invoke-virtual {v7, v2, v3}, Landroidx/media3/exoplayer/source/e0;->setSampleOffsetUs(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB0/m;->F:LB0/h;

    iget-wide v2, p0, LB0/a;->z:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    move-wide v2, v4

    goto :goto_1

    :cond_1
    iget-wide v7, p0, LB0/m;->E:J

    sub-long/2addr v2, v7

    :goto_1
    iget-wide v7, p0, LB0/a;->A:J

    cmp-long v9, v7, v4

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v4, p0, LB0/m;->E:J

    sub-long v4, v7, v4

    :goto_2
    check-cast v0, LB0/e;

    invoke-virtual/range {v0 .. v5}, LB0/e;->a(LA/j;JJ)V

    :cond_3
    :try_start_0
    iget-object v0, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, p0, LB0/m;->G:J

    invoke-virtual {v0, v2, v3}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    new-instance v7, LI0/m;

    iget-object v8, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v9, v0, Landroidx/media3/datasource/DataSpec;->position:J

    invoke-virtual {v8, v0}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v11

    invoke-direct/range {v7 .. v12}, LI0/m;-><init>(Landroidx/media3/common/DataReader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_3
    :try_start_1
    iget-boolean v0, p0, LB0/m;->H:Z

    const/4 v2, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, LB0/m;->F:LB0/h;

    check-cast v0, LB0/e;

    iget-object v0, v0, LB0/e;->b:LI0/q;

    sget-object v3, LB0/e;->z:LI0/D;

    invoke-interface {v0, v7, v3}, LI0/q;->e(LI0/r;LI0/D;)I

    move-result v0

    if-eq v0, v2, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v6

    :goto_4
    invoke-static {v3}, Lk0/c;->j(Z)V

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v6

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v1}, LB0/m;->d(LA/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-wide v0, v7, LI0/m;->s:J

    iget-object v3, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v3, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, LB0/m;->G:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iget-boolean v0, p0, LB0/m;->H:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, LB0/m;->I:Z

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_6
    :try_start_3
    iget-wide v1, v7, LI0/m;->s:J

    iget-object v3, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v3, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, LB0/m;->G:J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_7
    iget-object v1, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    throw v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/m;->H:Z

    return-void
.end method
