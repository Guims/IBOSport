.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/D;


# instance fields
.field public final a:Lv0/c;

.field public b:Lv0/d;

.field public c:Lx2/f;

.field public d:Z

.field public final e:Lt4/e;

.field public final f:Lq0/h;

.field public final g:Lh3/e;

.field public h:Lu0/r;

.field public final i:LE0/j;

.field public final j:Z

.field public final k:I

.field public final l:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 2

    new-instance v0, Lv0/c;

    invoke-direct {v0, p1}, Lv0/c;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:Lv0/c;

    new-instance p1, Lu0/h;

    invoke-direct {p1}, Lu0/h;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Lu0/r;

    new-instance p1, Lt4/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:Lt4/e;

    sget-object p1, Lw0/c;->D:Lq0/h;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Lq0/h;

    new-instance p1, LE0/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:LE0/j;

    new-instance p1, Lh3/e;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Lh3/e;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:Lh3/e;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->l:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lu0/r;)Landroidx/media3/exoplayer/source/D;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lk0/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Lu0/r;

    return-object p0
.end method

.method public final b(Lx2/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Lx2/f;

    return-void
.end method

.method public final c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/G;
    .locals 14

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Lv0/d;

    if-nez v0, :cond_0

    new-instance v0, Lv0/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lx2/f;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lx2/f;-><init>(I)V

    iput-object v1, v0, Lv0/d;->a:Lx2/f;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Lv0/d;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Lx2/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Lv0/d;

    iput-object v0, v1, Lv0/d;->a:Lx2/f;

    :cond_1
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Lv0/d;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Z

    iput-boolean v0, v5, Lv0/d;->b:Z

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:Lt4/e;

    if-nez v1, :cond_2

    new-instance v1, Lp5/p;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v0}, Lp5/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v2, v1

    :cond_2
    new-instance v0, Lv0/q;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Lu0/r;

    check-cast v1, Lu0/h;

    invoke-virtual {v1, p1}, Lu0/h;->b(Landroidx/media3/common/MediaItem;)Lu0/q;

    move-result-object v7

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Lq0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lw0/c;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:Lv0/c;

    iget-object v8, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:LE0/j;

    invoke-direct {v9, v4, v8, v2}, Lw0/c;-><init>(Lv0/c;LE0/j;Lw0/p;)V

    iget-boolean v12, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Z

    iget v13, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:I

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:Lh3/e;

    iget-wide v10, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->l:J

    move-object v3, p1

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lv0/q;-><init>(Landroidx/media3/common/MediaItem;Lv0/c;Lv0/d;Lh3/e;Lu0/q;LE0/j;Lw0/c;JZI)V

    return-object v2
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Z

    return-void
.end method
