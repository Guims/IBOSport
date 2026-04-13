.class public final Lq0/o;
.super Ljava/lang/Object;

# interfaces
.implements Lq0/c;


# instance fields
.field public A:Z

.field public final a:Landroid/content/Context;

.field public final b:Lq0/l;

.field public final c:Landroid/media/metrics/PlaybackSession;

.field public final d:J

.field public final e:Landroidx/media3/common/Timeline$Window;

.field public final f:Landroidx/media3/common/Timeline$Period;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public i:Ljava/lang/String;

.field public j:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroidx/media3/common/PlaybackException;

.field public o:LA/d;

.field public p:LA/d;

.field public q:LA/d;

.field public r:Landroidx/media3/common/Format;

.field public s:Landroidx/media3/common/Format;

.field public t:Landroidx/media3/common/Format;

.field public u:Z

.field public v:I

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lq0/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lq0/o;->c:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Lq0/o;->e:Landroidx/media3/common/Timeline$Window;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Lq0/o;->f:Landroidx/media3/common/Timeline$Period;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lq0/o;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lq0/o;->g:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lq0/o;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lq0/o;->l:I

    iput p1, p0, Lq0/o;->m:I

    new-instance p1, Lq0/l;

    invoke-direct {p1}, Lq0/l;-><init>()V

    iput-object p1, p0, Lq0/o;->b:Lq0/l;

    iput-object p0, p1, Lq0/l;->d:Lq0/o;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/common/Player;Lp5/p;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/FlagSet;

    invoke-virtual {v2}, Landroidx/media3/common/FlagSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_32

    :cond_0
    const/4 v7, 0x0

    move v2, v7

    :goto_0
    iget-object v3, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/FlagSet;

    invoke-virtual {v3}, Landroidx/media3/common/FlagSet;->size()I

    move-result v3

    const/16 v8, 0xb

    const/4 v9, 0x1

    if-ge v2, v3, :cond_c

    iget-object v3, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/FlagSet;

    invoke-virtual {v3, v2}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v3

    iget-object v4, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_5

    iget-object v5, v1, Lq0/o;->b:Lq0/l;

    monitor-enter v5

    :try_start_0
    iget-object v3, v5, Lq0/l;->d:Lq0/o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v5, Lq0/l;->e:Landroidx/media3/common/Timeline;

    iget-object v6, v4, Lq0/b;->b:Landroidx/media3/common/Timeline;

    iput-object v6, v5, Lq0/l;->e:Landroidx/media3/common/Timeline;

    iget-object v6, v5, Lq0/l;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq0/k;

    iget-object v9, v5, Lq0/l;->e:Landroidx/media3/common/Timeline;

    invoke-virtual {v8, v3, v9}, Lq0/k;->b(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v4}, Lq0/k;->a(Lq0/b;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    iget-boolean v9, v8, Lq0/k;->e:Z

    if-eqz v9, :cond_1

    iget-object v9, v8, Lq0/k;->a:Ljava/lang/String;

    iget-object v10, v5, Lq0/l;->f:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5, v8}, Lq0/l;->a(Lq0/k;)V

    :cond_3
    iget-object v9, v5, Lq0/l;->d:Lq0/o;

    iget-object v8, v8, Lq0/k;->a:Ljava/lang/String;

    invoke-virtual {v9, v4, v8}, Lq0/o;->j(Lq0/b;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v4}, Lq0/l;->d(Lq0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_8

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    if-ne v3, v8, :cond_b

    iget-object v3, v1, Lq0/o;->b:Lq0/l;

    iget v5, v1, Lq0/o;->k:I

    monitor-enter v3

    :try_start_2
    iget-object v6, v3, Lq0/l;->d:Lq0/o;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move v9, v7

    :goto_4
    iget-object v5, v3, Lq0/l;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq0/k;

    invoke-virtual {v6, v4}, Lq0/k;->a(Lq0/b;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    iget-boolean v8, v6, Lq0/k;->e:Z

    if-eqz v8, :cond_7

    iget-object v8, v6, Lq0/k;->a:Ljava/lang/String;

    iget-object v10, v3, Lq0/l;->f:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    iget-boolean v10, v6, Lq0/k;->f:Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    if-eqz v8, :cond_9

    invoke-virtual {v3, v6}, Lq0/l;->a(Lq0/k;)V

    :cond_9
    iget-object v8, v3, Lq0/l;->d:Lq0/o;

    iget-object v6, v6, Lq0/k;->a:Ljava/lang/String;

    invoke-virtual {v8, v4, v6}, Lq0/o;->j(Lq0/b;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3, v4}, Lq0/l;->d(Lq0/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    goto :goto_8

    :goto_7
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_b
    iget-object v3, v1, Lq0/o;->b:Lq0/l;

    invoke-virtual {v3, v4}, Lq0/l;->e(Lq0/b;)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v2, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/FlagSet;

    invoke-virtual {v2, v7}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq0/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v6, :cond_d

    iget-object v6, v5, Lq0/b;->b:Landroidx/media3/common/Timeline;

    iget-object v5, v5, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {v1, v6, v5}, Lq0/o;->i(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/E;)V

    :cond_d
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v5

    move v6, v5

    if-eqz v6, :cond_15

    iget-object v6, v1, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v6, :cond_15

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object v6

    invoke-virtual {v6, v7}, Lp3/H;->l(I)Lp3/F;

    move-result-object v6

    :cond_e
    invoke-virtual {v6}, Lp3/F;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v6}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/common/Tracks$Group;

    move v14, v7

    :goto_9
    iget v15, v13, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v14, v15, :cond_e

    invoke-virtual {v13, v14}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v13, v14}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v15

    iget-object v15, v15, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v15, :cond_f

    goto :goto_a

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_10
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_15

    iget-object v6, v1, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget v13, Lk0/C;->a:I

    invoke-static {v6}, Lq0/m;->j(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v6

    move v13, v7

    :goto_b
    iget v14, v15, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v13, v14, :cond_14

    invoke-virtual {v15, v13}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v14

    iget-object v14, v14, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    sget-object v8, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v14, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x3

    goto :goto_c

    :cond_11
    sget-object v8, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v14, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v8, v10

    goto :goto_c

    :cond_12
    sget-object v8, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v14, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x6

    goto :goto_c

    :cond_13
    add-int/lit8 v13, v13, 0x1

    const/16 v8, 0xb

    goto :goto_b

    :cond_14
    move v8, v9

    :goto_c
    invoke-static {v6, v8}, Lq0/m;->o(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    :cond_15
    const/16 v6, 0x3f3

    invoke-virtual {v2, v6}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, v1, Lq0/o;->z:I

    add-int/2addr v2, v9

    iput v2, v1, Lq0/o;->z:I

    :cond_16
    iget-object v2, v1, Lq0/o;->n:Landroidx/media3/common/PlaybackException;

    const/4 v13, 0x5

    const/4 v5, 0x4

    if-nez v2, :cond_17

    move v8, v9

    const/16 v9, 0xd

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v22, 0x9

    goto/16 :goto_1b

    :cond_17
    iget-object v8, v1, Lq0/o;->a:Landroid/content/Context;

    iget v10, v1, Lq0/o;->v:I

    if-ne v10, v5, :cond_18

    move v10, v9

    goto :goto_d

    :cond_18
    move v10, v7

    :goto_d
    iget v14, v2, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v15, 0x3e9

    if-ne v14, v15, :cond_19

    new-instance v8, LJ/q;

    const/16 v10, 0x14

    invoke-direct {v8, v10, v7, v5}, LJ/q;-><init>(III)V

    :goto_e
    const/16 v9, 0xd

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v22, 0x9

    goto/16 :goto_1a

    :cond_19
    instance-of v14, v2, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v14, :cond_1b

    move-object v14, v2

    check-cast v14, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget v15, v14, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v15, v9, :cond_1a

    move v15, v9

    goto :goto_f

    :cond_1a
    move v15, v7

    :goto_f
    iget v14, v14, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    goto :goto_10

    :cond_1b
    move v14, v7

    move v15, v14

    :goto_10
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v12, v11, Ljava/io/IOException;

    const/16 v20, 0x19

    const/16 v21, 0x1a

    const/16 v6, 0x1b

    const/16 v9, 0x17

    if-eqz v12, :cond_30

    instance-of v12, v11, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v12, :cond_1c

    check-cast v11, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v6, v11, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    new-instance v8, LJ/q;

    invoke-direct {v8, v13, v6, v5}, LJ/q;-><init>(III)V

    goto :goto_e

    :cond_1c
    instance-of v12, v11, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    if-nez v12, :cond_1d

    instance-of v12, v11, Landroidx/media3/common/ParserException;

    if-eqz v12, :cond_1e

    :cond_1d
    const/16 v6, 0x9

    const/4 v9, 0x6

    const/16 v11, 0x8

    const/4 v12, 0x7

    goto/16 :goto_17

    :cond_1e
    instance-of v10, v11, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez v10, :cond_1f

    instance-of v12, v11, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    if-eqz v12, :cond_20

    :cond_1f
    const/16 v6, 0x9

    goto/16 :goto_13

    :cond_20
    iget v8, v2, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v10, 0x3ea

    if-ne v8, v10, :cond_21

    new-instance v8, LJ/q;

    const/16 v6, 0x15

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_e

    :cond_21
    instance-of v8, v11, Lu0/i;

    if-eqz v8, :cond_28

    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v8, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v10, :cond_22

    check-cast v8, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v8}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lk0/C;->v(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lk0/C;->u(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_11

    :pswitch_0
    move/from16 v6, v21

    goto :goto_11

    :pswitch_1
    move/from16 v6, v20

    goto :goto_11

    :pswitch_2
    const/16 v6, 0x1c

    goto :goto_11

    :pswitch_3
    const/16 v6, 0x18

    :goto_11
    new-instance v9, LJ/q;

    invoke-direct {v9, v6, v8, v5}, LJ/q;-><init>(III)V

    move-object v8, v9

    goto/16 :goto_e

    :cond_22
    sget v10, Lk0/C;->a:I

    if-lt v10, v9, :cond_23

    instance-of v10, v8, Landroid/media/MediaDrmResetException;

    if-eqz v10, :cond_23

    new-instance v8, LJ/q;

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_23
    instance-of v6, v8, Landroid/media/NotProvisionedException;

    if-eqz v6, :cond_24

    new-instance v8, LJ/q;

    const/16 v10, 0x18

    invoke-direct {v8, v10, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_24
    instance-of v6, v8, Landroid/media/DeniedByServerException;

    if-eqz v6, :cond_25

    new-instance v8, LJ/q;

    const/16 v6, 0x1d

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_25
    instance-of v6, v8, Lu0/F;

    if-eqz v6, :cond_26

    new-instance v8, LJ/q;

    invoke-direct {v8, v9, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_26
    instance-of v6, v8, Lu0/e;

    if-eqz v6, :cond_27

    new-instance v8, LJ/q;

    const/16 v12, 0x1c

    invoke-direct {v8, v12, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_27
    new-instance v8, LJ/q;

    const/16 v6, 0x1e

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_28
    instance-of v6, v11, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    if-eqz v6, :cond_2a

    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_2a

    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v8, v6, Landroid/system/ErrnoException;

    if-eqz v8, :cond_29

    check-cast v6, Landroid/system/ErrnoException;

    iget v6, v6, Landroid/system/ErrnoException;->errno:I

    sget v8, Landroid/system/OsConstants;->EACCES:I

    if-ne v6, v8, :cond_29

    new-instance v8, LJ/q;

    const/16 v6, 0x20

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_29
    new-instance v8, LJ/q;

    const/16 v6, 0x1f

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_e

    :cond_2a
    new-instance v8, LJ/q;

    const/16 v6, 0x9

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    :goto_12
    move/from16 v22, v6

    const/16 v9, 0xd

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    goto/16 :goto_1a

    :goto_13
    invoke-static {v8}, Lk0/t;->b(Landroid/content/Context;)Lk0/t;

    move-result-object v8

    invoke-virtual {v8}, Lk0/t;->c()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2b

    new-instance v8, LJ/q;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_12

    :cond_2b
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v9, v8, Ljava/net/UnknownHostException;

    if-eqz v9, :cond_2c

    new-instance v8, LJ/q;

    const/4 v9, 0x6

    invoke-direct {v8, v9, v7, v5}, LJ/q;-><init>(III)V

    move/from16 v22, v6

    move/from16 v19, v9

    const/16 v9, 0xd

    const/16 v17, 0x8

    const/16 v18, 0x7

    goto/16 :goto_1a

    :cond_2c
    const/4 v9, 0x6

    instance-of v8, v8, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_2d

    new-instance v8, LJ/q;

    const/4 v12, 0x7

    invoke-direct {v8, v12, v7, v5}, LJ/q;-><init>(III)V

    :goto_14
    move/from16 v22, v6

    move/from16 v19, v9

    move/from16 v18, v12

    const/16 v9, 0xd

    const/16 v17, 0x8

    goto/16 :goto_1a

    :cond_2d
    const/4 v12, 0x7

    if-eqz v10, :cond_2e

    check-cast v11, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget v8, v11, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2e

    new-instance v8, LJ/q;

    invoke-direct {v8, v5, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_14

    :cond_2e
    new-instance v8, LJ/q;

    const/16 v11, 0x8

    invoke-direct {v8, v11, v7, v5}, LJ/q;-><init>(III)V

    :goto_15
    move/from16 v22, v6

    move/from16 v19, v9

    move/from16 v17, v11

    move/from16 v18, v12

    :goto_16
    const/16 v9, 0xd

    goto/16 :goto_1a

    :goto_17
    new-instance v8, LJ/q;

    if-eqz v10, :cond_2f

    const/16 v10, 0xa

    goto :goto_18

    :cond_2f
    const/16 v10, 0xb

    :goto_18
    invoke-direct {v8, v10, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_15

    :cond_30
    const/16 v10, 0x18

    const/16 v12, 0x1c

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v22, 0x9

    if-eqz v15, :cond_32

    if-eqz v14, :cond_31

    const/4 v8, 0x1

    if-ne v14, v8, :cond_32

    :cond_31
    new-instance v8, LJ/q;

    const/16 v6, 0x23

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_16

    :cond_32
    if-eqz v15, :cond_33

    const/4 v8, 0x3

    if-ne v14, v8, :cond_33

    new-instance v8, LJ/q;

    const/16 v6, 0xf

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_16

    :cond_33
    if-eqz v15, :cond_34

    const/4 v8, 0x2

    if-ne v14, v8, :cond_34

    new-instance v8, LJ/q;

    invoke-direct {v8, v9, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_16

    :cond_34
    instance-of v8, v11, Ly0/q;

    if-eqz v8, :cond_35

    check-cast v11, Ly0/q;

    iget-object v6, v11, Ly0/q;->s:Ljava/lang/String;

    invoke-static {v6}, Lk0/C;->v(Ljava/lang/String;)I

    move-result v6

    new-instance v8, LJ/q;

    const/16 v9, 0xd

    invoke-direct {v8, v9, v6, v5}, LJ/q;-><init>(III)V

    goto/16 :goto_1a

    :cond_35
    const/16 v9, 0xd

    instance-of v8, v11, Ly0/n;

    const/16 v14, 0xe

    if-eqz v8, :cond_36

    check-cast v11, Ly0/n;

    iget v6, v11, Ly0/n;->b:I

    new-instance v8, LJ/q;

    invoke-direct {v8, v14, v6, v5}, LJ/q;-><init>(III)V

    goto :goto_1a

    :cond_36
    instance-of v8, v11, Ljava/lang/OutOfMemoryError;

    if-eqz v8, :cond_37

    new-instance v8, LJ/q;

    invoke-direct {v8, v14, v7, v5}, LJ/q;-><init>(III)V

    goto :goto_1a

    :cond_37
    instance-of v8, v11, Lr0/o;

    if-eqz v8, :cond_38

    check-cast v11, Lr0/o;

    iget v6, v11, Lr0/o;->b:I

    new-instance v8, LJ/q;

    const/16 v10, 0x11

    invoke-direct {v8, v10, v6, v5}, LJ/q;-><init>(III)V

    goto :goto_1a

    :cond_38
    instance-of v8, v11, Lr0/r;

    if-eqz v8, :cond_39

    check-cast v11, Lr0/r;

    iget v6, v11, Lr0/r;->b:I

    new-instance v8, LJ/q;

    const/16 v10, 0x12

    invoke-direct {v8, v10, v6, v5}, LJ/q;-><init>(III)V

    goto :goto_1a

    :cond_39
    instance-of v8, v11, Landroid/media/MediaCodec$CryptoException;

    if-eqz v8, :cond_3a

    check-cast v11, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v11}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Lk0/C;->u(I)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    goto :goto_19

    :pswitch_4
    move/from16 v6, v21

    goto :goto_19

    :pswitch_5
    move/from16 v6, v20

    goto :goto_19

    :pswitch_6
    move v6, v12

    goto :goto_19

    :pswitch_7
    move v6, v10

    :goto_19
    new-instance v10, LJ/q;

    invoke-direct {v10, v6, v8, v5}, LJ/q;-><init>(III)V

    move-object v8, v10

    goto :goto_1a

    :cond_3a
    new-instance v8, LJ/q;

    const/16 v6, 0x16

    invoke-direct {v8, v6, v7, v5}, LJ/q;-><init>(III)V

    :goto_1a
    iget-object v6, v1, Lq0/o;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lq0/n;->g()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v10

    iget-wide v11, v1, Lq0/o;->d:J

    sub-long v11, v3, v11

    invoke-static {v10, v11, v12}, Lq0/m;->f(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v10

    iget v11, v8, LJ/q;->b:I

    invoke-static {v10, v11}, Lq0/m;->e(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v10

    iget v8, v8, LJ/q;->c:I

    invoke-static {v10, v8}, Lq0/m;->u(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-static {v8, v2}, Lq0/m;->g(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    invoke-static {v2}, Lq0/m;->h(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v2

    invoke-static {v6, v2}, Lq0/m;->r(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    const/4 v8, 0x1

    iput-boolean v8, v1, Lq0/o;->A:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lq0/o;->n:Landroidx/media3/common/PlaybackException;

    :goto_1b
    iget-object v2, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/FlagSet;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v10

    invoke-virtual {v2, v8}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v11

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v12

    if-nez v10, :cond_3c

    if-nez v11, :cond_3c

    if-eqz v12, :cond_3b

    goto :goto_1c

    :cond_3b
    move v8, v5

    const/4 v10, 0x0

    goto/16 :goto_23

    :cond_3c
    :goto_1c
    if-nez v10, :cond_3f

    iget-object v2, v1, Lq0/o;->r:Landroidx/media3/common/Format;

    sget v6, Lk0/C;->a:I

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move v8, v5

    move-object v5, v6

    goto :goto_1e

    :cond_3d
    iget-object v2, v1, Lq0/o;->r:Landroidx/media3/common/Format;

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_1d

    :cond_3e
    move v2, v7

    :goto_1d
    iput-object v6, v1, Lq0/o;->r:Landroidx/media3/common/Format;

    move-object/from16 v16, v6

    move v6, v2

    const/4 v2, 0x1

    move v8, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lq0/o;->k(IJLandroidx/media3/common/Format;I)V

    goto :goto_1e

    :cond_3f
    move v8, v5

    const/4 v5, 0x0

    :goto_1e
    if-nez v11, :cond_42

    iget-object v2, v1, Lq0/o;->s:Landroidx/media3/common/Format;

    sget v6, Lk0/C;->a:I

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_20

    :cond_40
    iget-object v2, v1, Lq0/o;->s:Landroidx/media3/common/Format;

    if-nez v2, :cond_41

    const/4 v6, 0x1

    goto :goto_1f

    :cond_41
    move v6, v7

    :goto_1f
    iput-object v5, v1, Lq0/o;->s:Landroidx/media3/common/Format;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lq0/o;->k(IJLandroidx/media3/common/Format;I)V

    :cond_42
    :goto_20
    if-nez v12, :cond_45

    iget-object v2, v1, Lq0/o;->t:Landroidx/media3/common/Format;

    sget v6, Lk0/C;->a:I

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_22

    :cond_43
    iget-object v2, v1, Lq0/o;->t:Landroidx/media3/common/Format;

    if-nez v2, :cond_44

    const/4 v6, 0x1

    goto :goto_21

    :cond_44
    move v6, v7

    :goto_21
    iput-object v5, v1, Lq0/o;->t:Landroidx/media3/common/Format;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v6}, Lq0/o;->k(IJLandroidx/media3/common/Format;I)V

    :cond_45
    :goto_22
    move-object v10, v5

    :goto_23
    iget-object v2, v1, Lq0/o;->o:LA/d;

    invoke-virtual {v1, v2}, Lq0/o;->g(LA/d;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v1, Lq0/o;->o:LA/d;

    iget-object v5, v2, LA/d;->r:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/Format;

    iget v6, v5, Landroidx/media3/common/Format;->height:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_48

    iget v2, v2, LA/d;->q:I

    iget-object v6, v1, Lq0/o;->r:Landroidx/media3/common/Format;

    sget v11, Lk0/C;->a:I

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_25

    :cond_46
    iget-object v6, v1, Lq0/o;->r:Landroidx/media3/common/Format;

    if-nez v6, :cond_47

    if-nez v2, :cond_47

    const/4 v6, 0x1

    goto :goto_24

    :cond_47
    move v6, v2

    :goto_24
    iput-object v5, v1, Lq0/o;->r:Landroidx/media3/common/Format;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Lq0/o;->k(IJLandroidx/media3/common/Format;I)V

    :goto_25
    iput-object v10, v1, Lq0/o;->o:LA/d;

    :cond_48
    iget-object v2, v1, Lq0/o;->p:LA/d;

    invoke-virtual {v1, v2}, Lq0/o;->g(LA/d;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, v1, Lq0/o;->p:LA/d;

    iget-object v5, v2, LA/d;->r:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/Format;

    iget v2, v2, LA/d;->q:I

    iget-object v6, v1, Lq0/o;->s:Landroidx/media3/common/Format;

    sget v11, Lk0/C;->a:I

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    goto :goto_27

    :cond_49
    iget-object v6, v1, Lq0/o;->s:Landroidx/media3/common/Format;

    if-nez v6, :cond_4a

    if-nez v2, :cond_4a

    const/4 v6, 0x1

    goto :goto_26

    :cond_4a
    move v6, v2

    :goto_26
    iput-object v5, v1, Lq0/o;->s:Landroidx/media3/common/Format;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lq0/o;->k(IJLandroidx/media3/common/Format;I)V

    :goto_27
    iput-object v10, v1, Lq0/o;->p:LA/d;

    :cond_4b
    iget-object v2, v1, Lq0/o;->q:LA/d;

    invoke-virtual {v1, v2}, Lq0/o;->g(LA/d;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, v1, Lq0/o;->q:LA/d;

    iget-object v5, v2, LA/d;->r:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/Format;

    iget v2, v2, LA/d;->q:I

    iget-object v6, v1, Lq0/o;->t:Landroidx/media3/common/Format;

    sget v11, Lk0/C;->a:I

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_29

    :cond_4c
    iget-object v6, v1, Lq0/o;->t:Landroidx/media3/common/Format;

    if-nez v6, :cond_4d

    if-nez v2, :cond_4d

    const/4 v6, 0x1

    goto :goto_28

    :cond_4d
    move v6, v2

    :goto_28
    iput-object v5, v1, Lq0/o;->t:Landroidx/media3/common/Format;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v6}, Lq0/o;->k(IJLandroidx/media3/common/Format;I)V

    :goto_29
    iput-object v10, v1, Lq0/o;->q:LA/d;

    :cond_4e
    iget-object v2, v1, Lq0/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lk0/t;->b(Landroid/content/Context;)Lk0/t;

    move-result-object v2

    invoke-virtual {v2}, Lk0/t;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_8
    const/4 v14, 0x1

    goto :goto_2a

    :pswitch_9
    move/from16 v14, v18

    goto :goto_2a

    :pswitch_a
    move/from16 v14, v17

    goto :goto_2a

    :pswitch_b
    const/4 v14, 0x3

    goto :goto_2a

    :pswitch_c
    move/from16 v14, v19

    goto :goto_2a

    :pswitch_d
    move v14, v13

    goto :goto_2a

    :pswitch_e
    move v14, v8

    goto :goto_2a

    :pswitch_f
    const/4 v14, 0x2

    goto :goto_2a

    :pswitch_10
    move/from16 v14, v22

    goto :goto_2a

    :pswitch_11
    move v14, v7

    :goto_2a
    iget v2, v1, Lq0/o;->m:I

    if-eq v14, v2, :cond_4f

    iput v14, v1, Lq0/o;->m:I

    iget-object v2, v1, Lq0/o;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lq0/m;->a()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    invoke-static {v5, v14}, Lq0/m;->b(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    iget-wide v10, v1, Lq0/o;->d:J

    sub-long v10, v3, v10

    invoke-static {v5, v10, v11}, Lq0/m;->c(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    invoke-static {v5}, Lq0/m;->d(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object v5

    invoke-static {v2, v5}, Lq0/m;->q(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    :cond_4f
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_50

    iput-boolean v7, v1, Lq0/o;->u:Z

    :cond_50
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v2

    if-nez v2, :cond_51

    iput-boolean v7, v1, Lq0/o;->w:Z

    const/16 v5, 0xa

    goto :goto_2b

    :cond_51
    iget-object v2, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/FlagSet;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v10, 0x1

    iput-boolean v10, v1, Lq0/o;->w:Z

    :cond_52
    :goto_2b
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v2

    iget-boolean v6, v1, Lq0/o;->u:Z

    if-eqz v6, :cond_54

    move v9, v13

    :cond_53
    :goto_2c
    const/4 v8, 0x1

    goto/16 :goto_2e

    :cond_54
    iget-boolean v6, v1, Lq0/o;->w:Z

    if-eqz v6, :cond_55

    goto :goto_2c

    :cond_55
    if-ne v2, v8, :cond_56

    const/4 v8, 0x1

    const/16 v9, 0xb

    goto :goto_2e

    :cond_56
    const/16 v6, 0xc

    const/4 v7, 0x2

    if-ne v2, v7, :cond_5b

    iget v2, v1, Lq0/o;->l:I

    if-eqz v2, :cond_5a

    if-eq v2, v7, :cond_5a

    if-ne v2, v6, :cond_57

    goto :goto_2d

    :cond_57
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_58

    move/from16 v9, v18

    goto :goto_2c

    :cond_58
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v2

    if-eqz v2, :cond_59

    move v9, v5

    goto :goto_2c

    :cond_59
    move/from16 v9, v19

    goto :goto_2c

    :cond_5a
    :goto_2d
    move v9, v7

    goto :goto_2c

    :cond_5b
    const/4 v9, 0x3

    if-ne v2, v9, :cond_5d

    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_5c

    move v9, v8

    goto :goto_2c

    :cond_5c
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v2

    if-eqz v2, :cond_53

    move/from16 v9, v22

    goto :goto_2c

    :cond_5d
    const/4 v8, 0x1

    if-ne v2, v8, :cond_5e

    iget v2, v1, Lq0/o;->l:I

    if-eqz v2, :cond_5e

    move v9, v6

    goto :goto_2e

    :cond_5e
    iget v2, v1, Lq0/o;->l:I

    move v9, v2

    :goto_2e
    iget v2, v1, Lq0/o;->l:I

    if-eq v2, v9, :cond_5f

    iput v9, v1, Lq0/o;->l:I

    iput-boolean v8, v1, Lq0/o;->A:Z

    iget-object v2, v1, Lq0/o;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lq0/n;->i()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v5

    iget v6, v1, Lq0/o;->l:I

    invoke-static {v5, v6}, Lq0/m;->l(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v5

    iget-wide v6, v1, Lq0/o;->d:J

    sub-long/2addr v3, v6

    invoke-static {v5, v3, v4}, Lq0/m;->m(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v3

    invoke-static {v3}, Lq0/n;->j(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lq0/n;->s(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_5f
    iget-object v2, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/FlagSet;

    const/16 v3, 0x404

    invoke-virtual {v2, v3}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, v1, Lq0/o;->b:Lq0/l;

    iget-object v0, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v2

    :try_start_4
    iget-object v3, v2, Lq0/l;->f:Ljava/lang/String;

    if-eqz v3, :cond_60

    iget-object v4, v2, Lq0/l;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq0/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lq0/l;->a(Lq0/k;)V

    goto :goto_2f

    :catchall_2
    move-exception v0

    goto :goto_31

    :cond_60
    :goto_2f
    iget-object v3, v2, Lq0/l;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_61
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/k;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-boolean v5, v4, Lq0/k;->e:Z

    if-eqz v5, :cond_61

    iget-object v5, v2, Lq0/l;->d:Lq0/o;

    if-eqz v5, :cond_61

    iget-object v4, v4, Lq0/k;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Lq0/o;->j(Lq0/b;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_30

    :cond_62
    monitor-exit v2

    return-void

    :goto_31
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_63
    :goto_32
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final c(Lq0/b;Landroidx/media3/exoplayer/source/A;)V
    .locals 5

    iget-object v0, p1, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LA/d;

    iget-object v2, p2, Landroidx/media3/exoplayer/source/A;->c:Landroidx/media3/common/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, Landroidx/media3/exoplayer/source/A;->d:I

    iget-object p1, p1, Lq0/b;->b:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lq0/o;->b:Lq0/l;

    invoke-virtual {v4, p1, v0}, Lq0/l;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/E;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xd

    invoke-direct {v1, v2, v3, p1, v0}, LA/d;-><init>(Ljava/lang/Object;ILjava/io/Serializable;I)V

    iget p1, p2, Landroidx/media3/exoplayer/source/A;->b:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lq0/o;->q:LA/d;

    return-void

    :cond_2
    iput-object v1, p0, Lq0/o;->p:LA/d;

    return-void

    :cond_3
    iput-object v1, p0, Lq0/o;->o:LA/d;

    return-void
.end method

.method public final e(Lq0/b;IJJ)V
    .locals 6

    iget-object p5, p1, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    if-eqz p5, :cond_2

    iget-object p6, p0, Lq0/o;->b:Lq0/l;

    iget-object p1, p1, Lq0/b;->b:Landroidx/media3/common/Timeline;

    invoke-virtual {p6, p1, p5}, Lq0/l;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/E;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lq0/o;->h:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Lq0/o;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez p6, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    int-to-long p2, p2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final f(Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    iget p1, p1, Landroidx/media3/exoplayer/source/A;->a:I

    iput p1, p0, Lq0/o;->v:I

    return-void
.end method

.method public final g(LA/d;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p1, LA/d;->s:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lq0/o;->b:Lq0/l;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lq0/l;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lq0/o;->A:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lq0/o;->z:I

    invoke-static {v0, v2}, Lq0/m;->w(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lq0/o;->x:I

    invoke-static {v0, v2}, Lq0/m;->z(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lq0/o;->y:I

    invoke-static {v0, v2}, Lq0/m;->B(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lq0/o;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lq0/o;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Lq0/m;->p(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v0, p0, Lq0/o;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lq0/o;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Lq0/m;->x(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v2, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v2, v0}, Lq0/m;->D(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lq0/o;->c:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v2}, Lq0/m;->k(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Lq0/m;->s(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lq0/o;->i:Ljava/lang/String;

    iput v1, p0, Lq0/o;->z:I

    iput v1, p0, Lq0/o;->x:I

    iput v1, p0, Lq0/o;->y:I

    iput-object v0, p0, Lq0/o;->r:Landroidx/media3/common/Format;

    iput-object v0, p0, Lq0/o;->s:Landroidx/media3/common/Format;

    iput-object v0, p0, Lq0/o;->t:Landroidx/media3/common/Format;

    iput-boolean v1, p0, Lq0/o;->A:Z

    return-void
.end method

.method public final i(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/E;)V
    .locals 8

    iget-object v0, p0, Lq0/o;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lq0/o;->f:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v2, p0, Lq0/o;->e:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-object p1, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 p2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v5, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-nez p1, :cond_3

    invoke-static {v5}, Lk0/C;->J(Landroid/net/Uri;)I

    move-result p2

    goto :goto_2

    :cond_3
    sget v5, Lk0/C;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "application/x-rtsp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v5, "application/dash+xml"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v5, "application/vnd.ms-sstr+xml"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v5, "application/x-mpegURL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, p2

    :goto_1
    packed-switch v1, :pswitch_data_0

    move p2, v7

    goto :goto_2

    :pswitch_0
    move p2, v6

    goto :goto_2

    :pswitch_1
    move p2, v4

    goto :goto_2

    :pswitch_2
    move p2, v3

    :goto_2
    :pswitch_3
    if-eqz p2, :cond_a

    if-eq p2, v4, :cond_9

    if-eq p2, v3, :cond_8

    move p2, v4

    goto :goto_3

    :cond_8
    move p2, v7

    goto :goto_3

    :cond_9
    const/4 p2, 0x5

    goto :goto_3

    :cond_a
    move p2, v6

    :goto_3
    invoke-static {v0, p2}, Lq0/n;->q(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-wide p1, v2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v5

    if-eqz p1, :cond_b

    iget-boolean p1, v2, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez p1, :cond_b

    iget-boolean p1, v2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_b

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lq0/n;->r(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    move v3, v4

    :goto_4
    invoke-static {v0, v3}, Lq0/n;->A(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iput-boolean v4, p0, Lq0/o;->A:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lq0/b;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/E;->b()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lq0/o;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq0/o;->h()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lq0/o;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lq0/o;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(IJLandroidx/media3/common/Format;I)V
    .locals 2

    invoke-static {p1}, Lq0/m;->n(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Lq0/o;->d:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lq0/n;->k(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_d

    invoke-static {p1}, LJ/c;->A(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    const/4 p3, 0x2

    if-eq p5, p2, :cond_1

    const/4 v0, 0x3

    if-eq p5, p3, :cond_2

    if-eq p5, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, p3

    :cond_2
    :goto_0
    invoke-static {p1, v0}, LJ/c;->q(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    iget-object p5, p4, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz p5, :cond_3

    invoke-static {p1, p5}, LJ/c;->B(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_3
    iget-object p5, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p5, :cond_4

    invoke-static {p1, p5}, LJ/c;->C(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_4
    iget-object p5, p4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz p5, :cond_5

    invoke-static {p1, p5}, LJ/c;->D(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_5
    iget p5, p4, Landroidx/media3/common/Format;->bitrate:I

    const/4 v0, -0x1

    if-eq p5, v0, :cond_6

    invoke-static {p1, p5}, Lq0/m;->t(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_6
    iget p5, p4, Landroidx/media3/common/Format;->width:I

    if-eq p5, v0, :cond_7

    invoke-static {p1, p5}, Lq0/m;->y(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_7
    iget p5, p4, Landroidx/media3/common/Format;->height:I

    if-eq p5, v0, :cond_8

    invoke-static {p1, p5}, Lq0/m;->A(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_8
    iget p5, p4, Landroidx/media3/common/Format;->channelCount:I

    if-eq p5, v0, :cond_9

    invoke-static {p1, p5}, Lq0/m;->C(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_9
    iget p5, p4, Landroidx/media3/common/Format;->sampleRate:I

    if-eq p5, v0, :cond_a

    invoke-static {p1, p5}, Lq0/n;->t(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_a
    iget-object p5, p4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz p5, :cond_c

    sget v1, Lk0/C;->a:I

    const-string v1, "-"

    invoke-virtual {p5, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aget-object v0, p5, v0

    array-length v1, p5

    if-lt v1, p3, :cond_b

    aget-object p3, p5, p2

    goto :goto_1

    :cond_b
    const/4 p3, 0x0

    :goto_1
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Lq0/n;->u(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_c

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, LJ/c;->r(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_c
    iget p3, p4, Landroidx/media3/common/Format;->frameRate:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_e

    invoke-static {p1, p3}, LJ/c;->p(Landroid/media/metrics/TrackChangeEvent$Builder;F)V

    goto :goto_2

    :cond_d
    invoke-static {p1}, LJ/c;->o(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    :cond_e
    :goto_2
    iput-boolean p2, p0, Lq0/o;->A:Z

    iget-object p2, p0, Lq0/o;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {p1}, LJ/c;->i(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-static {p2, p1}, LJ/c;->n(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    iput-object p1, p0, Lq0/o;->n:Landroidx/media3/common/PlaybackException;

    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lq0/o;->u:Z

    :cond_0
    iput p1, p0, Lq0/o;->k:I

    return-void
.end method

.method public final onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    iget v0, p0, Lq0/o;->x:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lq0/o;->x:I

    iget v0, p0, Lq0/o;->y:I

    iget p1, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lq0/o;->y:I

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 4

    iget-object v0, p0, Lq0/o;->o:LA/d;

    if-eqz v0, :cond_0

    iget-object v1, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget v2, v1, Landroidx/media3/common/Format;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p1, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v1, p1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    new-instance v1, LA/d;

    iget v2, v0, LA/d;->q:I

    iget-object v0, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0xd

    invoke-direct {v1, p1, v2, v0, v3}, LA/d;-><init>(Ljava/lang/Object;ILjava/io/Serializable;I)V

    iput-object v1, p0, Lq0/o;->o:LA/d;

    :cond_0
    return-void
.end method
