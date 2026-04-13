.class public final Lv0/q;
.super Landroidx/media3/exoplayer/source/a;


# instance fields
.field public final h:Lv0/m;

.field public final i:Lv0/c;

.field public final j:Lh3/e;

.field public final k:Lu0/q;

.field public final l:LE0/m;

.field public final m:Z

.field public final n:I

.field public final o:Lw0/c;

.field public final p:J

.field public q:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public r:Landroidx/media3/datasource/TransferListener;

.field public s:Landroidx/media3/common/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer.hls"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Lv0/c;Lv0/d;Lh3/e;Lu0/q;LE0/j;Lw0/c;JZI)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    iput-object p1, p0, Lv0/q;->s:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object p1, p0, Lv0/q;->q:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object p2, p0, Lv0/q;->i:Lv0/c;

    iput-object p3, p0, Lv0/q;->h:Lv0/m;

    iput-object p4, p0, Lv0/q;->j:Lh3/e;

    iput-object p5, p0, Lv0/q;->k:Lu0/q;

    iput-object p6, p0, Lv0/q;->l:LE0/m;

    iput-object p7, p0, Lv0/q;->o:Lw0/c;

    iput-wide p8, p0, Lv0/q;->p:J

    iput-boolean p10, p0, Lv0/q;->m:Z

    iput p11, p0, Lv0/q;->n:I

    return-void
.end method

.method public static u(JLjava/util/List;)Lw0/d;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/d;

    iget-wide v3, v2, Lw0/g;->t:J

    cmp-long v5, v3, p0

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Lw0/d;->A:Z

    if-eqz v5, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    cmp-long v2, v3, p0

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroidx/media3/common/MediaItem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lv0/q;->s:Landroidx/media3/common/MediaItem;
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
    iget-object v0, p0, Lv0/q;->s:Landroidx/media3/common/MediaItem;
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
    .locals 14

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/a;->i(Landroidx/media3/exoplayer/source/E;)LA/d;

    move-result-object v8

    new-instance v6, Lu0/m;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    iget-object v0, v0, Lu0/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1, p1}, Lu0/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    new-instance v0, Lv0/p;

    iget-object v4, p0, Lv0/q;->r:Landroidx/media3/datasource/TransferListener;

    iget-object v13, p0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    invoke-static {v13}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lv0/q;->h:Lv0/m;

    iget-object v2, p0, Lv0/q;->o:Lw0/c;

    iget-object v3, p0, Lv0/q;->i:Lv0/c;

    iget-object v5, p0, Lv0/q;->k:Lu0/q;

    iget-object v7, p0, Lv0/q;->l:LE0/m;

    iget-object v10, p0, Lv0/q;->j:Lh3/e;

    iget-boolean v11, p0, Lv0/q;->m:Z

    iget v12, p0, Lv0/q;->n:I

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v13}, Lv0/p;-><init>(Lv0/m;Lw0/c;Lv0/c;Landroidx/media3/datasource/TransferListener;Lu0/q;Lu0/m;LE0/m;LA/d;LE0/b;Lh3/e;ZILq0/q;)V

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lv0/q;->o:Lw0/c;

    iget-object v1, v0, Lw0/c;->v:LE0/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LE0/s;->a()V

    :cond_0
    iget-object v1, v0, Lw0/c;->z:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/b;

    iget-object v1, v0, Lw0/b;->q:LE0/s;

    invoke-virtual {v1}, LE0/s;->a()V

    iget-object v0, v0, Lw0/b;->y:Ljava/io/IOException;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final g(Landroidx/media3/common/MediaItem;)Z
    .locals 5

    invoke-virtual {p0}, Lv0/q;->b()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    sget v3, Lk0/C;->a:I

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Landroidx/media3/exoplayer/source/C;)V
    .locals 10

    check-cast p1, Lv0/p;

    iget-object v0, p1, Lv0/p;->q:Lw0/c;

    iget-object v0, v0, Lw0/c;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lv0/p;->I:[Lv0/w;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    iget-boolean v6, v5, Lv0/w;->S:Z

    if-eqz v6, :cond_0

    iget-object v6, v5, Lv0/w;->K:[Lv0/v;

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/e0;->preRelease()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lv0/w;->s:Lv0/k;

    iget-object v7, v6, Lv0/k;->q:LD0/v;

    invoke-interface {v7}, LD0/v;->l()I

    move-result v7

    iget-object v8, v6, Lv0/k;->g:Lw0/c;

    iget-object v9, v6, Lv0/k;->e:[Landroid/net/Uri;

    aget-object v7, v9, v7

    iget-object v8, v8, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw0/b;

    if-eqz v7, :cond_1

    iput-boolean v2, v7, Lw0/b;->z:Z

    :cond_1
    iput-object v4, v6, Lv0/k;->n:Landroidx/media3/exoplayer/source/b;

    iget-object v6, v5, Lv0/w;->y:LE0/s;

    invoke-virtual {v6, v5}, LE0/s;->e(LE0/q;)V

    iget-object v6, v5, Lv0/w;->G:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x1

    iput-boolean v4, v5, Lv0/w;->W:Z

    iget-object v4, v5, Lv0/w;->H:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v4, p1, Lv0/p;->F:Landroidx/media3/exoplayer/source/B;

    return-void
.end method

.method public final o(Landroidx/media3/datasource/TransferListener;)V
    .locals 11

    iput-object p1, p0, Lv0/q;->r:Landroidx/media3/datasource/TransferListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lv0/q;->k:Lu0/q;

    invoke-interface {v1, p1, v0}, Lu0/q;->c(Landroid/os/Looper;Lq0/q;)V

    invoke-interface {v1}, Lu0/q;->prepare()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->i(Landroidx/media3/exoplayer/source/E;)LA/d;

    move-result-object v0

    invoke-virtual {p0}, Lv0/q;->b()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lv0/q;->o:Lw0/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, v2, Lw0/c;->w:Landroid/os/Handler;

    iput-object v0, v2, Lw0/c;->u:LA/d;

    iput-object p0, v2, Lw0/c;->x:Lv0/q;

    new-instance p1, LE0/v;

    iget-object v3, v2, Lw0/c;->b:Lv0/c;

    iget-object v3, v3, Lv0/c;->a:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v3}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v3

    iget-object v4, v2, Lw0/c;->q:Lw0/p;

    invoke-interface {v4}, Lw0/p;->u()LE0/u;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p1, v3, v1, v5, v4}, LE0/v;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILE0/u;)V

    iget-object v1, v2, Lw0/c;->v:LE0/s;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lk0/c;->j(Z)V

    new-instance v1, LE0/s;

    const-string v3, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    invoke-direct {v1, v3}, LE0/s;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Lw0/c;->v:LE0/s;

    iget-object v3, v2, Lw0/c;->r:LE0/m;

    check-cast v3, LE0/j;

    move-object v4, v2

    iget v2, p1, LE0/v;->r:I

    invoke-virtual {v3, v2}, LE0/j;->b(I)I

    move-result v3

    invoke-virtual {v1, p1, v4, v3}, LE0/s;->f(LE0/p;LE0/n;I)J

    new-instance v1, Landroidx/media3/exoplayer/source/v;

    iget-object p1, p1, LE0/v;->q:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lv0/q;->o:Lw0/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lw0/c;->z:Landroid/net/Uri;

    iput-object v1, v0, Lw0/c;->A:Lw0/i;

    iput-object v1, v0, Lw0/c;->y:Lw0/l;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lw0/c;->C:J

    iget-object v2, v0, Lw0/c;->v:LE0/s;

    invoke-virtual {v2, v1}, LE0/s;->e(LE0/q;)V

    iput-object v1, v0, Lw0/c;->v:LE0/s;

    iget-object v2, v0, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/b;

    iget-object v4, v4, Lw0/b;->q:LE0/s;

    invoke-virtual {v4, v1}, LE0/s;->e(LE0/q;)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lw0/c;->w:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, v0, Lw0/c;->w:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lv0/q;->k:Lu0/q;

    invoke-interface {v0}, Lu0/q;->release()V

    return-void
.end method

.method public final v(Lw0/i;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lw0/i;->p:Z

    iget-boolean v3, v1, Lw0/i;->g:Z

    iget-object v4, v1, Lw0/i;->r:Lp3/H;

    iget-wide v5, v1, Lw0/i;->u:J

    iget-wide v7, v1, Lw0/i;->e:J

    iget v9, v1, Lw0/i;->d:I

    iget-wide v10, v1, Lw0/i;->h:J

    if-eqz v2, :cond_0

    invoke-static {v10, v11}, Lk0/C;->c0(J)J

    move-result-wide v14

    move-wide/from16 v19, v14

    goto :goto_0

    :cond_0
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const/4 v2, 0x1

    const/4 v14, 0x2

    if-eq v9, v14, :cond_2

    if-ne v9, v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_2
    :goto_1
    move-wide/from16 v17, v19

    :goto_2
    new-instance v32, Lv0/n;

    iget-object v15, v0, Lv0/q;->o:Lw0/c;

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v12, v15, Lw0/c;->y:Lw0/l;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    iget-boolean v12, v15, Lw0/c;->B:Z

    const-wide/16 v23, 0x0

    if-eqz v12, :cond_12

    iget-object v12, v1, Lw0/i;->v:Lw0/h;

    iget-wide v14, v15, Lw0/c;->C:J

    sub-long v25, v10, v14

    iget-boolean v14, v1, Lw0/i;->o:Z

    if-eqz v14, :cond_3

    add-long v15, v25, v5

    goto :goto_3

    :cond_3
    move-wide/from16 v15, v21

    :goto_3
    iget-boolean v13, v1, Lw0/i;->p:Z

    if-eqz v13, :cond_4

    move v13, v3

    iget-wide v2, v0, Lv0/q;->p:J

    invoke-static {v2, v3}, Lk0/C;->y(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lk0/C;->Q(J)J

    move-result-wide v2

    add-long/2addr v10, v5

    sub-long/2addr v2, v10

    move-wide/from16 v35, v2

    goto :goto_4

    :cond_4
    move v13, v3

    move-wide/from16 v35, v23

    :goto_4
    iget-object v2, v0, Lv0/q;->q:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_5

    invoke-static {v2, v3}, Lk0/C;->Q(J)J

    move-result-wide v2

    :goto_5
    move-wide/from16 v33, v2

    goto :goto_7

    :cond_5
    cmp-long v2, v7, v21

    if-eqz v2, :cond_6

    sub-long v2, v5, v7

    goto :goto_6

    :cond_6
    iget-wide v2, v12, Lw0/h;->d:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_7

    iget-wide v10, v1, Lw0/i;->n:J

    cmp-long v10, v10, v21

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    iget-wide v2, v12, Lw0/h;->c:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    const-wide/16 v2, 0x3

    iget-wide v10, v1, Lw0/i;->m:J

    mul-long/2addr v2, v10

    :goto_6
    add-long v2, v2, v35

    goto :goto_5

    :goto_7
    add-long v37, v5, v35

    invoke-static/range {v33 .. v38}, Lk0/C;->j(JJJ)J

    move-result-wide v2

    invoke-virtual {v0}, Lv0/q;->b()Landroidx/media3/common/MediaItem;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v6, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v10, -0x800001

    cmpl-float v6, v6, v10

    const/4 v11, 0x0

    if-nez v6, :cond_9

    iget v5, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_9

    iget-wide v5, v12, Lw0/h;->c:J

    cmp-long v5, v5, v21

    if-nez v5, :cond_9

    iget-wide v5, v12, Lw0/h;->d:J

    cmp-long v5, v5, v21

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    move v5, v11

    :goto_8
    new-instance v6, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v6}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-static {v2, v3}, Lk0/C;->c0(J)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v5, :cond_a

    move v6, v3

    goto :goto_9

    :cond_a
    iget-object v6, v0, Lv0/q;->q:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v6, v6, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    :goto_9
    invoke-virtual {v2, v6}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    if-eqz v5, :cond_b

    goto :goto_a

    :cond_b
    iget-object v3, v0, Lv0/q;->q:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v3, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    :goto_a
    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v2

    iput-object v2, v0, Lv0/q;->q:Landroidx/media3/common/MediaItem$LiveConfiguration;

    cmp-long v3, v7, v21

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v2, v3}, Lk0/C;->Q(J)J

    move-result-wide v2

    sub-long v7, v37, v2

    :goto_b
    if-eqz v13, :cond_d

    move-wide/from16 v23, v7

    :goto_c
    const/4 v13, 0x2

    goto :goto_e

    :cond_d
    iget-object v2, v1, Lw0/i;->s:Lp3/H;

    invoke-static {v7, v8, v2}, Lv0/q;->u(JLjava/util/List;)Lw0/d;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-wide v2, v2, Lw0/g;->t:J

    :goto_d
    move-wide/from16 v23, v2

    goto :goto_c

    :cond_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_c

    :cond_f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lk0/C;->c(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/f;

    iget-object v3, v2, Lw0/f;->B:Lp3/H;

    invoke-static {v7, v8, v3}, Lv0/q;->u(JLjava/util/List;)Lw0/d;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-wide v2, v3, Lw0/g;->t:J

    goto :goto_d

    :cond_10
    iget-wide v2, v2, Lw0/g;->t:J

    goto :goto_d

    :goto_e
    if-ne v9, v13, :cond_11

    iget-boolean v2, v1, Lw0/i;->f:Z

    if-eqz v2, :cond_11

    const/16 v31, 0x1

    :goto_f
    move-wide/from16 v21, v15

    goto :goto_10

    :cond_11
    move/from16 v31, v11

    goto :goto_f

    :goto_10
    new-instance v16, Landroidx/media3/exoplayer/source/k0;

    iget-wide v1, v1, Lw0/i;->u:J

    const/16 v28, 0x1

    xor-int/lit8 v30, v14, 0x1

    invoke-virtual {v0}, Lv0/q;->b()Landroidx/media3/common/MediaItem;

    move-result-object v33

    iget-object v3, v0, Lv0/q;->q:Landroidx/media3/common/MediaItem$LiveConfiguration;

    const/16 v29, 0x1

    move-object/from16 v34, v3

    move-wide/from16 v27, v23

    move-wide/from16 v23, v1

    invoke-direct/range {v16 .. v34}, Landroidx/media3/exoplayer/source/k0;-><init>(JJJJJJZZZLv0/n;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    :goto_11
    move-object/from16 v1, v16

    goto :goto_15

    :cond_12
    move v13, v3

    cmp-long v2, v7, v21

    if-eqz v2, :cond_16

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_13

    :cond_13
    if-nez v13, :cond_15

    cmp-long v2, v7, v5

    if-nez v2, :cond_14

    goto :goto_12

    :cond_14
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lk0/C;->c(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/f;

    iget-wide v7, v2, Lw0/g;->t:J

    :cond_15
    :goto_12
    move-wide/from16 v27, v7

    goto :goto_14

    :cond_16
    :goto_13
    move-wide/from16 v27, v23

    :goto_14
    new-instance v16, Landroidx/media3/exoplayer/source/k0;

    iget-wide v1, v1, Lw0/i;->u:J

    invoke-virtual {v0}, Lv0/q;->b()Landroidx/media3/common/MediaItem;

    move-result-object v33

    const/16 v34, 0x0

    const-wide/16 v25, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-wide/from16 v23, v1

    move-wide/from16 v21, v1

    invoke-direct/range {v16 .. v34}, Landroidx/media3/exoplayer/source/k0;-><init>(JJJJJJZZZLv0/n;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    goto :goto_11

    :goto_15
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/common/Timeline;)V

    return-void
.end method
