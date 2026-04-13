.class public final Ls0/h;
.super Landroidx/media3/exoplayer/source/a;


# instance fields
.field public A:LE0/s;

.field public B:Landroidx/media3/datasource/TransferListener;

.field public C:LI1/c;

.field public D:Landroid/os/Handler;

.field public E:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public F:Landroid/net/Uri;

.field public final G:Landroid/net/Uri;

.field public H:Lt0/c;

.field public I:Z

.field public J:J

.field public K:J

.field public L:J

.field public M:I

.field public N:J

.field public O:I

.field public P:Landroidx/media3/common/MediaItem;

.field public final h:Z

.field public final i:Landroidx/media3/datasource/DataSource$Factory;

.field public final j:Ls0/a;

.field public final k:Lh3/e;

.field public final l:Lu0/q;

.field public final m:LE0/m;

.field public final n:LK1/c;

.field public final o:J

.field public final p:J

.field public final q:LA/d;

.field public final r:LE0/u;

.field public final s:Ls0/e;

.field public final t:Ljava/lang/Object;

.field public final u:Landroid/util/SparseArray;

.field public final v:Ls0/d;

.field public final w:Ls0/d;

.field public final x:Ls0/e;

.field public final y:LE0/t;

.field public z:Landroidx/media3/datasource/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer.dash"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;LE0/u;Ls0/k;Lh3/e;Lu0/q;LE0/j;JJ)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    iput-object p1, p0, Ls0/h;->P:Landroidx/media3/common/MediaItem;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object v0, p0, Ls0/h;->E:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Ls0/h;->F:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object p1, p0, Ls0/h;->G:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Ls0/h;->H:Lt0/c;

    iput-object p2, p0, Ls0/h;->i:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Ls0/h;->r:LE0/u;

    iput-object p4, p0, Ls0/h;->j:Ls0/a;

    iput-object p6, p0, Ls0/h;->l:Lu0/q;

    iput-object p7, p0, Ls0/h;->m:LE0/m;

    iput-wide p8, p0, Ls0/h;->o:J

    iput-wide p10, p0, Ls0/h;->p:J

    iput-object p5, p0, Ls0/h;->k:Lh3/e;

    new-instance p2, LK1/c;

    const/16 p3, 0x13

    invoke-direct {p2, p3}, LK1/c;-><init>(I)V

    iput-object p2, p0, Ls0/h;->n:LK1/c;

    const/4 p2, 0x0

    iput-boolean p2, p0, Ls0/h;->h:Z

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->i(Landroidx/media3/exoplayer/source/E;)LA/d;

    move-result-object p1

    iput-object p1, p0, Ls0/h;->q:LA/d;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/h;->t:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls0/h;->u:Landroid/util/SparseArray;

    new-instance p1, Ls0/e;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ls0/e;-><init>(Ls0/h;I)V

    iput-object p1, p0, Ls0/h;->x:Ls0/e;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ls0/h;->N:J

    iput-wide p1, p0, Ls0/h;->L:J

    new-instance p1, Ls0/e;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Ls0/e;-><init>(Ls0/h;I)V

    iput-object p1, p0, Ls0/h;->s:Ls0/e;

    new-instance p1, Ls0/e;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Ls0/e;-><init>(Ls0/h;I)V

    iput-object p1, p0, Ls0/h;->y:LE0/t;

    new-instance p1, Ls0/d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ls0/d;-><init>(Ls0/h;I)V

    iput-object p1, p0, Ls0/h;->v:Ls0/d;

    new-instance p1, Ls0/d;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ls0/d;-><init>(Ls0/h;I)V

    iput-object p1, p0, Ls0/h;->w:Ls0/d;

    return-void
.end method

.method public static u(Lt0/h;)Z
    .locals 5

    iget-object p0, p0, Lt0/h;->c:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt0/a;

    iget v2, v2, Lt0/a;->b:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroidx/media3/common/MediaItem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ls0/h;->P:Landroidx/media3/common/MediaItem;
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
    iget-object v0, p0, Ls0/h;->P:Landroidx/media3/common/MediaItem;
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
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Ls0/h;->O:I

    sub-int v8, v2, v3

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/a;->i(Landroidx/media3/exoplayer/source/E;)LA/d;

    move-result-object v14

    new-instance v12, Lu0/m;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    iget-object v2, v2, Lu0/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3, v1}, Lu0/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    new-instance v4, Ls0/c;

    iget v1, v0, Ls0/h;->O:I

    add-int v5, v1, v8

    iget-object v6, v0, Ls0/h;->H:Lt0/c;

    iget-object v10, v0, Ls0/h;->B:Landroidx/media3/datasource/TransferListener;

    iget-wide v1, v0, Ls0/h;->L:J

    iget-object v3, v0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    invoke-static {v3}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v7, v0, Ls0/h;->n:LK1/c;

    iget-object v9, v0, Ls0/h;->j:Ls0/a;

    iget-object v11, v0, Ls0/h;->l:Lu0/q;

    iget-object v13, v0, Ls0/h;->m:LE0/m;

    iget-object v15, v0, Ls0/h;->y:LE0/t;

    move-wide/from16 v16, v1

    iget-object v1, v0, Ls0/h;->k:Lh3/e;

    iget-object v2, v0, Ls0/h;->x:Ls0/e;

    move-wide/from16 v18, v16

    move-object/from16 v17, v15

    move-wide/from16 v15, v18

    move-object/from16 v18, p2

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v4 .. v21}, Ls0/c;-><init>(ILt0/c;LK1/c;ILs0/a;Landroidx/media3/datasource/TransferListener;Lu0/q;Lu0/m;LE0/m;LA/d;JLE0/t;LE0/b;Lh3/e;Ls0/e;Lq0/q;)V

    iget-object v1, v0, Ls0/h;->u:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Ls0/h;->y:LE0/t;

    invoke-interface {v0}, LE0/t;->a()V

    return-void
.end method

.method public final g(Landroidx/media3/common/MediaItem;)Z
    .locals 5

    invoke-virtual {p0}, Ls0/h;->b()Landroidx/media3/common/MediaItem;

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
    .locals 5

    check-cast p1, Ls0/c;

    iget-object v0, p1, Ls0/c;->B:Ls0/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls0/r;->x:Z

    iget-object v0, v0, Ls0/r;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p1, Ls0/c;->G:[LB0/l;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, LB0/l;->z(Ls0/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p1, Ls0/c;->F:Landroidx/media3/exoplayer/source/B;

    iget-object v0, p0, Ls0/h;->u:Landroid/util/SparseArray;

    iget p1, p1, Ls0/c;->b:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final o(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Ls0/h;->B:Landroidx/media3/datasource/TransferListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Ls0/h;->l:Lu0/q;

    invoke-interface {v1, p1, v0}, Lu0/q;->c(Landroid/os/Looper;Lq0/q;)V

    invoke-interface {v1}, Lu0/q;->prepare()V

    iget-boolean p1, p0, Ls0/h;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ls0/h;->y(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Ls0/h;->i:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {p1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Ls0/h;->z:Landroidx/media3/datasource/DataSource;

    new-instance p1, LE0/s;

    const-string v0, "DashMediaSource"

    invoke-direct {p1, v0}, LE0/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ls0/h;->A:LE0/s;

    const/4 p1, 0x0

    invoke-static {p1}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Ls0/h;->D:Landroid/os/Handler;

    invoke-virtual {p0}, Ls0/h;->z()V

    return-void
.end method

.method public final r()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls0/h;->I:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ls0/h;->z:Landroidx/media3/datasource/DataSource;

    iget-object v2, p0, Ls0/h;->A:LE0/s;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, LE0/s;->e(LE0/q;)V

    iput-object v1, p0, Ls0/h;->A:LE0/s;

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ls0/h;->J:J

    iput-wide v2, p0, Ls0/h;->K:J

    iget-object v2, p0, Ls0/h;->G:Landroid/net/Uri;

    iput-object v2, p0, Ls0/h;->F:Landroid/net/Uri;

    iput-object v1, p0, Ls0/h;->C:LI1/c;

    iget-object v2, p0, Ls0/h;->D:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Ls0/h;->D:Landroid/os/Handler;

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Ls0/h;->L:J

    iput v0, p0, Ls0/h;->M:I

    iput-wide v1, p0, Ls0/h;->N:J

    iget-object v0, p0, Ls0/h;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Ls0/h;->n:LK1/c;

    iget-object v1, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Ls0/h;->l:Lu0/q;

    invoke-interface {v0}, Lu0/q;->release()V

    return-void
.end method

.method public final v()V
    .locals 5

    iget-object v0, p0, Ls0/h;->A:LE0/s;

    new-instance v1, Ls0/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ls0/e;-><init>(Ls0/h;I)V

    sget-object v2, LF0/b;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, LF0/b;->c:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ls0/e;->b()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, LE0/s;

    const-string v2, "SntpClient"

    invoke-direct {v0, v2}, LE0/s;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v2, LW3/e;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, LW3/e;-><init>(I)V

    new-instance v3, Le4/c;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v1}, Le4/c;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, LE0/s;->f(LE0/p;LE0/n;I)J

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final w(LE0/v;J)V
    .locals 11

    new-instance v1, Landroidx/media3/exoplayer/source/v;

    iget-wide v2, p1, LE0/v;->b:J

    iget-object v0, p1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    invoke-direct {v1, p2, p3}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object p2, p0, Ls0/h;->m:LE0/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, LE0/v;->r:I

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v0, p0, Ls0/h;->q:LA/d;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, LA/d;->i(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final x(Ljava/io/IOException;)V
    .locals 4

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    invoke-static {v0, v1, p1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ls0/h;->L:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ls0/h;->y(Z)V

    return-void
.end method

.method public final y(Z)V
    .locals 42

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v0, v1, Ls0/h;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget v6, v1, Ls0/h;->O:I

    if-lt v4, v6, :cond_8

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ls0/c;

    iget-object v7, v1, Ls0/h;->H:Lt0/c;

    iget v0, v1, Ls0/h;->O:I

    sub-int/2addr v4, v0

    iput-object v7, v6, Ls0/c;->J:Lt0/c;

    iput v4, v6, Ls0/c;->K:I

    iget-object v0, v6, Ls0/c;->B:Ls0/r;

    iput-boolean v2, v0, Ls0/r;->w:Z

    iput-object v7, v0, Ls0/r;->u:Lt0/c;

    iget-object v8, v0, Ls0/r;->t:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v0, Ls0/r;->u:Lt0/c;

    iget-wide v11, v11, Lt0/c;->h:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    iget-object v8, v6, Ls0/c;->G:[LB0/l;

    if-eqz v8, :cond_4

    array-length v9, v8

    move v10, v2

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v0, v8, v10

    iget-object v11, v0, LB0/l;->t:Ls0/n;

    iget-object v0, v11, Ls0/n;->i:[Ls0/l;

    :try_start_0
    iput-object v7, v11, Ls0/n;->k:Lt0/c;

    iput v4, v11, Ls0/n;->l:I

    invoke-virtual {v7, v4}, Lt0/c;->d(I)J

    move-result-wide v12

    invoke-virtual {v11}, Ls0/n;->a()Ljava/util/ArrayList;

    move-result-object v14
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/b; {:try_start_0 .. :try_end_0} :catch_1

    move v15, v2

    const/16 v16, 0x1

    :goto_3
    :try_start_1
    array-length v5, v0

    if-ge v15, v5, :cond_2

    iget-object v5, v11, Ls0/n;->j:LD0/v;

    invoke-interface {v5, v15}, LD0/v;->j(I)I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0/m;

    aget-object v2, v0, v15

    invoke-virtual {v2, v12, v13, v5}, Ls0/l;->a(JLt0/m;)Ls0/l;

    move-result-object v2

    aput-object v2, v0, v15
    :try_end_1
    .catch Landroidx/media3/exoplayer/source/b; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    :goto_4
    iput-object v0, v11, Ls0/n;->m:Landroidx/media3/exoplayer/source/b;

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v16, 0x1

    iget-object v0, v6, Ls0/c;->F:Landroidx/media3/exoplayer/source/B;

    invoke-interface {v0, v6}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    goto :goto_5

    :cond_4
    const/16 v16, 0x1

    :goto_5
    invoke-virtual {v7, v4}, Lt0/c;->b(I)Lt0/h;

    move-result-object v0

    iget-object v0, v0, Lt0/h;->d:Ljava/util/List;

    iput-object v0, v6, Ls0/c;->L:Ljava/util/List;

    iget-object v0, v6, Ls0/c;->H:[Ls0/o;

    array-length v2, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_8

    aget-object v8, v0, v5

    iget-object v9, v6, Ls0/c;->L:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt0/g;

    invoke-virtual {v10}, Lt0/g;->a()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v8, Ls0/o;->t:Lt0/g;

    invoke-virtual {v12}, Lt0/g;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v9, v7, Lt0/c;->m:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-boolean v11, v7, Lt0/c;->d:Z

    if-eqz v11, :cond_6

    if-ne v4, v9, :cond_6

    move/from16 v9, v16

    goto :goto_7

    :cond_6
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v8, v10, v9}, Ls0/o;->b(Lt0/g;Z)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x1

    iget-object v0, v1, Ls0/h;->H:Lt0/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lt0/c;->b(I)Lt0/h;

    move-result-object v0

    iget-object v2, v1, Ls0/h;->H:Lt0/c;

    iget-object v2, v2, Lt0/c;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v1, Ls0/h;->H:Lt0/c;

    invoke-virtual {v3, v2}, Lt0/c;->b(I)Lt0/h;

    move-result-object v3

    iget-object v4, v1, Ls0/h;->H:Lt0/c;

    invoke-virtual {v4, v2}, Lt0/c;->d(I)J

    move-result-wide v4

    iget-wide v6, v1, Ls0/h;->L:J

    invoke-static {v6, v7}, Lk0/C;->y(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lk0/C;->Q(J)J

    move-result-wide v6

    iget-object v2, v1, Ls0/h;->H:Lt0/c;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lt0/c;->d(I)J

    move-result-wide v9

    iget-wide v11, v0, Lt0/h;->b:J

    iget-object v2, v0, Lt0/h;->c:Ljava/util/List;

    invoke-static {v11, v12}, Lk0/C;->Q(J)J

    move-result-wide v11

    invoke-static {v0}, Ls0/h;->u(Lt0/h;)Z

    move-result v8

    move/from16 v17, v8

    move-wide v14, v11

    const/4 v13, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move-wide/from16 v18, v11

    if-ge v13, v8, :cond_10

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt0/a;

    const-wide/16 v21, 0x0

    iget-object v11, v8, Lt0/a;->c:Ljava/util/List;

    iget v8, v8, Lt0/a;->b:I

    move/from16 v12, v16

    if-eq v8, v12, :cond_a

    const/4 v12, 0x2

    if-eq v8, v12, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    if-eqz v17, :cond_b

    if-nez v8, :cond_f

    :cond_b
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_b

    :cond_c
    const/4 v8, 0x0

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lt0/m;

    invoke-virtual {v11}, Lt0/m;->c()Ls0/i;

    move-result-object v8

    if-nez v8, :cond_d

    goto :goto_a

    :cond_d
    invoke-interface {v8, v9, v10, v6, v7}, Ls0/i;->K(JJ)J

    move-result-wide v11

    cmp-long v11, v11, v21

    if-nez v11, :cond_e

    :goto_a
    move-wide/from16 v11, v18

    goto :goto_c

    :cond_e
    invoke-interface {v8, v9, v10, v6, v7}, Ls0/i;->k(JJ)J

    move-result-wide v11

    invoke-interface {v8, v11, v12}, Ls0/i;->a(J)J

    move-result-wide v11

    add-long v11, v11, v18

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_f
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v11, v18

    const/16 v16, 0x1

    goto :goto_8

    :cond_10
    const-wide/16 v21, 0x0

    move-wide v11, v14

    :goto_c
    iget-wide v8, v3, Lt0/h;->b:J

    iget-object v2, v3, Lt0/h;->c:Ljava/util/List;

    invoke-static {v8, v9}, Lk0/C;->Q(J)J

    move-result-wide v8

    invoke-static {v3}, Ls0/h;->u(Lt0/h;)Z

    move-result v3

    const-wide v13, 0x7fffffffffffffffL

    const/4 v10, 0x0

    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_18

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt0/a;

    move/from16 v17, v3

    iget-object v3, v15, Lt0/a;->c:Ljava/util/List;

    iget v15, v15, Lt0/a;->b:I

    move-wide/from16 v18, v8

    const/4 v8, 0x1

    if-eq v15, v8, :cond_11

    const/4 v8, 0x2

    if-eq v15, v8, :cond_12

    const/4 v9, 0x1

    goto :goto_e

    :cond_11
    const/4 v8, 0x2

    :cond_12
    const/4 v9, 0x0

    :goto_e
    if-eqz v17, :cond_13

    if-nez v9, :cond_17

    :cond_13
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_f

    :cond_14
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt0/m;

    invoke-virtual {v3}, Lt0/m;->c()Ls0/i;

    move-result-object v3

    if-nez v3, :cond_15

    add-long v8, v18, v4

    goto :goto_10

    :cond_15
    invoke-interface {v3, v4, v5, v6, v7}, Ls0/i;->K(JJ)J

    move-result-wide v23

    cmp-long v9, v23, v21

    if-nez v9, :cond_16

    move-wide/from16 v8, v18

    goto :goto_10

    :cond_16
    invoke-interface {v3, v4, v5, v6, v7}, Ls0/i;->k(JJ)J

    move-result-wide v25

    add-long v25, v25, v23

    const-wide/16 v23, 0x1

    sub-long v8, v25, v23

    invoke-interface {v3, v8, v9}, Ls0/i;->a(J)J

    move-result-wide v23

    add-long v23, v23, v18

    invoke-interface {v3, v8, v9, v4, v5}, Ls0/i;->g(JJ)J

    move-result-wide v8

    add-long v8, v8, v23

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v13, v8

    :cond_17
    :goto_f
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v17

    move-wide/from16 v8, v18

    goto :goto_d

    :cond_18
    move-wide v8, v13

    :goto_10
    iget-object v3, v1, Ls0/h;->H:Lt0/c;

    iget-boolean v3, v3, Lt0/c;->d:Z

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt0/a;

    iget-object v4, v4, Lt0/a;->c:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt0/m;

    invoke-virtual {v4}, Lt0/m;->c()Ls0/i;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ls0/i;->E()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_12

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1a
    const/4 v2, 0x1

    goto :goto_13

    :cond_1b
    :goto_12
    const/4 v2, 0x0

    :goto_13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1c

    iget-object v5, v1, Ls0/h;->H:Lt0/c;

    iget-wide v13, v5, Lt0/c;->f:J

    cmp-long v5, v13, v3

    if-eqz v5, :cond_1c

    invoke-static {v13, v14}, Lk0/C;->Q(J)J

    move-result-wide v13

    sub-long v13, v8, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_1c
    sub-long v33, v8, v11

    iget-object v5, v1, Ls0/h;->H:Lt0/c;

    iget-boolean v8, v5, Lt0/c;->d:Z

    if-eqz v8, :cond_32

    iget-wide v8, v5, Lt0/c;->a:J

    cmp-long v5, v8, v3

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_14

    :cond_1d
    const/4 v5, 0x0

    :goto_14
    invoke-static {v5}, Lk0/c;->j(Z)V

    iget-object v5, v1, Ls0/h;->H:Lt0/c;

    iget-wide v8, v5, Lt0/c;->a:J

    invoke-static {v8, v9}, Lk0/C;->Q(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v6, v11

    invoke-virtual {v1}, Ls0/h;->b()Landroidx/media3/common/MediaItem;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-static {v6, v7}, Lk0/C;->c0(J)J

    move-result-wide v8

    iget-wide v13, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v10, v13, v3

    if-eqz v10, :cond_1e

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    goto :goto_15

    :cond_1e
    iget-object v10, v1, Ls0/h;->H:Lt0/c;

    iget-object v10, v10, Lt0/c;->j:Lt0/t;

    if-eqz v10, :cond_1f

    iget-wide v13, v10, Lt0/t;->c:J

    cmp-long v10, v13, v3

    if-eqz v10, :cond_1f

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    goto :goto_15

    :cond_1f
    move-wide v13, v8

    :goto_15
    sub-long v17, v6, v33

    invoke-static/range {v17 .. v18}, Lk0/C;->c0(J)J

    move-result-wide v17

    cmp-long v10, v17, v21

    if-gez v10, :cond_20

    cmp-long v10, v13, v21

    if-lez v10, :cond_20

    move-wide/from16 v17, v21

    :cond_20
    iget-object v10, v1, Ls0/h;->H:Lt0/c;

    move-wide/from16 v19, v3

    iget-wide v3, v10, Lt0/c;->c:J

    cmp-long v10, v3, v19

    if-eqz v10, :cond_21

    add-long v3, v17, v3

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    :cond_21
    move-wide/from16 v25, v17

    iget-wide v3, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v10, v3, v19

    if-eqz v10, :cond_23

    move-wide/from16 v23, v3

    move-wide/from16 v27, v8

    invoke-static/range {v23 .. v28}, Lk0/C;->j(JJJ)J

    move-result-wide v25

    :cond_22
    :goto_16
    move-wide/from16 v29, v25

    goto :goto_17

    :cond_23
    move-wide/from16 v27, v8

    iget-object v3, v1, Ls0/h;->H:Lt0/c;

    iget-object v3, v3, Lt0/c;->j:Lt0/t;

    if-eqz v3, :cond_22

    iget-wide v3, v3, Lt0/t;->b:J

    cmp-long v8, v3, v19

    if-eqz v8, :cond_22

    move-wide/from16 v23, v3

    invoke-static/range {v23 .. v28}, Lk0/C;->j(JJJ)J

    move-result-wide v25

    goto :goto_16

    :goto_17
    cmp-long v3, v29, v13

    if-lez v3, :cond_24

    move-wide/from16 v31, v29

    goto :goto_18

    :cond_24
    move-wide/from16 v31, v13

    :goto_18
    iget-object v3, v1, Ls0/h;->E:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v3, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v8, v3, v19

    if-eqz v8, :cond_25

    goto :goto_19

    :cond_25
    iget-object v3, v1, Ls0/h;->H:Lt0/c;

    iget-object v4, v3, Lt0/c;->j:Lt0/t;

    if-eqz v4, :cond_26

    iget-wide v8, v4, Lt0/t;->a:J

    cmp-long v4, v8, v19

    if-eqz v4, :cond_26

    move-wide v3, v8

    goto :goto_19

    :cond_26
    iget-wide v3, v3, Lt0/c;->g:J

    cmp-long v8, v3, v19

    if-eqz v8, :cond_27

    goto :goto_19

    :cond_27
    iget-wide v3, v1, Ls0/h;->o:J

    :goto_19
    cmp-long v8, v3, v29

    if-gez v8, :cond_28

    move-wide/from16 v3, v29

    :cond_28
    cmp-long v8, v3, v31

    const-wide/16 v9, 0x2

    iget-wide v13, v1, Ls0/h;->p:J

    if-lez v8, :cond_29

    div-long v3, v33, v9

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Lk0/C;->c0(J)J

    move-result-wide v27

    invoke-static/range {v27 .. v32}, Lk0/C;->j(JJJ)J

    move-result-wide v3

    move-wide/from16 v23, v3

    move-wide/from16 v17, v9

    move-wide/from16 v9, v29

    move-wide/from16 v40, v23

    move-wide/from16 v23, v6

    move-wide/from16 v6, v40

    :goto_1a
    move v8, v2

    move-wide/from16 v2, v31

    goto :goto_1b

    :cond_29
    move-wide/from16 v17, v9

    move-wide/from16 v9, v29

    move-wide/from16 v29, v3

    move-wide/from16 v23, v6

    move-wide/from16 v6, v29

    goto :goto_1a

    :goto_1b
    iget v4, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v15, -0x800001

    cmpl-float v25, v4, v15

    if-eqz v25, :cond_2a

    goto :goto_1c

    :cond_2a
    iget-object v4, v1, Ls0/h;->H:Lt0/c;

    iget-object v4, v4, Lt0/c;->j:Lt0/t;

    if-eqz v4, :cond_2b

    iget v4, v4, Lt0/t;->d:F

    goto :goto_1c

    :cond_2b
    move v4, v15

    :goto_1c
    iget v5, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v25, v5, v15

    if-eqz v25, :cond_2c

    goto :goto_1d

    :cond_2c
    iget-object v5, v1, Ls0/h;->H:Lt0/c;

    iget-object v5, v5, Lt0/c;->j:Lt0/t;

    if-eqz v5, :cond_2d

    iget v5, v5, Lt0/t;->e:F

    goto :goto_1d

    :cond_2d
    move v5, v15

    :goto_1d
    cmpl-float v25, v4, v15

    if-nez v25, :cond_2f

    cmpl-float v15, v5, v15

    if-nez v15, :cond_2f

    iget-object v15, v1, Ls0/h;->H:Lt0/c;

    iget-object v15, v15, Lt0/c;->j:Lt0/t;

    if-eqz v15, :cond_2e

    move/from16 v25, v4

    move/from16 v26, v5

    iget-wide v4, v15, Lt0/t;->a:J

    cmp-long v4, v4, v19

    if-nez v4, :cond_30

    :cond_2e
    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v4

    goto :goto_1e

    :cond_2f
    move/from16 v25, v4

    move/from16 v26, v5

    :cond_30
    move/from16 v4, v25

    move/from16 v5, v26

    :goto_1e
    new-instance v15, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v15}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-virtual {v15, v6, v7}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v2

    iput-object v2, v1, Ls0/h;->E:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v2, v1, Ls0/h;->H:Lt0/c;

    iget-wide v2, v2, Lt0/c;->a:J

    invoke-static {v11, v12}, Lk0/C;->c0(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v2, v1, Ls0/h;->E:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v2, v3}, Lk0/C;->Q(J)J

    move-result-wide v2

    sub-long v6, v23, v2

    div-long v2, v33, v17

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v9, v6, v2

    if-gez v9, :cond_31

    move-wide/from16 v35, v2

    move-wide/from16 v26, v4

    goto :goto_1f

    :cond_31
    move-wide/from16 v26, v4

    move-wide/from16 v35, v6

    goto :goto_1f

    :cond_32
    move v8, v2

    move-wide/from16 v19, v3

    move-wide/from16 v26, v19

    move-wide/from16 v35, v21

    :goto_1f
    iget-wide v2, v0, Lt0/h;->b:J

    invoke-static {v2, v3}, Lk0/C;->Q(J)J

    move-result-wide v2

    sub-long v31, v11, v2

    new-instance v23, Ls0/f;

    iget-object v0, v1, Ls0/h;->H:Lt0/c;

    iget-wide v2, v0, Lt0/c;->a:J

    iget-wide v4, v1, Ls0/h;->L:J

    iget v6, v1, Ls0/h;->O:I

    invoke-virtual {v1}, Ls0/h;->b()Landroidx/media3/common/MediaItem;

    move-result-object v38

    iget-object v7, v1, Ls0/h;->H:Lt0/c;

    iget-boolean v7, v7, Lt0/c;->d:Z

    if-eqz v7, :cond_33

    iget-object v7, v1, Ls0/h;->E:Landroidx/media3/common/MediaItem$LiveConfiguration;

    :goto_20
    move-object/from16 v37, v0

    move-wide/from16 v24, v2

    move-wide/from16 v28, v4

    move/from16 v30, v6

    move-object/from16 v39, v7

    goto :goto_21

    :cond_33
    const/4 v7, 0x0

    goto :goto_20

    :goto_21
    invoke-direct/range {v23 .. v39}, Ls0/f;-><init>(JJJIJJJLt0/c;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/common/Timeline;)V

    iget-boolean v0, v1, Ls0/h;->h:Z

    if-nez v0, :cond_3b

    iget-object v0, v1, Ls0/h;->D:Landroid/os/Handler;

    iget-object v2, v1, Ls0/h;->w:Ls0/d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v8, :cond_38

    iget-object v0, v1, Ls0/h;->D:Landroid/os/Handler;

    iget-object v5, v1, Ls0/h;->H:Lt0/c;

    iget-wide v6, v1, Ls0/h;->L:J

    invoke-static {v6, v7}, Lk0/C;->y(J)J

    move-result-wide v6

    iget-object v8, v5, Lt0/c;->m:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Lt0/c;->b(I)Lt0/h;

    move-result-object v9

    iget-wide v10, v9, Lt0/h;->b:J

    iget-object v9, v9, Lt0/h;->c:Ljava/util/List;

    invoke-static {v10, v11}, Lk0/C;->Q(J)J

    move-result-wide v10

    invoke-virtual {v5, v8}, Lt0/c;->d(I)J

    move-result-wide v12

    invoke-static {v6, v7}, Lk0/C;->Q(J)J

    move-result-wide v6

    iget-wide v14, v5, Lt0/c;->a:J

    invoke-static {v14, v15}, Lk0/C;->Q(J)J

    move-result-wide v14

    invoke-static {v3, v4}, Lk0/C;->Q(J)J

    move-result-wide v17

    move-wide/from16 v3, v17

    const/4 v5, 0x0

    :goto_22
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_37

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt0/a;

    iget-object v8, v8, Lt0/a;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_34

    move/from16 v16, v5

    const/4 v5, 0x0

    goto :goto_23

    :cond_34
    move/from16 v16, v5

    const/4 v5, 0x0

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt0/m;

    invoke-virtual {v8}, Lt0/m;->c()Ls0/i;

    move-result-object v8

    if-eqz v8, :cond_36

    add-long v23, v14, v10

    invoke-interface {v8, v12, v13, v6, v7}, Ls0/i;->l(JJ)J

    move-result-wide v25

    add-long v25, v25, v23

    sub-long v25, v25, v6

    const-wide/32 v23, 0x186a0

    sub-long v27, v3, v23

    cmp-long v8, v25, v27

    if-ltz v8, :cond_35

    cmp-long v8, v25, v3

    if-lez v8, :cond_36

    add-long v23, v3, v23

    cmp-long v8, v25, v23

    if-gez v8, :cond_36

    :cond_35
    move-wide/from16 v3, v25

    :cond_36
    :goto_23
    add-int/lit8 v8, v16, 0x1

    move v5, v8

    goto :goto_22

    :cond_37
    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v3, v4, v5, v6, v7}, LE5/l;->r(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_38
    iget-boolean v0, v1, Ls0/h;->I:Z

    if-eqz v0, :cond_39

    invoke-virtual {v1}, Ls0/h;->z()V

    goto :goto_25

    :cond_39
    if-eqz p1, :cond_3b

    iget-object v0, v1, Ls0/h;->H:Lt0/c;

    iget-boolean v2, v0, Lt0/c;->d:Z

    if-eqz v2, :cond_3b

    iget-wide v2, v0, Lt0/c;->e:J

    cmp-long v0, v2, v19

    if-eqz v0, :cond_3b

    cmp-long v0, v2, v21

    if-nez v0, :cond_3a

    const-wide/16 v3, 0x1388

    goto :goto_24

    :cond_3a
    move-wide v3, v2

    :goto_24
    iget-wide v5, v1, Ls0/h;->J:J

    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v5, v2

    move-wide/from16 v2, v21

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v0, v1, Ls0/h;->D:Landroid/os/Handler;

    iget-object v4, v1, Ls0/h;->v:Ls0/d;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3b
    :goto_25
    return-void
.end method

.method public final z()V
    .locals 15

    iget-object v0, p0, Ls0/h;->D:Landroid/os/Handler;

    iget-object v1, p0, Ls0/h;->v:Ls0/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ls0/h;->A:LE0/s;

    invoke-virtual {v0}, LE0/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls0/h;->A:LE0/s;

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls0/h;->I:Z

    return-void

    :cond_1
    iget-object v1, p0, Ls0/h;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ls0/h;->F:Landroid/net/Uri;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Ls0/h;->I:Z

    new-instance v1, LE0/v;

    iget-object v2, p0, Ls0/h;->z:Landroidx/media3/datasource/DataSource;

    iget-object v3, p0, Ls0/h;->r:LE0/u;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v0, v4, v3}, LE0/v;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILE0/u;)V

    iget-object v0, p0, Ls0/h;->s:Ls0/e;

    iget-object v2, p0, Ls0/h;->m:LE0/m;

    check-cast v2, LE0/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    iget-object v3, p0, Ls0/h;->A:LE0/s;

    invoke-virtual {v3, v1, v0, v2}, LE0/s;->f(LE0/p;LE0/n;I)J

    iget-object v4, p0, Ls0/h;->q:LA/d;

    new-instance v5, Landroidx/media3/exoplayer/source/v;

    iget-object v0, v1, LE0/v;->q:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v5, v0}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    iget v6, v1, LE0/v;->r:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v14}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
