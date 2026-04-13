.class public final LB0/n;
.super LB0/f;


# instance fields
.field public A:J

.field public volatile B:Z

.field public final y:LB0/h;

.field public z:LA/j;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;LB0/h;)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, LB0/f;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    move-object/from16 p1, p6

    iput-object p1, p0, LB0/n;->y:LB0/h;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 7

    iget-wide v0, p0, LB0/n;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, LB0/n;->y:LB0/h;

    iget-object v2, p0, LB0/n;->z:LA/j;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v0

    check-cast v1, LB0/e;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v1 .. v6}, LB0/e;->a(LA/j;JJ)V

    :cond_0
    :try_start_0
    iget-object v0, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-wide v1, p0, LB0/n;->A:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    new-instance v1, LI0/m;

    iget-object v2, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v3, v0, Landroidx/media3/datasource/DataSpec;->position:J

    invoke-virtual {v2, v0}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, LI0/m;-><init>(Landroidx/media3/common/DataReader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v0, p0, LB0/n;->B:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LB0/n;->y:LB0/h;

    check-cast v0, LB0/e;

    iget-object v0, v0, LB0/e;->b:LI0/q;

    sget-object v2, LB0/e;->z:LI0/D;

    invoke-interface {v0, v1, v2}, LI0/q;->e(LI0/r;LI0/D;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v4}, Lk0/c;->j(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_2
    iget-wide v0, v1, LI0/m;->s:J

    iget-object v2, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, LB0/n;->A:J

    iget-object v0, p0, LB0/n;->y:LB0/h;

    check-cast v0, LB0/e;

    iget-object v0, v0, LB0/e;->w:LI0/F;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_3
    iget-wide v1, v1, LI0/m;->s:J

    iget-object v3, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v3, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, LB0/n;->A:J

    iget-object v1, p0, LB0/n;->y:LB0/h;

    check-cast v1, LB0/e;

    iget-object v1, v1, LB0/e;->w:LI0/F;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    iget-object v1, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    throw v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/n;->B:Z

    return-void
.end method
