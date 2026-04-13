.class public final Lq0/j;
.super Ljava/lang/Object;

# interfaces
.implements Lq0/a;


# instance fields
.field public final b:Lk0/d;

.field public final q:Landroidx/media3/common/Timeline$Period;

.field public final r:Landroidx/media3/common/Timeline$Window;

.field public final s:Lq0/i;

.field public final t:Landroid/util/SparseArray;

.field public u:Lk0/q;

.field public v:Landroidx/media3/common/Player;

.field public w:Lk0/y;

.field public x:Z


# direct methods
.method public constructor <init>(Lk0/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lq0/j;->b:Lk0/d;

    new-instance v0, Lk0/q;

    sget v1, Lk0/C;->a:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    new-instance v2, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    invoke-direct {v0, v1, p1, v2}, Lk0/q;-><init>(Landroid/os/Looper;Lk0/d;Lk0/o;)V

    iput-object v0, p0, Lq0/j;->u:Lk0/q;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Lq0/j;->q:Landroidx/media3/common/Timeline$Period;

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Lq0/j;->r:Landroidx/media3/common/Timeline$Window;

    new-instance v0, Lq0/i;

    invoke-direct {v0, p1}, Lq0/i;-><init>(Landroidx/media3/common/Timeline$Period;)V

    iput-object v0, p0, Lq0/j;->s:Lq0/i;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lq0/j;->t:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a()Lq0/b;
    .locals 1

    iget-object v0, p0, Lq0/j;->s:Lq0/i;

    iget-object v0, v0, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0, v0}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;)Lq0/b;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    iget-object v1, v0, Lq0/j;->b:Lk0/d;

    check-cast v1, Lk0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/E;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v1, :cond_5

    iget-object v1, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v1

    iget v9, v6, Landroidx/media3/exoplayer/source/E;->b:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v9, v6, Landroidx/media3/exoplayer/source/E;->c:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lq0/j;->r:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v4, v5, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v7

    :cond_5
    :goto_2
    iget-object v1, v0, Lq0/j;->s:Lq0/i;

    iget-object v11, v1, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    new-instance v1, Lq0/b;

    iget-object v9, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v9}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v9

    iget-object v10, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v10}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v10

    iget-object v12, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v12}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v12

    iget-object v14, v0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v14}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v14

    invoke-direct/range {v1 .. v15}, Lq0/b;-><init>(JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;JJ)V

    return-object v1
.end method

.method public final c(Landroidx/media3/exoplayer/source/E;)Lq0/b;
    .locals 3

    iget-object v0, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq0/j;->s:Lq0/i;

    iget-object v1, v1, Lq0/i;->c:Lp3/d0;

    invoke-virtual {v1, p1}, Lp3/d0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Timeline;

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    iget-object v2, p0, Lq0/j;->q:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0, p1}, Lq0/j;->b(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result p1

    iget-object v1, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Lq0/j;->b(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    return-object p1
.end method

.method public final d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;
    .locals 1

    iget-object v0, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lq0/j;->s:Lq0/i;

    iget-object v0, v0, Lq0/i;->c:Lp3/d0;

    invoke-virtual {v0, p2}, Lp3/d0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Timeline;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, v0, p1, p2}, Lq0/j;->b(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lq0/j;->b(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lq0/b;
    .locals 1

    iget-object v0, p0, Lq0/j;->s:Lq0/i;

    iget-object v0, v0, Lq0/i;->f:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0, v0}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lq0/b;ILk0/n;)V
    .locals 1

    iget-object v0, p0, Lq0/j;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lq0/j;->u:Lk0/q;

    invoke-virtual {p1, p2, p3}, Lk0/q;->f(ILk0/n;)V

    return-void
.end method

.method public final g(Landroidx/media3/common/Player;Landroid/os/Looper;)V
    .locals 7

    iget-object v0, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq0/j;->s:Lq0/i;

    iget-object v0, v0, Lq0/i;->b:Lp3/H;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    const/4 v0, 0x0

    iget-object v1, p0, Lq0/j;->b:Lk0/d;

    check-cast v1, Lk0/w;

    invoke-virtual {v1, p2, v0}, Lk0/w;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lk0/y;

    move-result-object v0

    iput-object v0, p0, Lq0/j;->w:Lk0/y;

    iget-object v0, p0, Lq0/j;->u:Lk0/q;

    new-instance v5, LD0/f;

    const/16 v1, 0xe

    invoke-direct {v5, p0, v1, p1}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v4, v0, Lk0/q;->a:Lk0/d;

    new-instance v1, Lk0/q;

    iget-object v2, v0, Lk0/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-boolean v6, v0, Lk0/q;->i:Z

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lk0/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lk0/d;Lk0/o;Z)V

    iput-object v1, p0, Lq0/j;->u:Lk0/q;

    return-void
.end method

.method public final onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->e()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->e()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0x15

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0xd

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onCues(Lj0/c;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0x1b

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onCues(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object v0

    new-instance v1, Lib/player/base/b;

    invoke-direct {v1, v0, p1}, Lib/player/base/b;-><init>(Lq0/b;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0x1d

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDeviceVolumeChanged(IZ)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v0, 0x1a

    invoke-direct {p2, v0}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, LD0/f;

    const/16 v0, 0xf

    invoke-direct {p2, p1, v0, p3}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/E;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/16 v0, 0x16

    invoke-direct {p2, v0}, Lq0/d;-><init>(I)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDrmKeysRestored(ILandroidx/media3/exoplayer/source/E;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/16 v0, 0xc

    invoke-direct {p2, v0}, Lq0/d;-><init>(I)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/E;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    invoke-direct {p2, p1, p3}, Lq0/d;-><init>(Lq0/b;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/E;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lq0/d;-><init>(I)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onDrmSessionReleased(ILandroidx/media3/exoplayer/source/E;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/16 v0, 0x18

    invoke-direct {p2, v0}, Lq0/d;-><init>(I)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onIsPlayingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lq0/d;-><init>(I)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lq0/d;-><init>(I)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onLoadError(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p2

    new-instance p1, Lp2/f;

    invoke-direct/range {p1 .. p6}, Lp2/f;-><init>(Lq0/b;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p2, p3, p1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onLoadStarted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/f;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onMaxSeekToPreviousPositionChanged(J)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/h;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lq0/h;-><init>(I)V

    const/16 v0, 0x12

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0xe

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0x1c

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v0, 0x1b

    invoke-direct {p2, v0}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0xc

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/exoplayer/source/E;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object v0

    :goto_0
    new-instance v1, Lp2/f;

    const/4 v2, 0x5

    invoke-direct {v1, v0, p1, v2}, Lp2/f;-><init>(Lq0/b;Ljava/lang/Object;I)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/exoplayer/source/E;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    :goto_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0xf

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public final onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq0/j;->x:Z

    :cond_0
    iget-object v0, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lq0/j;->s:Lq0/i;

    iget-object v2, v1, Lq0/i;->b:Lp3/H;

    iget-object v3, v1, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    iget-object v4, v1, Lq0/i;->a:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v2, v3, v4}, Lq0/i;->b(Landroidx/media3/common/Player;Lp3/H;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/E;

    move-result-object v0

    iput-object v0, v1, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/e;

    invoke-direct {v1, v0, p3, p1, p2}, Lq0/e;-><init>(Lq0/b;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onSeekBackIncrementChanged(J)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/16 v0, 0x1c

    invoke-direct {p2, v0}, Lq0/d;-><init>(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onSeekForwardIncrementChanged(J)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/f;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/d;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0x9

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->e()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0x17

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 1

    invoke-virtual {p0}, Lq0/j;->e()Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/16 v0, 0x1b

    invoke-direct {p2, v0}, Lq0/d;-><init>(I)V

    const/16 v0, 0x18

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 3

    iget-object p1, p0, Lq0/j;->v:Landroidx/media3/common/Player;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lq0/j;->s:Lq0/i;

    iget-object v0, p2, Lq0/i;->b:Lp3/H;

    iget-object v1, p2, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    iget-object v2, p2, Lq0/i;->a:Landroidx/media3/common/Timeline$Period;

    invoke-static {p1, v0, v1, v2}, Lq0/i;->b(Landroidx/media3/common/Player;Lp3/H;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/E;

    move-result-object v0

    iput-object v0, p2, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p2, p1}, Lq0/i;->d(Landroidx/media3/common/Timeline;)V

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance p2, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v0, 0x9

    invoke-direct {p2, v0}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lq0/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq0/h;-><init>(I)V

    const/16 v1, 0x13

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->a()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance p2, Lq0/d;

    const/16 p3, 0x14

    invoke-direct {p2, p3}, Lq0/d;-><init>(I)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    invoke-virtual {p0}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lp2/f;

    const/4 v2, 0x6

    invoke-direct {v1, v0, p1, v2}, Lp2/f;-><init>(Lq0/b;Ljava/lang/Object;I)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    invoke-virtual {p0}, Lq0/j;->e()Lq0/b;

    move-result-object p1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0x16

    invoke-virtual {p0, p1, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method
