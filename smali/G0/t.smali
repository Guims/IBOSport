.class public final LG0/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/VideoGraph$Listener;


# static fields
.field public static final r:LG0/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LG0/o;

.field public final c:LG0/z;

.field public final d:LG0/D;

.field public final e:LG0/s;

.field public final f:Lp3/Y;

.field public final g:LG0/a;

.field public final h:Lk0/d;

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public j:Landroidx/media3/common/Format;

.field public k:LG0/x;

.field public l:Lk0/y;

.field public m:Landroidx/media3/common/PreviewingVideoGraph;

.field public n:Landroid/util/Pair;

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG0/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LG0/i;-><init>(I)V

    sput-object v0, LG0/t;->r:LG0/i;

    return-void
.end method

.method public constructor <init>(LG0/k;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LG0/k;->a:Landroid/content/Context;

    iput-object v0, p0, LG0/t;->a:Landroid/content/Context;

    new-instance v1, LG0/o;

    invoke-direct {v1, p0, v0}, LG0/o;-><init>(LG0/t;Landroid/content/Context;)V

    iput-object v1, p0, LG0/t;->b:LG0/o;

    iget-object v0, p1, LG0/k;->f:Lk0/d;

    iput-object v0, p0, LG0/t;->h:Lk0/d;

    iget-object v2, p1, LG0/k;->b:LG0/z;

    iput-object v2, p0, LG0/t;->c:LG0/z;

    iput-object v0, v2, LG0/z;->l:Lk0/d;

    new-instance v0, LG0/D;

    new-instance v3, LG0/l;

    invoke-direct {v3, p0}, LG0/l;-><init>(LG0/t;)V

    invoke-direct {v0, v3, v2}, LG0/D;-><init>(LG0/l;LG0/z;)V

    iput-object v0, p0, LG0/t;->d:LG0/D;

    iget-object v3, p1, LG0/k;->d:LG0/s;

    invoke-static {v3}, Lk0/c;->k(Ljava/lang/Object;)V

    iput-object v3, p0, LG0/t;->e:LG0/s;

    iget-object p1, p1, LG0/k;->e:Lp3/Y;

    iput-object p1, p0, LG0/t;->f:Lp3/Y;

    new-instance p1, LG0/a;

    invoke-direct {p1, v2, v0}, LG0/a;-><init>(LG0/z;LG0/D;)V

    iput-object p1, p0, LG0/t;->g:LG0/a;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, LG0/t;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x0

    iput v0, p0, LG0/t;->p:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(LG0/t;JJ)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, LG0/t;->d:LG0/D;

    iget-object v1, v0, LG0/D;->a:LG0/l;

    iget-object v12, v0, LG0/D;->c:LG0/y;

    iget-object v1, v1, LG0/l;->a:LG0/t;

    iget-object v13, v0, LG0/D;->b:LG0/z;

    iget-object v14, v0, LG0/D;->f:Lc1/c;

    :goto_0
    iget v2, v14, Lc1/c;->d:I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_e

    iget-object v2, v14, Lc1/c;->f:Ljava/lang/Object;

    check-cast v2, [J

    iget v3, v14, Lc1/c;->b:I

    aget-wide v3, v2, v3

    iget-object v2, v0, LG0/D;->e:LB4/p;

    invoke-virtual {v2, v3, v4}, LB4/p;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v15, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v0, LG0/D;->i:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, LG0/D;->i:J

    invoke-virtual {v13, v15}, LG0/z;->d(I)V

    :cond_1
    iget-object v2, v0, LG0/D;->b:LG0/z;

    iget-wide v9, v0, LG0/D;->i:J

    const/4 v11, 0x0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v2 .. v12}, LG0/z;->a(JJJJZLG0/y;)I

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v15, :cond_3

    if-eq v2, v5, :cond_3

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    const/4 v0, 0x5

    if-ne v2, v0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-wide v3, v0, LG0/D;->j:J

    invoke-virtual {v14}, Lc1/c;->f()J

    iget-object v2, v1, LG0/t;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG0/p;

    check-cast v3, LG0/o;

    iget-object v4, v3, LG0/o;->q:LG0/J;

    iget-object v5, v3, LG0/o;->r:Ljava/util/concurrent/Executor;

    new-instance v6, LG0/m;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v4, v7}, LG0/m;-><init>(LG0/o;LG0/J;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object v2, v1, LG0/t;->m:Landroidx/media3/common/PreviewingVideoGraph;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    const-wide/16 v3, -0x2

    invoke-interface {v2, v3, v4}, Landroidx/media3/common/PreviewingVideoGraph;->renderOutputFrame(J)V

    goto/16 :goto_0

    :cond_5
    iput-wide v3, v0, LG0/D;->j:J

    if-nez v2, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v14}, Lc1/c;->f()J

    move-result-wide v7

    iget-object v4, v0, LG0/D;->d:LB4/p;

    invoke-virtual {v4, v7, v8}, LB4/p;->f(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/VideoSize;

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    sget-object v9, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v4, v9}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v0, LG0/D;->h:Landroidx/media3/common/VideoSize;

    invoke-virtual {v4, v9}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iput-object v4, v0, LG0/D;->h:Landroidx/media3/common/VideoSize;

    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget v10, v4, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iget v10, v4, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    const-string v10, "video/raw"

    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    iput-object v9, v1, LG0/t;->j:Landroidx/media3/common/Format;

    iget-object v9, v1, LG0/t;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LG0/p;

    check-cast v10, LG0/o;

    iget-object v11, v10, LG0/o;->q:LG0/J;

    iget-object v15, v10, LG0/o;->r:Ljava/util/concurrent/Executor;

    new-instance v3, LG0/m;

    invoke-direct {v3, v10, v11, v4}, LG0/m;-><init>(LG0/o;LG0/J;Landroidx/media3/common/VideoSize;)V

    invoke-interface {v15, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    const-wide/16 v2, -0x1

    goto :goto_6

    :cond_9
    iget-wide v2, v12, LG0/y;->b:J

    :goto_6
    iget v4, v13, LG0/z;->e:I

    if-eq v4, v5, :cond_a

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    iput v5, v13, LG0/z;->e:I

    iget-object v4, v13, LG0/z;->l:Lk0/d;

    check-cast v4, Lk0/w;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lk0/C;->Q(J)J

    move-result-wide v4

    iput-wide v4, v13, LG0/z;->g:J

    if-eqz v6, :cond_b

    iget-object v4, v1, LG0/t;->n:Landroid/util/Pair;

    if-eqz v4, :cond_b

    iget-object v4, v1, LG0/t;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG0/p;

    check-cast v5, LG0/o;

    iget-object v6, v5, LG0/o;->q:LG0/J;

    iget-object v9, v5, LG0/o;->r:Ljava/util/concurrent/Executor;

    new-instance v10, LG0/m;

    const/4 v11, 0x1

    invoke-direct {v10, v5, v6, v11}, LG0/m;-><init>(LG0/o;LG0/J;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_b
    iget-object v4, v1, LG0/t;->k:LG0/x;

    if-eqz v4, :cond_d

    iget-object v4, v1, LG0/t;->j:Landroidx/media3/common/Format;

    if-nez v4, :cond_c

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    :cond_c
    move-object/from16 v20, v4

    iget-object v15, v1, LG0/t;->k:LG0/x;

    iget-object v4, v1, LG0/t;->h:Lk0/d;

    check-cast v4, Lk0/w;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    const/16 v21, 0x0

    move-wide/from16 v16, v7

    invoke-interface/range {v15 .. v21}, LG0/x;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_d
    iget-object v4, v1, LG0/t;->m:Landroidx/media3/common/PreviewingVideoGraph;

    invoke-static {v4}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v3}, Landroidx/media3/common/PreviewingVideoGraph;->renderOutputFrame(J)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final b(Landroid/view/Surface;II)V
    .locals 3

    iget-object v0, p0, LG0/t;->m:Landroidx/media3/common/PreviewingVideoGraph;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LG0/t;->g:LG0/a;

    if-eqz p1, :cond_1

    new-instance v2, Landroidx/media3/common/SurfaceInfo;

    invoke-direct {v2, p1, p2, p3}, Landroidx/media3/common/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    invoke-interface {v0, v2}, Landroidx/media3/common/VideoGraph;->setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V

    new-instance v0, Lk0/v;

    invoke-direct {v0, p2, p3}, Lk0/v;-><init>(II)V

    iget-object p2, v1, LG0/a;->a:LG0/z;

    invoke-virtual {p2, p1}, LG0/z;->h(Landroid/view/Surface;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroidx/media3/common/VideoGraph;->setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V

    iget-object p1, v1, LG0/a;->a:LG0/z;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LG0/z;->h(Landroid/view/Surface;)V

    return-void
.end method

.method public final onEnded(J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 6

    iget-object v0, p0, LG0/t;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG0/p;

    check-cast v1, LG0/o;

    iget-object v2, v1, LG0/o;->q:LG0/J;

    iget-object v3, v1, LG0/o;->r:Ljava/util/concurrent/Executor;

    new-instance v4, LG0/n;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, p1, v5}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onOutputFrameAvailableForRendering(J)V
    .locals 7

    iget v0, p0, LG0/t;->o:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LG0/t;->q:J

    sub-long/2addr p1, v0

    iget-object v0, p0, LG0/t;->d:LG0/D;

    iget-object v1, v0, LG0/D;->g:Landroidx/media3/common/VideoSize;

    if-eqz v1, :cond_1

    iget-object v2, v0, LG0/D;->d:LB4/p;

    invoke-virtual {v2, v1, p1, p2}, LB4/p;->a(Ljava/lang/Object;J)V

    const/4 v1, 0x0

    iput-object v1, v0, LG0/D;->g:Landroidx/media3/common/VideoSize;

    :cond_1
    iget-object v0, v0, LG0/D;->f:Lc1/c;

    iget v1, v0, Lc1/c;->d:I

    iget-object v2, v0, Lc1/c;->f:Ljava/lang/Object;

    check-cast v2, [J

    array-length v3, v2

    if-ne v1, v3, :cond_3

    array-length v1, v2

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    new-array v3, v1, [J

    array-length v4, v2

    iget v5, v0, Lc1/c;->b:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lc1/c;->f:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, v0, Lc1/c;->b:I

    iget v2, v0, Lc1/c;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lc1/c;->c:I

    iput-object v3, v0, Lc1/c;->f:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lc1/c;->e:I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    iget v1, v0, Lc1/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Lc1/c;->e:I

    and-int/2addr v1, v2

    iput v1, v0, Lc1/c;->c:I

    iget-object v2, v0, Lc1/c;->f:Ljava/lang/Object;

    check-cast v2, [J

    aput-wide p1, v2, v1

    iget p1, v0, Lc1/c;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lc1/c;->d:I

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 4

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iget-object p2, p0, LG0/t;->g:LG0/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/media3/common/Format;->width:I

    iget-object v1, p2, LG0/a;->c:Landroidx/media3/common/Format;

    iget v2, v1, Landroidx/media3/common/Format;->width:I

    if-ne v0, v2, :cond_0

    iget v2, p1, Landroidx/media3/common/Format;->height:I

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v1, p2, LG0/a;->b:LG0/D;

    iget v2, p1, Landroidx/media3/common/Format;->height:I

    new-instance v3, Landroidx/media3/common/VideoSize;

    invoke-direct {v3, v0, v2}, Landroidx/media3/common/VideoSize;-><init>(II)V

    iput-object v3, v1, LG0/D;->g:Landroidx/media3/common/VideoSize;

    :cond_1
    iput-object p1, p2, LG0/a;->c:Landroidx/media3/common/Format;

    return-void
.end method
