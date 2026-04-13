.class public final LB0/q;
.super LB0/a;


# instance fields
.field public final D:I

.field public final E:Landroidx/media3/common/Format;

.field public F:J

.field public G:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJILandroidx/media3/common/Format;)V
    .locals 16

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v0 .. v15}, LB0/a;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    iput v1, v0, LB0/q;->D:I

    move-object/from16 v1, p13

    iput-object v1, v0, LB0/q;->E:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, LB0/q;->G:Z

    return v0
.end method

.method public final e()V
    .locals 12

    iget-object v1, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-object v0, p0, LB0/a;->B:LA/j;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v2, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v2, [Landroidx/media3/exoplayer/source/e0;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/source/e0;->setSampleOffsetUs(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, LB0/q;->D:I

    invoke-virtual {v0, v2}, LA/j;->z(I)LI0/L;

    move-result-object v5

    iget-object v0, p0, LB0/q;->E:Landroidx/media3/common/Format;

    invoke-interface {v5, v0}, LI0/L;->format(Landroidx/media3/common/Format;)V

    :try_start_0
    iget-object v0, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, p0, LB0/q;->F:J

    invoke-virtual {v0, v2, v3}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    iget-wide v6, p0, LB0/q;->F:J

    add-long/2addr v2, v6

    :cond_1
    move-wide v10, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :goto_1
    new-instance v6, LI0/m;

    iget-object v7, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v8, p0, LB0/q;->F:J

    invoke-direct/range {v6 .. v11}, LI0/m;-><init>(Landroidx/media3/common/DataReader;JJ)V

    :goto_2
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-eq v4, v0, :cond_2

    iget-wide v7, p0, LB0/q;->F:J

    int-to-long v3, v4

    add-long/2addr v7, v3

    iput-wide v7, p0, LB0/q;->F:J

    const v0, 0x7fffffff

    invoke-interface {v5, v6, v0, v2}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v4

    goto :goto_2

    :cond_2
    iget-wide v3, p0, LB0/q;->F:J

    long-to-int v9, v3

    iget-wide v6, p0, LB0/f;->v:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, LI0/L;->sampleMetadata(JIIILI0/K;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iput-boolean v2, p0, LB0/q;->G:Z

    return-void

    :goto_3
    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    throw v0
.end method

.method public final l()V
    .locals 0

    return-void
.end method
