.class public final Landroidx/media3/exoplayer/source/Y;
.super Landroidx/media3/exoplayer/source/a;


# instance fields
.field public final h:Landroidx/media3/datasource/DataSource$Factory;

.field public final i:LA3/d;

.field public final j:Lu0/q;

.field public final k:LE0/m;

.field public final l:I

.field public final m:Z

.field public n:Z

.field public o:J

.field public p:Z

.field public q:Z

.field public r:Landroidx/media3/datasource/TransferListener;

.field public s:Landroidx/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;LA3/d;Lu0/q;LE0/m;IZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/Y;->s:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/Y;->h:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/Y;->i:LA3/d;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/Y;->j:Lu0/q;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/Y;->k:LE0/m;

    iput p6, p0, Landroidx/media3/exoplayer/source/Y;->l:I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/source/Y;->m:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/Y;->n:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/Y;->o:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroidx/media3/common/MediaItem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/Y;->s:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/Y;->s:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;
    .locals 16

    move-object/from16 v8, p0

    iget-object v0, v8, Landroidx/media3/exoplayer/source/Y;->h:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    iget-object v0, v8, Landroidx/media3/exoplayer/source/Y;->r:Landroidx/media3/datasource/TransferListener;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/Y;->b()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/source/V;

    move-object v3, v1

    iget-object v1, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v8, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    invoke-static {v4}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v4, v8, Landroidx/media3/exoplayer/source/Y;->i:LA3/d;

    iget-object v4, v4, LA3/d;->q:Ljava/lang/Object;

    check-cast v4, LI0/t;

    move-object v5, v3

    new-instance v3, LJ/l;

    invoke-direct {v3, v4}, LJ/l;-><init>(LI0/t;)V

    move-object v4, v5

    new-instance v5, Lu0/m;

    iget-object v6, v8, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    iget-object v6, v6, Lu0/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct {v5, v6, v7, v9}, Lu0/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/a;->i(Landroidx/media3/exoplayer/source/E;)LA/d;

    move-result-object v7

    iget-object v10, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget-wide v11, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    invoke-static {v11, v12}, Lk0/C;->Q(J)J

    move-result-wide v13

    const/4 v15, 0x0

    move-object v0, v4

    iget-object v4, v8, Landroidx/media3/exoplayer/source/Y;->j:Lu0/q;

    iget-object v6, v8, Landroidx/media3/exoplayer/source/Y;->k:LE0/m;

    iget v11, v8, Landroidx/media3/exoplayer/source/Y;->l:I

    iget-boolean v12, v8, Landroidx/media3/exoplayer/source/Y;->m:Z

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v15}, Landroidx/media3/exoplayer/source/V;-><init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;LJ/l;Lu0/q;Lu0/m;LE0/m;LA/d;Landroidx/media3/exoplayer/source/Y;LE0/b;Ljava/lang/String;IZJLF0/a;)V

    return-object v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final g(Landroidx/media3/common/MediaItem;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/Y;->b()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v2, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    iget-wide v3, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    sget v1, Lk0/C;->a:I

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Landroidx/media3/exoplayer/source/C;)V
    .locals 4

    check-cast p1, Landroidx/media3/exoplayer/source/V;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/source/V;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->preRelease()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    invoke-virtual {v0, p1}, LE0/s;->e(LE0/q;)V

    iget-object v0, p1, Landroidx/media3/exoplayer/source/V;->G:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p1, Landroidx/media3/exoplayer/source/V;->H:Landroidx/media3/exoplayer/source/B;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/media3/exoplayer/source/V;->e0:Z

    return-void
.end method

.method public final o(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/Y;->r:Landroidx/media3/datasource/TransferListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/Y;->j:Lu0/q;

    invoke-interface {v1, p1, v0}, Lu0/q;->c(Landroid/os/Looper;Lq0/q;)V

    invoke-interface {v1}, Lu0/q;->prepare()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/Y;->u()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/Y;->j:Lu0/q;

    invoke-interface {v0}, Lu0/q;->release()V

    return-void
.end method

.method public final u()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/exoplayer/source/k0;

    iget-wide v6, v0, Landroidx/media3/exoplayer/source/Y;->o:J

    iget-boolean v14, v0, Landroidx/media3/exoplayer/source/Y;->p:Z

    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/Y;->q:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/Y;->b()Landroidx/media3/common/MediaItem;

    move-result-object v3

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v8, v6

    invoke-direct/range {v1 .. v19}, Landroidx/media3/exoplayer/source/k0;-><init>(JJJJJJZZZLv0/n;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/Y;->n:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/media3/exoplayer/source/W;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/t;-><init>(Landroidx/media3/common/Timeline;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final v(JZZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/Y;->o:J

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/Y;->n:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/Y;->o:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/Y;->p:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/Y;->q:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/Y;->o:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/Y;->p:Z

    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/Y;->q:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/Y;->n:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/Y;->u()V

    return-void
.end method
