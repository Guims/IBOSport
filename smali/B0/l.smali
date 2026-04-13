.class public final LB0/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;
.implements Landroidx/media3/exoplayer/source/h0;
.implements LE0/n;
.implements LE0/q;


# instance fields
.field public final A:Ljava/util/List;

.field public final B:Landroidx/media3/exoplayer/source/e0;

.field public final C:[Landroidx/media3/exoplayer/source/e0;

.field public final D:LA/j;

.field public E:LB0/f;

.field public F:Landroidx/media3/common/Format;

.field public G:LB0/k;

.field public H:J

.field public I:J

.field public J:I

.field public K:LB0/a;

.field public L:Z

.field public M:Z

.field public N:Z

.field public final b:I

.field public final q:[I

.field public final r:[Landroidx/media3/common/Format;

.field public final s:[Z

.field public final t:Ls0/n;

.field public final u:Ls0/c;

.field public final v:LA/d;

.field public final w:LE0/m;

.field public final x:LE0/s;

.field public final y:LB0/i;

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I[I[Landroidx/media3/common/Format;Ls0/n;Ls0/c;LE0/b;JLu0/q;Lu0/m;LE0/m;LA/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB0/l;->b:I

    iput-object p2, p0, LB0/l;->q:[I

    iput-object p3, p0, LB0/l;->r:[Landroidx/media3/common/Format;

    iput-object p4, p0, LB0/l;->t:Ls0/n;

    iput-object p5, p0, LB0/l;->u:Ls0/c;

    iput-object p12, p0, LB0/l;->v:LA/d;

    iput-object p11, p0, LB0/l;->w:LE0/m;

    iput-boolean p13, p0, LB0/l;->L:Z

    new-instance p3, LE0/s;

    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, LE0/s;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, LB0/l;->x:LE0/s;

    new-instance p3, LB0/i;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LB0/l;->y:LB0/i;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, LB0/l;->A:Ljava/util/List;

    array-length p2, p2

    new-array p3, p2, [Landroidx/media3/exoplayer/source/e0;

    iput-object p3, p0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    new-array p3, p2, [Z

    iput-object p3, p0, LB0/l;->s:[Z

    add-int/lit8 p3, p2, 0x1

    new-array p4, p3, [I

    new-array p3, p3, [Landroidx/media3/exoplayer/source/e0;

    invoke-static {p6, p9, p10}, Landroidx/media3/exoplayer/source/e0;->createWithDrm(LE0/b;Lu0/q;Lu0/m;)Landroidx/media3/exoplayer/source/e0;

    move-result-object p5

    iput-object p5, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    const/4 p9, 0x0

    aput p1, p4, p9

    aput-object p5, p3, p9

    :goto_0
    if-ge p9, p2, :cond_0

    invoke-static {p6}, Landroidx/media3/exoplayer/source/e0;->createWithoutDrm(LE0/b;)Landroidx/media3/exoplayer/source/e0;

    move-result-object p1

    iget-object p5, p0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    aput-object p1, p5, p9

    add-int/lit8 p5, p9, 0x1

    aput-object p1, p3, p5

    iget-object p1, p0, LB0/l;->q:[I

    aget p1, p1, p9

    aput p1, p4, p5

    move p9, p5

    goto :goto_0

    :cond_0
    new-instance p1, LA/j;

    const/4 p2, 0x2

    invoke-direct {p1, p4, p2, p3}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p1, p0, LB0/l;->D:LA/j;

    iput-wide p7, p0, LB0/l;->H:J

    iput-wide p7, p0, LB0/l;->I:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LB0/l;->x:LE0/s;

    invoke-virtual {v0}, LE0/s;->a()V

    iget-object v1, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/e0;->maybeThrowError()V

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LB0/l;->t:Ls0/n;

    iget-object v1, v0, Ls0/n;->m:Landroidx/media3/exoplayer/source/b;

    if-nez v1, :cond_0

    iget-object v0, v0, Ls0/n;->a:LE0/t;

    invoke-interface {v0}, LE0/t;->a()V

    return-void

    :cond_0
    throw v1

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->release()V

    iget-object v0, p0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/e0;->release()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB0/l;->t:Ls0/n;

    iget-object v0, v0, Ls0/n;->i:[Ls0/l;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Ls0/l;->a:LB0/h;

    if-eqz v3, :cond_1

    check-cast v3, LB0/e;

    iget-object v3, v3, LB0/e;->b:LI0/q;

    invoke-interface {v3}, LI0/q;->release()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LB0/l;->G:LB0/k;

    if-eqz v0, :cond_4

    check-cast v0, Ls0/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Ls0/c;->C:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/q;

    if-eqz v1, :cond_3

    iget-object v1, v1, Ls0/q;->a:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/e0;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 56

    move-object/from16 v0, p0

    iget-boolean v1, v0, LB0/l;->N:Z

    if-nez v1, :cond_0

    iget-object v1, v0, LB0/l;->x:LE0/s;

    invoke-virtual {v1}, LE0/s;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, LE0/s;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const/16 v19, 0x0

    goto/16 :goto_24

    :cond_1
    invoke-virtual {v0}, LB0/l;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-wide v5, v0, LB0/l;->H:J

    :goto_1
    move-object v14, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, LB0/l;->u()LB0/a;

    move-result-object v4

    iget-wide v5, v4, LB0/f;->w:J

    iget-object v4, v0, LB0/l;->A:Ljava/util/List;

    goto :goto_1

    :goto_2
    iget-object v4, v0, LB0/l;->t:Ls0/n;

    iget-object v7, v4, Ls0/n;->i:[Ls0/l;

    iget-object v8, v4, Ls0/n;->m:Landroidx/media3/exoplayer/source/b;

    iget-object v10, v0, LB0/l;->y:LB0/i;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_3

    move/from16 v20, v3

    move-object/from16 v16, v10

    move-wide/from16 v17, v11

    goto/16 :goto_5

    :cond_3
    move-object/from16 v8, p1

    move-object/from16 v16, v10

    iget-wide v9, v8, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    move-wide v8, v9

    move-wide/from16 v17, v11

    sub-long v10, v5, v8

    iget-object v12, v4, Ls0/n;->k:Lt0/c;

    move/from16 v20, v3

    iget-wide v2, v12, Lt0/c;->a:J

    invoke-static {v2, v3}, Lk0/C;->Q(J)J

    move-result-wide v2

    iget-object v12, v4, Ls0/n;->k:Lt0/c;

    iget v15, v4, Ls0/n;->l:I

    invoke-virtual {v12, v15}, Lt0/c;->b(I)Lt0/h;

    move-result-object v12

    move-object v15, v14

    iget-wide v13, v12, Lt0/h;->b:J

    invoke-static {v13, v14}, Lk0/C;->Q(J)J

    move-result-wide v12

    add-long/2addr v12, v2

    add-long/2addr v12, v5

    iget-object v2, v4, Ls0/n;->h:Ls0/q;

    if-eqz v2, :cond_b

    iget-object v2, v2, Ls0/q;->e:Ls0/r;

    iget-object v3, v2, Ls0/r;->u:Lt0/c;

    iget-object v14, v2, Ls0/r;->q:Ls0/e;

    move-object/from16 v22, v7

    iget-boolean v7, v3, Lt0/c;->d:Z

    if-nez v7, :cond_4

    move-wide/from16 v23, v8

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    iget-boolean v7, v2, Ls0/r;->w:Z

    if-eqz v7, :cond_5

    move-wide/from16 v23, v8

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move-wide/from16 v23, v8

    iget-wide v7, v3, Lt0/c;->h:J

    iget-object v3, v2, Ls0/r;->t:Ljava/util/TreeMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-gez v7, :cond_8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v3, v14, Ls0/e;->q:Ls0/h;

    iget-wide v12, v3, Ls0/h;->N:J

    cmp-long v9, v12, v17

    if-eqz v9, :cond_6

    cmp-long v9, v12, v7

    if-gez v9, :cond_7

    :cond_6
    iput-wide v7, v3, Ls0/h;->N:J

    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_a

    iget-boolean v7, v2, Ls0/r;->v:Z

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    const/4 v7, 0x1

    iput-boolean v7, v2, Ls0/r;->w:Z

    const/4 v7, 0x0

    iput-boolean v7, v2, Ls0/r;->v:Z

    iget-object v2, v14, Ls0/e;->q:Ls0/h;

    iget-object v7, v2, Ls0/h;->D:Landroid/os/Handler;

    iget-object v8, v2, Ls0/h;->w:Ls0/d;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ls0/h;->z()V

    :cond_a
    :goto_4
    if-eqz v3, :cond_c

    :goto_5
    move-object/from16 v22, v1

    move-object/from16 v3, v16

    move-wide/from16 v23, v17

    goto/16 :goto_20

    :cond_b
    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    :cond_c
    iget-wide v2, v4, Ls0/n;->f:J

    invoke-static {v2, v3}, Lk0/C;->y(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lk0/C;->Q(J)J

    move-result-wide v2

    iget-object v7, v4, Ls0/n;->k:Lt0/c;

    iget-wide v8, v7, Lt0/c;->a:J

    cmp-long v12, v8, v17

    if-nez v12, :cond_d

    move-wide/from16 v7, v17

    goto :goto_6

    :cond_d
    iget v12, v4, Ls0/n;->l:I

    invoke-virtual {v7, v12}, Lt0/c;->b(I)Lt0/h;

    move-result-object v7

    iget-wide v12, v7, Lt0/h;->b:J

    add-long/2addr v8, v12

    invoke-static {v8, v9}, Lk0/C;->Q(J)J

    move-result-wide v7

    sub-long v7, v2, v7

    :goto_6
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    move-object v14, v15

    const/16 v21, 0x1

    const/16 v25, 0x0

    goto :goto_7

    :cond_e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    const/16 v21, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object v14, v15

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LB0/o;

    move-object/from16 v25, v9

    :goto_7
    iget-object v9, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v9}, LD0/v;->length()I

    move-result v9

    new-array v15, v9, [LB0/p;

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v9, :cond_12

    aget-object v13, v22, v12

    move-wide/from16 v26, v7

    iget-object v7, v13, Ls0/l;->d:Ls0/i;

    sget-object v8, LB0/p;->a:Lh3/e;

    if-nez v7, :cond_f

    aput-object v8, v15, v12

    move/from16 p1, v9

    goto :goto_a

    :cond_f
    invoke-virtual {v13, v2, v3}, Ls0/l;->b(J)J

    move-result-wide v30

    invoke-virtual {v13, v2, v3}, Ls0/l;->c(J)J

    move-result-wide v32

    if-eqz v25, :cond_10

    invoke-virtual/range {v25 .. v25}, LB0/o;->a()J

    move-result-wide v28

    move-object/from16 v34, v8

    move/from16 p1, v9

    goto :goto_9

    :cond_10
    iget-object v7, v13, Ls0/l;->d:Ls0/i;

    invoke-static {v7}, Lk0/c;->k(Ljava/lang/Object;)V

    move-object/from16 v34, v8

    move/from16 p1, v9

    iget-wide v8, v13, Ls0/l;->e:J

    invoke-interface {v7, v5, v6, v8, v9}, Ls0/i;->x(JJ)J

    move-result-wide v7

    move-wide/from16 v28, v7

    iget-wide v7, v13, Ls0/l;->f:J

    add-long v28, v28, v7

    invoke-static/range {v28 .. v33}, Lk0/C;->j(JJJ)J

    move-result-wide v28

    :goto_9
    cmp-long v7, v28, v30

    if-gez v7, :cond_11

    aput-object v34, v15, v12

    goto :goto_a

    :cond_11
    move-wide/from16 v36, v32

    invoke-virtual {v4, v12}, Ls0/n;->b(I)Ls0/l;

    move-result-object v33

    new-instance v32, Ls0/m;

    move-wide/from16 v34, v28

    invoke-direct/range {v32 .. v37}, Ls0/m;-><init>(Ls0/l;JJ)V

    aput-object v32, v15, v12

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, p1

    move-wide/from16 v7, v26

    goto :goto_8

    :cond_12
    move-wide/from16 v26, v7

    iget-object v7, v4, Ls0/n;->k:Lt0/c;

    iget-boolean v7, v7, Lt0/c;->d:Z

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_13

    const/16 v19, 0x0

    aget-object v7, v22, v19

    invoke-virtual {v7}, Ls0/l;->d()J

    move-result-wide v12

    cmp-long v7, v12, v8

    if-nez v7, :cond_14

    :cond_13
    move-wide v12, v8

    goto :goto_c

    :cond_14
    aget-object v7, v22, v19

    invoke-virtual {v7, v2, v3}, Ls0/l;->c(J)J

    move-result-wide v12

    aget-object v7, v22, v19

    invoke-virtual {v7, v12, v13}, Ls0/l;->e(J)J

    move-result-wide v12

    iget-object v7, v4, Ls0/n;->k:Lt0/c;

    iget-wide v8, v7, Lt0/c;->a:J

    cmp-long v22, v8, v17

    if-nez v22, :cond_15

    move-wide/from16 v7, v17

    goto :goto_b

    :cond_15
    move-wide/from16 v30, v8

    iget v8, v4, Ls0/n;->l:I

    invoke-virtual {v7, v8}, Lt0/c;->b(I)Lt0/h;

    move-result-object v7

    iget-wide v7, v7, Lt0/h;->b:J

    add-long v8, v30, v7

    invoke-static {v8, v9}, Lk0/C;->Q(J)J

    move-result-wide v7

    sub-long v7, v2, v7

    :goto_b
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long v7, v7, v23

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_d

    :goto_c
    move-wide/from16 v7, v17

    :goto_d
    iget-object v9, v4, Ls0/n;->j:LD0/v;

    move-object/from16 v22, v1

    move-wide/from16 v28, v12

    move-wide v12, v7

    move-object v7, v9

    move-wide/from16 v8, v23

    move-wide/from16 v23, v17

    move-wide/from16 v54, v2

    move-object/from16 v3, v16

    move-wide/from16 v16, v54

    move-wide/from16 v1, v26

    invoke-interface/range {v7 .. v15}, LD0/v;->a(JJJLjava/util/List;[LB0/p;)V

    iget-object v7, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v7}, LD0/v;->e()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v4, v7}, Ls0/n;->b(I)Ls0/l;

    move-result-object v7

    iget-wide v11, v7, Ls0/l;->e:J

    iget-wide v8, v7, Ls0/l;->f:J

    iget-object v10, v7, Ls0/l;->d:Ls0/i;

    iget-object v13, v7, Ls0/l;->c:Lt0/b;

    iget-object v15, v7, Ls0/l;->a:LB0/h;

    move-wide/from16 v26, v8

    iget-object v8, v7, Ls0/l;->b:Lt0/m;

    if-eqz v15, :cond_1b

    move-object v9, v15

    check-cast v9, LB0/e;

    iget-object v9, v9, LB0/e;->x:[Landroidx/media3/common/Format;

    if-nez v9, :cond_16

    iget-object v9, v8, Lt0/m;->v:Lt0/j;

    goto :goto_e

    :cond_16
    const/4 v9, 0x0

    :goto_e
    if-nez v10, :cond_17

    invoke-virtual {v8}, Lt0/m;->d()Lt0/j;

    move-result-object v18

    move-object/from16 p1, v14

    move-object/from16 v14, v18

    goto :goto_f

    :cond_17
    move-object/from16 p1, v14

    const/4 v14, 0x0

    :goto_f
    if-nez v9, :cond_18

    if-eqz v14, :cond_1c

    :cond_18
    iget-object v1, v4, Ls0/n;->e:Landroidx/media3/datasource/DataSource;

    iget-object v2, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v2}, LD0/v;->m()Landroidx/media3/common/Format;

    move-result-object v33

    iget-object v2, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v2}, LD0/v;->n()I

    move-result v34

    iget-object v2, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v2}, LD0/v;->q()Ljava/lang/Object;

    move-result-object v35

    if-eqz v9, :cond_1a

    iget-object v2, v13, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {v9, v14, v2}, Lt0/j;->a(Lt0/j;Ljava/lang/String;)Lt0/j;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_10

    :cond_19
    move-object v9, v2

    goto :goto_10

    :cond_1a
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v14

    :goto_10
    iget-object v2, v13, Lt0/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v8, v2, v9, v4}, Ls0/j;->a(Lt0/m;Ljava/lang/String;Lt0/j;I)Landroidx/media3/datasource/DataSpec;

    move-result-object v32

    new-instance v30, LB0/n;

    iget-object v2, v7, Ls0/l;->a:LB0/h;

    move-object/from16 v31, v1

    move-object/from16 v36, v2

    invoke-direct/range {v30 .. v36}, LB0/n;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;LB0/h;)V

    move-object/from16 v1, v30

    iput-object v1, v3, LB0/i;->b:Ljava/lang/Object;

    goto/16 :goto_20

    :cond_1b
    move-object/from16 p1, v14

    :cond_1c
    iget-object v9, v4, Ls0/n;->k:Lt0/c;

    iget-boolean v14, v9, Lt0/c;->d:Z

    if-eqz v14, :cond_1d

    iget v14, v4, Ls0/n;->l:I

    iget-object v9, v9, Lt0/c;->m:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v14, v9, :cond_1d

    move/from16 v9, v21

    goto :goto_11

    :cond_1d
    const/4 v9, 0x0

    :goto_11
    if-eqz v9, :cond_1f

    cmp-long v14, v11, v23

    if-eqz v14, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v14, 0x0

    goto :goto_13

    :cond_1f
    :goto_12
    move/from16 v14, v21

    :goto_13
    invoke-virtual {v7}, Ls0/l;->d()J

    move-result-wide v30

    cmp-long v18, v30, v28

    if-nez v18, :cond_20

    iput-boolean v14, v3, LB0/i;->a:Z

    goto/16 :goto_20

    :cond_20
    move-wide/from16 v54, v16

    move/from16 v17, v14

    move-object/from16 v16, v15

    move-wide/from16 v14, v54

    invoke-virtual {v7, v14, v15}, Ls0/l;->b(J)J

    move-result-wide v30

    invoke-virtual {v7, v14, v15}, Ls0/l;->c(J)J

    move-result-wide v14

    if-eqz v9, :cond_22

    invoke-virtual {v7, v14, v15}, Ls0/l;->e(J)J

    move-result-wide v28

    invoke-virtual {v7, v14, v15}, Ls0/l;->f(J)J

    move-result-wide v32

    sub-long v32, v28, v32

    add-long v32, v32, v28

    cmp-long v9, v32, v11

    if-ltz v9, :cond_21

    move/from16 v9, v21

    goto :goto_14

    :cond_21
    const/4 v9, 0x0

    :goto_14
    and-int v9, v17, v9

    goto :goto_15

    :cond_22
    move/from16 v9, v17

    :goto_15
    if-eqz v25, :cond_23

    invoke-virtual/range {v25 .. v25}, LB0/o;->a()J

    move-result-wide v17

    move-wide/from16 v32, v14

    :goto_16
    move-wide/from16 v14, v17

    goto :goto_17

    :cond_23
    invoke-static {v10}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v10, v5, v6, v11, v12}, Ls0/i;->x(JJ)J

    move-result-wide v17

    add-long v28, v17, v26

    move-wide/from16 v32, v14

    invoke-static/range {v28 .. v33}, Lk0/C;->j(JJJ)J

    move-result-wide v17

    goto :goto_16

    :goto_17
    cmp-long v17, v14, v30

    if-gez v17, :cond_24

    new-instance v1, Landroidx/media3/exoplayer/source/b;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    iput-object v1, v4, Ls0/n;->m:Landroidx/media3/exoplayer/source/b;

    goto/16 :goto_20

    :cond_24
    cmp-long v17, v14, v32

    if-gtz v17, :cond_30

    move-wide/from16 v28, v5

    iget-boolean v5, v4, Ls0/n;->n:Z

    if-eqz v5, :cond_25

    if-ltz v17, :cond_25

    goto/16 :goto_1f

    :cond_25
    if-eqz v9, :cond_26

    invoke-virtual {v7, v14, v15}, Ls0/l;->f(J)J

    move-result-wide v5

    cmp-long v5, v5, v11

    if-ltz v5, :cond_26

    move/from16 v5, v21

    iput-boolean v5, v3, LB0/i;->a:Z

    goto/16 :goto_20

    :cond_26
    iget v5, v4, Ls0/n;->g:I

    int-to-long v5, v5

    sub-long v17, v32, v14

    const-wide/16 v30, 0x1

    move-wide/from16 v32, v11

    add-long v11, v17, v30

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    cmp-long v6, v32, v23

    if-eqz v6, :cond_27

    :goto_18
    const/4 v9, 0x1

    if-le v5, v9, :cond_27

    int-to-long v11, v5

    add-long/2addr v11, v14

    sub-long v11, v11, v30

    invoke-virtual {v7, v11, v12}, Ls0/l;->f(J)J

    move-result-wide v11

    cmp-long v9, v11, v32

    if-ltz v9, :cond_27

    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    :cond_27
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_28

    move-wide/from16 v44, v28

    goto :goto_19

    :cond_28
    move-wide/from16 v44, v23

    :goto_19
    iget-object v9, v4, Ls0/n;->e:Landroidx/media3/datasource/DataSource;

    iget v11, v4, Ls0/n;->d:I

    iget-object v12, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v12}, LD0/v;->m()Landroidx/media3/common/Format;

    move-result-object v37

    iget-object v12, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v12}, LD0/v;->n()I

    move-result v38

    iget-object v4, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v4}, LD0/v;->q()Ljava/lang/Object;

    move-result-object v39

    invoke-virtual {v7, v14, v15}, Ls0/l;->f(J)J

    move-result-wide v40

    invoke-static {v10}, Lk0/c;->k(Ljava/lang/Object;)V

    move/from16 v46, v11

    sub-long v11, v14, v26

    invoke-interface {v10, v11, v12}, Ls0/i;->m(J)Lt0/j;

    move-result-object v4

    const/16 v11, 0x8

    if-nez v16, :cond_2a

    invoke-virtual {v7, v14, v15}, Ls0/l;->e(J)J

    move-result-wide v42

    invoke-virtual {v7, v14, v15, v1, v2}, Ls0/l;->g(JJ)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v11, 0x0

    :cond_29
    iget-object v1, v13, Lt0/b;->a:Ljava/lang/String;

    invoke-static {v8, v1, v4, v11}, Ls0/j;->a(Lt0/m;Ljava/lang/String;Lt0/j;I)Landroidx/media3/datasource/DataSpec;

    move-result-object v36

    new-instance v34, LB0/q;

    move-object/from16 v47, v37

    move-object/from16 v35, v9

    move-wide/from16 v44, v14

    invoke-direct/range {v34 .. v47}, LB0/q;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJILandroidx/media3/common/Format;)V

    :goto_1a
    move-object/from16 v1, v34

    goto/16 :goto_1e

    :cond_2a
    move-object/from16 v35, v9

    move-wide/from16 v48, v14

    move-object/from16 v9, v37

    const/4 v12, 0x1

    const/4 v14, 0x1

    :goto_1b
    if-ge v12, v5, :cond_2c

    move v15, v5

    move/from16 p1, v6

    int-to-long v5, v12

    add-long v5, v48, v5

    invoke-static {v10}, Lk0/c;->k(Ljava/lang/Object;)V

    sub-long v5, v5, v26

    invoke-interface {v10, v5, v6}, Ls0/i;->m(J)Lt0/j;

    move-result-object v5

    iget-object v6, v13, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lt0/j;->a(Lt0/j;Ljava/lang/String;)Lt0/j;

    move-result-object v5

    if-nez v5, :cond_2b

    goto :goto_1c

    :cond_2b
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, p1

    move-object v4, v5

    move v5, v15

    goto :goto_1b

    :cond_2c
    move/from16 p1, v6

    :goto_1c
    int-to-long v5, v14

    add-long v5, v48, v5

    sub-long v5, v5, v30

    invoke-virtual {v7, v5, v6}, Ls0/l;->e(J)J

    move-result-wide v42

    if-eqz p1, :cond_2d

    cmp-long v10, v32, v42

    if-gtz v10, :cond_2d

    move-wide/from16 v46, v32

    goto :goto_1d

    :cond_2d
    move-wide/from16 v46, v23

    :goto_1d
    invoke-virtual {v7, v5, v6, v1, v2}, Ls0/l;->g(JJ)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v11, 0x0

    :cond_2e
    iget-object v1, v13, Lt0/b;->a:Ljava/lang/String;

    invoke-static {v8, v1, v4, v11}, Ls0/j;->a(Lt0/m;Ljava/lang/String;Lt0/j;I)Landroidx/media3/datasource/DataSpec;

    move-result-object v36

    iget-wide v1, v8, Lt0/m;->r:J

    neg-long v1, v1

    iget-object v4, v9, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    add-long v1, v1, v40

    :cond_2f
    move-wide/from16 v51, v1

    new-instance v34, LB0/m;

    iget-object v1, v7, Ls0/l;->a:LB0/h;

    move-object/from16 v53, v1

    move-object/from16 v37, v9

    move/from16 v50, v14

    invoke-direct/range {v34 .. v53}, LB0/m;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJIJLB0/h;)V

    goto :goto_1a

    :goto_1e
    iput-object v1, v3, LB0/i;->b:Ljava/lang/Object;

    goto :goto_20

    :cond_30
    :goto_1f
    iput-boolean v9, v3, LB0/i;->a:Z

    :goto_20
    iget-boolean v1, v3, LB0/i;->a:Z

    iget-object v2, v3, LB0/i;->b:Ljava/lang/Object;

    check-cast v2, LB0/f;

    const/4 v15, 0x0

    iput-object v15, v3, LB0/i;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-boolean v4, v3, LB0/i;->a:Z

    if-eqz v1, :cond_31

    move-wide/from16 v3, v23

    iput-wide v3, v0, LB0/l;->H:J

    const/4 v5, 0x1

    iput-boolean v5, v0, LB0/l;->N:Z

    return v5

    :cond_31
    if-nez v2, :cond_32

    goto/16 :goto_0

    :cond_32
    iput-object v2, v0, LB0/l;->E:LB0/f;

    instance-of v1, v2, LB0/a;

    iget-object v3, v0, LB0/l;->D:LA/j;

    if-eqz v1, :cond_37

    move-object v1, v2

    check-cast v1, LB0/a;

    if-eqz v20, :cond_35

    iget-wide v4, v1, LB0/f;->v:J

    iget-wide v6, v0, LB0/l;->H:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_34

    iget-object v4, v0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v4, v6, v7}, Landroidx/media3/exoplayer/source/e0;->setStartTimeUs(J)V

    iget-object v4, v0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_33

    aget-object v7, v4, v6

    iget-wide v8, v0, LB0/l;->H:J

    invoke-virtual {v7, v8, v9}, Landroidx/media3/exoplayer/source/e0;->setStartTimeUs(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_33
    iget-boolean v4, v0, LB0/l;->L:Z

    if-eqz v4, :cond_34

    iget-object v4, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v4, v4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/16 v21, 0x1

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v0, LB0/l;->M:Z

    :cond_34
    const/4 v4, 0x0

    iput-boolean v4, v0, LB0/l;->L:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, LB0/l;->H:J

    :cond_35
    iput-object v3, v1, LB0/a;->B:LA/j;

    iget-object v3, v3, LA/j;->r:Ljava/lang/Object;

    check-cast v3, [Landroidx/media3/exoplayer/source/e0;

    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_22
    array-length v6, v3

    if-ge v5, v6, :cond_36

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/e0;->getWriteIndex()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_36
    iput-object v4, v1, LB0/a;->C:[I

    iget-object v3, v0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    instance-of v1, v2, LB0/n;

    if-eqz v1, :cond_38

    move-object v1, v2

    check-cast v1, LB0/n;

    iput-object v3, v1, LB0/n;->z:LA/j;

    :cond_38
    :goto_23
    iget v1, v2, LB0/f;->r:I

    iget-object v3, v0, LB0/l;->w:LE0/m;

    check-cast v3, LE0/j;

    invoke-virtual {v3, v1}, LE0/j;->b(I)I

    move-result v1

    move-object/from16 v3, v22

    invoke-virtual {v3, v2, v0, v1}, LE0/s;->f(LE0/p;LE0/n;I)J

    new-instance v5, Landroidx/media3/exoplayer/source/v;

    iget-object v1, v2, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v5, v1}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    iget v6, v2, LB0/f;->r:I

    iget-object v8, v2, LB0/f;->s:Landroidx/media3/common/Format;

    iget v9, v2, LB0/f;->t:I

    iget-object v10, v2, LB0/f;->u:Ljava/lang/Object;

    iget-wide v11, v2, LB0/f;->v:J

    iget-wide v13, v2, LB0/f;->w:J

    iget-object v4, v0, LB0/l;->v:LA/d;

    iget v7, v0, LB0/l;->b:I

    invoke-virtual/range {v4 .. v14}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    const/16 v21, 0x1

    return v21

    :goto_24
    return v19
.end method

.method public final d()J
    .locals 2

    invoke-virtual {p0}, LB0/l;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LB0/l;->H:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, LB0/l;->N:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-virtual {p0}, LB0/l;->u()LB0/a;

    move-result-object v0

    iget-wide v0, v0, LB0/f;->w:J

    return-wide v0
.end method

.method public final g(LE0/p;JJLjava/io/IOException;I)LE0/l;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move-object/from16 v1, p1

    check-cast v1, LB0/f;

    iget-object v2, v1, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    iget-object v3, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iget-wide v4, v1, LB0/f;->v:J

    invoke-virtual {v2}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v6

    instance-of v8, v1, LB0/a;

    iget-object v9, v0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    if-eqz v6, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v0, v10}, LB0/l;->v(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v15, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v11

    goto :goto_0

    :goto_2
    new-instance v2, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {v15}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v15}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-wide/from16 p1, v13

    move-wide/from16 v13, p4

    invoke-direct {v2, v13, v14}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    invoke-static {v4, v5}, Lk0/C;->c0(J)J

    iget-wide v13, v1, LB0/f;->w:J

    invoke-static {v13, v14}, Lk0/C;->c0(J)J

    new-instance v13, LE1/t;

    const/4 v14, 0x3

    move/from16 v15, p7

    invoke-direct {v13, v15, v14, v12}, LE1/t;-><init>(IILjava/lang/Object;)V

    iget-object v14, v0, LB0/l;->t:Ls0/n;

    iget-object v15, v14, Ls0/n;->i:[Ls0/l;

    iget-object v7, v14, Ls0/n;->b:LK1/c;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v11, v0, LB0/l;->w:LE0/m;

    if-nez v6, :cond_4

    move-object/from16 v18, v2

    move/from16 p1, v6

    move/from16 p2, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    :cond_2
    :goto_3
    const/4 v2, 0x1

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_4
    move-object/from16 v18, v2

    iget-object v2, v14, Ls0/n;->h:Ls0/q;

    if-eqz v2, :cond_9

    move-wide/from16 v19, v4

    iget-wide v4, v2, Ls0/q;->d:J

    cmp-long v21, v4, v16

    if-eqz v21, :cond_5

    cmp-long v4, v4, v19

    if-gez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    iget-object v2, v2, Ls0/q;->e:Ls0/r;

    iget-object v5, v2, Ls0/r;->u:Lt0/c;

    iget-boolean v5, v5, Lt0/c;->d:Z

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    iget-boolean v5, v2, Ls0/r;->w:Z

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_9

    iget-boolean v3, v2, Ls0/r;->v:Z

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, v2, Ls0/r;->w:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Ls0/r;->v:Z

    iget-object v2, v2, Ls0/r;->q:Ls0/e;

    iget-object v2, v2, Ls0/e;->q:Ls0/h;

    iget-object v3, v2, Ls0/h;->D:Landroid/os/Handler;

    iget-object v4, v2, Ls0/h;->w:Ls0/d;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ls0/h;->z()V

    :goto_5
    move/from16 p1, v6

    move/from16 p2, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_9
    :goto_6
    iget-object v2, v14, Ls0/n;->k:Lt0/c;

    iget-boolean v2, v2, Lt0/c;->d:Z

    if-nez v2, :cond_a

    instance-of v2, v1, LB0/o;

    if-eqz v2, :cond_a

    instance-of v2, v12, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v2, :cond_a

    move-object v2, v12

    check-cast v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v2, v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x194

    if-ne v2, v4, :cond_a

    iget-object v2, v14, Ls0/n;->j:LD0/v;

    invoke-interface {v2, v3}, LD0/v;->c(Landroidx/media3/common/Format;)I

    move-result v2

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ls0/l;->d()J

    move-result-wide v4

    const-wide/16 v19, -0x1

    cmp-long v19, v4, v19

    if-eqz v19, :cond_a

    cmp-long v19, v4, p1

    if-eqz v19, :cond_a

    move-wide/from16 p1, v4

    iget-object v4, v2, Ls0/l;->d:Ls0/i;

    invoke-static {v4}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v4}, Ls0/i;->G()J

    move-result-wide v4

    move-wide/from16 p4, v4

    iget-wide v4, v2, Ls0/l;->f:J

    add-long v4, p4, v4

    add-long v4, v4, p1

    const-wide/16 v19, 0x1

    sub-long v4, v4, v19

    move-object v2, v1

    check-cast v2, LB0/o;

    invoke-virtual {v2}, LB0/o;->a()J

    move-result-wide v19

    cmp-long v2, v19, v4

    if-lez v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v14, Ls0/n;->n:Z

    goto :goto_5

    :cond_a
    iget-object v2, v14, Ls0/n;->j:LD0/v;

    invoke-interface {v2, v3}, LD0/v;->c(Landroidx/media3/common/Format;)I

    move-result v2

    aget-object v2, v15, v2

    iget-object v4, v2, Ls0/l;->b:Lt0/m;

    iget-object v5, v2, Ls0/l;->c:Lt0/b;

    iget-object v4, v4, Lt0/m;->q:Lp3/H;

    invoke-virtual {v7, v4}, LK1/c;->A(Ljava/util/List;)Lt0/b;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v5, v4}, Lt0/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    iget-object v4, v14, Ls0/n;->j:LD0/v;

    iget-object v2, v2, Ls0/l;->b:Lt0/m;

    iget-object v2, v2, Lt0/m;->q:Lp3/H;

    move v15, v8

    move-object/from16 v19, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move/from16 p1, v6

    invoke-interface {v4}, LD0/v;->length()I

    move-result v6

    move-object/from16 v20, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v11, v6, :cond_d

    invoke-interface {v4, v11, v8, v9}, LD0/v;->b(IJ)Z

    move-result v21

    if-eqz v21, :cond_c

    add-int/lit8 v12, v12, 0x1

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt0/b;

    iget v9, v9, Lt0/b;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-instance v8, LE0/k;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v2}, LK1/c;->f(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 p2, v15

    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v11, v15, :cond_f

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt0/b;

    iget v15, v15, Lt0/b;->c:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v2

    sub-int v2, v4, v2

    invoke-direct {v8, v4, v2, v6, v12}, LE0/k;-><init>(IIII)V

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, LE0/k;->a(I)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, LE0/k;->a(I)Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_3

    :cond_10
    move-object/from16 v11, v20

    check-cast v11, LE0/j;

    invoke-virtual {v11, v8, v13}, LE0/j;->a(LE0/k;LE1/t;)LE0/l;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-wide v11, v4, LE0/l;->b:J

    iget v4, v4, LE0/l;->a:I

    invoke-virtual {v8, v4}, LE0/k;->a(I)Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_3

    :cond_11
    if-ne v4, v2, :cond_12

    iget-object v2, v14, Ls0/n;->j:LD0/v;

    invoke-interface {v2, v3}, LD0/v;->c(Landroidx/media3/common/Format;)I

    move-result v3

    invoke-interface {v2, v3, v11, v12}, LD0/v;->o(IJ)Z

    move-result v3

    const/4 v2, 0x1

    goto :goto_b

    :cond_12
    const/4 v2, 0x1

    if-ne v4, v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v11

    iget-object v6, v5, Lt0/b;->b:Ljava/lang/String;

    iget-object v8, v7, LK1/c;->r:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    sget v11, Lk0/C;->a:I

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_a

    :cond_13
    move-wide v11, v3

    :goto_a
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v5, Lt0/b;->c:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v7, LK1/c;->q:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    sget v8, Lk0/C;->a:I

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    move v3, v2

    :goto_b
    const/4 v14, 0x0

    if-eqz v3, :cond_19

    if-eqz p1, :cond_18

    if-eqz p2, :cond_17

    invoke-virtual {v0, v10}, LB0/l;->t(I)LB0/a;

    move-result-object v3

    if-ne v3, v1, :cond_16

    move v11, v2

    goto :goto_c

    :cond_16
    const/4 v11, 0x0

    :goto_c
    invoke-static {v11}, Lk0/c;->j(Z)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-wide v2, v0, LB0/l;->I:J

    iput-wide v2, v0, LB0/l;->H:J

    :cond_17
    sget-object v2, LE0/s;->t:LE0/l;

    goto :goto_d

    :cond_18
    const-string v2, "ChunkSampleStream"

    const-string v3, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v2, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    move-object v2, v14

    :goto_d
    if-nez v2, :cond_1b

    move-object/from16 v11, v20

    check-cast v11, LE0/j;

    invoke-virtual {v11, v13}, LE0/j;->c(LE1/t;)J

    move-result-wide v2

    cmp-long v4, v2, v16

    if-eqz v4, :cond_1a

    new-instance v4, LE0/l;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v3}, LE0/l;-><init>(IZJ)V

    move-object v2, v4

    goto :goto_e

    :cond_1a
    sget-object v2, LE0/s;->u:LE0/l;

    :cond_1b
    :goto_e
    move-object v15, v2

    invoke-virtual {v15}, LE0/l;->a()Z

    move-result v16

    xor-int/lit8 v13, v16, 0x1

    iget v3, v1, LB0/f;->r:I

    iget-object v5, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iget v6, v1, LB0/f;->t:I

    iget-object v7, v1, LB0/f;->u:Ljava/lang/Object;

    iget-wide v8, v1, LB0/f;->v:J

    iget-wide v10, v1, LB0/f;->w:J

    iget-object v1, v0, LB0/l;->v:LA/d;

    iget v4, v0, LB0/l;->b:I

    move-object/from16 v12, p6

    move-object/from16 v2, v18

    invoke-virtual/range {v1 .. v13}, LA/d;->l(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_1c

    iput-object v14, v0, LB0/l;->E:LB0/f;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LB0/l;->u:Ls0/c;

    invoke-virtual {v1, v0}, Ls0/c;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    :cond_1c
    return-object v15
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, LB0/l;->x:LE0/s;

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v0

    return v0
.end method

.method public final isReady()Z
    .locals 2

    invoke-virtual {p0}, LB0/l;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    iget-boolean v1, p0, LB0/l;->N:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/e0;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(J)I
    .locals 3

    invoke-virtual {p0}, LB0/l;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, LB0/l;->N:Z

    iget-object v2, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/exoplayer/source/e0;->getSkipCount(JZ)I

    move-result p1

    iget-object p2, p0, LB0/l;->K:LB0/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, LB0/a;->c(I)I

    move-result p2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/e0;->skip(I)V

    invoke-virtual {p0}, LB0/l;->x()V

    return p1
.end method

.method public final l(LE0/p;JJZ)V
    .locals 12

    check-cast p1, LB0/f;

    const/4 v0, 0x0

    iput-object v0, p0, LB0/l;->E:LB0/f;

    iput-object v0, p0, LB0/l;->K:LB0/a;

    new-instance v2, Landroidx/media3/exoplayer/source/v;

    iget-wide v0, p1, LB0/f;->b:J

    iget-object v0, p1, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v0, p0, LB0/l;->w:LE0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, LB0/f;->r:I

    iget-object v5, p1, LB0/f;->s:Landroidx/media3/common/Format;

    iget v6, p1, LB0/f;->t:I

    iget-object v7, p1, LB0/f;->u:Ljava/lang/Object;

    iget-wide v8, p1, LB0/f;->v:J

    iget-wide v10, p1, LB0/f;->w:J

    iget-object v1, p0, LB0/l;->v:LA/d;

    iget v4, p0, LB0/l;->b:I

    invoke-virtual/range {v1 .. v11}, LA/d;->i(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, LB0/l;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->reset()V

    iget-object p1, p0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, LB0/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, LB0/l;->t(I)LB0/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, LB0/l;->I:J

    iput-wide v0, p0, LB0/l;->H:J

    :cond_1
    iget-object p1, p0, LB0/l;->u:Ls0/c;

    invoke-virtual {p1, p0}, Ls0/c;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    :cond_2
    return-void
.end method

.method public final m(LE0/p;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, LB0/f;

    const/4 v2, 0x0

    iput-object v2, v0, LB0/l;->E:LB0/f;

    iget-object v3, v0, LB0/l;->t:Ls0/n;

    iget-object v4, v3, Ls0/n;->i:[Ls0/l;

    instance-of v5, v1, LB0/n;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, LB0/n;

    iget-object v6, v3, Ls0/n;->j:LD0/v;

    iget-object v5, v5, LB0/f;->s:Landroidx/media3/common/Format;

    invoke-interface {v6, v5}, LD0/v;->c(Landroidx/media3/common/Format;)I

    move-result v5

    aget-object v6, v4, v5

    iget-object v7, v6, Ls0/l;->d:Ls0/i;

    if-nez v7, :cond_1

    iget-object v7, v6, Ls0/l;->a:LB0/h;

    invoke-static {v7}, Lk0/c;->k(Ljava/lang/Object;)V

    check-cast v7, LB0/e;

    iget-object v7, v7, LB0/e;->w:LI0/F;

    instance-of v8, v7, LI0/l;

    if-eqz v8, :cond_0

    move-object v2, v7

    check-cast v2, LI0/l;

    :cond_0
    if-eqz v2, :cond_1

    new-instance v15, LC5/a;

    iget-object v10, v6, Ls0/l;->b:Lt0/m;

    iget-wide v7, v10, Lt0/m;->r:J

    invoke-direct {v15, v2, v7, v8}, LC5/a;-><init>(LI0/l;J)V

    new-instance v7, Ls0/l;

    iget-wide v8, v6, Ls0/l;->e:J

    iget-object v11, v6, Ls0/l;->c:Lt0/b;

    iget-object v12, v6, Ls0/l;->a:LB0/h;

    iget-wide v13, v6, Ls0/l;->f:J

    invoke-direct/range {v7 .. v15}, Ls0/l;-><init>(JLt0/m;Lt0/b;LB0/h;JLs0/i;)V

    aput-object v7, v4, v5

    :cond_1
    iget-object v2, v3, Ls0/n;->h:Ls0/q;

    if-eqz v2, :cond_4

    iget-wide v3, v2, Ls0/q;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    iget-wide v5, v1, LB0/f;->w:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    :cond_2
    iget-wide v3, v1, LB0/f;->w:J

    iput-wide v3, v2, Ls0/q;->d:J

    :cond_3
    iget-object v2, v2, Ls0/q;->e:Ls0/r;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls0/r;->v:Z

    :cond_4
    new-instance v5, Landroidx/media3/exoplayer/source/v;

    iget-wide v2, v1, LB0/f;->b:J

    iget-object v2, v1, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v2}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v2}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v2, p4

    invoke-direct {v5, v2, v3}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v2, v0, LB0/l;->w:LE0/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v1, LB0/f;->r:I

    iget-object v8, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iget v9, v1, LB0/f;->t:I

    iget-object v10, v1, LB0/f;->u:Ljava/lang/Object;

    iget-wide v11, v1, LB0/f;->v:J

    iget-wide v13, v1, LB0/f;->w:J

    iget-object v4, v0, LB0/l;->v:LA/d;

    iget v7, v0, LB0/l;->b:I

    invoke-virtual/range {v4 .. v14}, LA/d;->j(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-object v1, v0, LB0/l;->u:Ls0/c;

    invoke-virtual {v1, v0}, Ls0/c;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public final p()J
    .locals 5

    iget-boolean v0, p0, LB0/l;->N:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, LB0/l;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, LB0/l;->H:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, LB0/l;->I:J

    invoke-virtual {p0}, LB0/l;->u()LB0/a;

    move-result-object v2

    invoke-virtual {v2}, LB0/o;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB0/a;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, LB0/f;->w:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I
    .locals 3

    invoke-virtual {p0}, LB0/l;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB0/l;->K:LB0/a;

    iget-object v1, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LB0/a;->c(I)I

    move-result v0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_1

    :goto_0
    const/4 p1, -0x3

    return p1

    :cond_1
    invoke-virtual {p0}, LB0/l;->x()V

    iget-boolean v0, p0, LB0/l;->N:Z

    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    move-result p1

    return p1
.end method

.method public final s(J)V
    .locals 12

    iget-object v0, p0, LB0/l;->x:LE0/s;

    invoke-virtual {v0}, LE0/s;->c()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, LB0/l;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, LB0/l;->A:Ljava/util/List;

    iget-object v4, p0, LB0/l;->t:Ls0/n;

    iget-object v5, p0, LB0/l;->z:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, LB0/l;->E:LB0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v1, LB0/a;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, LB0/l;->v(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v5, v4, Ls0/n;->m:Landroidx/media3/exoplayer/source/b;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v2, p1, p2, v1, v3}, LD0/v;->f(JLB0/f;Ljava/util/List;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_a

    invoke-virtual {v0}, LE0/s;->b()V

    if-eqz v6, :cond_a

    check-cast v1, LB0/a;

    iput-object v1, p0, LB0/l;->K:LB0/a;

    return-void

    :cond_3
    iget-object v1, v4, Ls0/n;->m:Landroidx/media3/exoplayer/source/b;

    if-nez v1, :cond_5

    iget-object v1, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v1}, LD0/v;->length()I

    move-result v1

    const/4 v6, 0x2

    if-ge v1, v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v4, Ls0/n;->j:LD0/v;

    invoke-interface {v1, p1, p2, v3}, LD0/v;->k(JLjava/util/List;)I

    move-result p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lk0/c;->j(Z)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3
    const/4 v0, -0x1

    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1}, LB0/l;->v(I)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    move p1, v0

    :goto_4
    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, LB0/l;->u()LB0/a;

    move-result-object p2

    iget-wide v0, p2, LB0/f;->w:J

    invoke-virtual {p0, p1}, LB0/l;->t(I)LB0/a;

    move-result-object p1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-wide v3, p0, LB0/l;->I:J

    iput-wide v3, p0, LB0/l;->H:J

    :cond_9
    iput-boolean v2, p0, LB0/l;->N:Z

    iget-wide p1, p1, LB0/f;->v:J

    new-instance v2, Landroidx/media3/exoplayer/source/A;

    invoke-static {p1, p2}, Lk0/C;->c0(J)J

    move-result-wide v8

    invoke-static {v0, v1}, Lk0/C;->c0(J)J

    move-result-wide v10

    const/4 v3, 0x1

    iget v4, p0, LB0/l;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/source/A;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-object p1, p0, LB0/l;->v:LA/d;

    iget-object p2, p1, LA/d;->r:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LF3/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v2, v1}, LF3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, LA/d;->f(Lk0/h;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final t(I)LB0/a;
    .locals 3

    iget-object v0, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB0/a;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2, v0}, Lk0/C;->V(IILjava/util/List;)V

    iget p1, p0, LB0/l;->J:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LB0/l;->J:I

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, LB0/a;->c(I)I

    move-result v0

    iget-object v2, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/e0;->discardUpstreamSamples(I)V

    :goto_0
    iget-object v0, p0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v2, v0

    if-ge p1, v2, :cond_0

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, LB0/a;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/e0;->discardUpstreamSamples(I)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final u()LB0/a;
    .locals 2

    iget-object v0, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB0/a;

    return-object v0
.end method

.method public final v(I)Z
    .locals 5

    iget-object v0, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB0/a;

    iget-object v0, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LB0/a;->c(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, LB0/a;->c(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method public final w()Z
    .locals 4

    iget-wide v0, p0, LB0/l;->H:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .locals 9

    iget-object v0, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v0

    iget v1, p0, LB0/l;->J:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, LB0/l;->y(II)I

    move-result v0

    :goto_0
    iget v1, p0, LB0/l;->J:I

    if-gt v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LB0/l;->J:I

    iget-object v2, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB0/a;

    iget-object v4, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iget-object v2, p0, LB0/l;->F:Landroidx/media3/common/Format;

    invoke-virtual {v4, v2}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v5, v1, LB0/f;->t:I

    iget-object v6, v1, LB0/f;->u:Ljava/lang/Object;

    iget-wide v7, v1, LB0/f;->v:J

    iget-object v2, p0, LB0/l;->v:LA/d;

    iget v3, p0, LB0/l;->b:I

    invoke-virtual/range {v2 .. v8}, LA/d;->g(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V

    :cond_0
    iput-object v4, p0, LB0/l;->F:Landroidx/media3/common/Format;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final y(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, LB0/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB0/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LB0/a;->c(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final z(Ls0/c;)V
    .locals 3

    iput-object p1, p0, LB0/l;->G:LB0/k;

    iget-object p1, p0, LB0/l;->B:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->preRelease()V

    iget-object p1, p0, LB0/l;->C:[Landroidx/media3/exoplayer/source/e0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->preRelease()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LB0/l;->x:LE0/s;

    invoke-virtual {p1, p0}, LE0/s;->e(LE0/q;)V

    return-void
.end method
