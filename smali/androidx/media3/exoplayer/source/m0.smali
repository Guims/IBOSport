.class public final Landroidx/media3/exoplayer/source/m0;
.super Ljava/lang/Object;

# interfaces
.implements LE0/p;


# instance fields
.field public final b:Landroidx/media3/datasource/DataSpec;

.field public final q:Landroidx/media3/datasource/StatsDataSource;

.field public r:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/exoplayer/source/v;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/m0;->b:Landroidx/media3/datasource/DataSpec;

    new-instance p2, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/m0;->q:Landroidx/media3/datasource/StatsDataSource;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/m0;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->resetBytesRead()V

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/m0;->b:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/m0;->r:[B

    if-nez v2, :cond_0

    const/16 v2, 0x400

    new-array v2, v2, [B

    iput-object v2, p0, Landroidx/media3/exoplayer/source/m0;->r:[B

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    array-length v3, v2

    if-ne v1, v3, :cond_1

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/source/m0;->r:[B

    :cond_1
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/m0;->r:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Landroidx/media3/datasource/StatsDataSource;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :goto_2
    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    throw v1
.end method

.method public final l()V
    .locals 0

    return-void
.end method
