.class public final LE0/v;
.super Ljava/lang/Object;

# interfaces
.implements LE0/p;


# instance fields
.field public final b:J

.field public final q:Landroidx/media3/datasource/DataSpec;

.field public final r:I

.field public final s:Landroidx/media3/datasource/StatsDataSource;

.field public final t:LE0/u;

.field public volatile u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILE0/u;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object v0, p0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    iput-object p2, p0, LE0/v;->q:Landroidx/media3/datasource/DataSpec;

    iput p3, p0, LE0/v;->r:I

    iput-object p4, p0, LE0/v;->t:LE0/u;

    sget-object p1, Landroidx/media3/exoplayer/source/v;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, LE0/v;->b:J

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget-object v0, p0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->resetBytesRead()V

    new-instance v0, Landroidx/media3/datasource/DataSourceInputStream;

    iget-object v1, p0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    iget-object v2, p0, LE0/v;->q:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v0, v1, v2}, Landroidx/media3/datasource/DataSourceInputStream;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/datasource/DataSourceInputStream;->open()V

    iget-object v1, p0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LE0/v;->t:LE0/u;

    invoke-interface {v2, v1, v0}, LE0/u;->h(Landroid/net/Uri;Landroidx/media3/datasource/DataSourceInputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, LE0/v;->u:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lk0/C;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lk0/C;->g(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final l()V
    .locals 0

    return-void
.end method
