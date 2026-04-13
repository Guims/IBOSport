.class public final Lv0/g;
.super LB0/f;


# instance fields
.field public A:[B

.field public y:[B

.field public volatile z:Z


# virtual methods
.method public final e()V
    .locals 6

    :try_start_0
    iget-object v0, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-object v1, p0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lv0/g;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lv0/g;->y:[B

    array-length v3, v0

    add-int/lit16 v4, v1, 0x4000

    const/16 v5, 0x4000

    if-ge v3, v4, :cond_1

    array-length v3, v0

    add-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lv0/g;->y:[B

    :cond_1
    iget-object v0, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-object v3, p0, Lv0/g;->y:[B

    invoke-virtual {v0, v3, v1, v5}, Landroidx/media3/datasource/StatsDataSource;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lv0/g;->z:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lv0/g;->y:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lv0/g;->A:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :goto_1
    iget-object v1, p0, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    throw v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv0/g;->z:Z

    return-void
.end method
