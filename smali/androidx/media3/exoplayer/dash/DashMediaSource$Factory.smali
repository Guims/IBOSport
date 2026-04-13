.class public final Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/D;


# instance fields
.field public final a:Ls0/k;

.field public final b:Landroidx/media3/datasource/DataSource$Factory;

.field public c:Lu0/r;

.field public final d:Lh3/e;

.field public final e:LE0/j;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 3

    new-instance v0, Ls0/k;

    invoke-direct {v0, p1}, Ls0/k;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Ls0/k;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Landroidx/media3/datasource/DataSource$Factory;

    new-instance p1, Lu0/h;

    invoke-direct {p1}, Lu0/h;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lu0/r;

    new-instance p1, LE0/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:LE0/j;

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    const-wide/32 v1, 0x4c4b40

    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    new-instance p1, Lh3/e;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, Lh3/e;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:Lh3/e;

    const/4 p1, 0x1

    iget-object v0, v0, Ls0/k;->c:LB0/d;

    iput-boolean p1, v0, LB0/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lu0/r;)Landroidx/media3/exoplayer/source/D;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lk0/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lu0/r;

    return-object p0
.end method

.method public final b(Lx2/f;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Ls0/k;

    iget-object v0, v0, Ls0/k;->c:LB0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, LB0/d;->a:Lx2/f;

    return-void
.end method

.method public final c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/G;
    .locals 12

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lt0/e;

    invoke-direct {v0}, Lt0/e;-><init>()V

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, LA/j;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v2}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    new-instance v0, Ls0/h;

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lu0/r;

    check-cast v2, Lu0/h;

    invoke-virtual {v2, p1}, Lu0/h;->b(Landroidx/media3/common/MediaItem;)Lu0/q;

    move-result-object v6

    iget-wide v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    iget-wide v10, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Ls0/k;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:Lh3/e;

    iget-object v7, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:LE0/j;

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Ls0/h;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;LE0/u;Ls0/k;Lh3/e;Lu0/q;LE0/j;JJ)V

    return-object v0
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Ls0/k;

    iget-object v0, v0, Ls0/k;->c:LB0/d;

    iput-boolean p1, v0, LB0/d;->b:Z

    return-void
.end method
