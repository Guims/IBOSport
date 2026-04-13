.class public final LG0/o;
.super Ljava/lang/Object;

# interfaces
.implements LG0/p;


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:LG0/y;

.field public d:Landroidx/media3/common/VideoFrameProcessor;

.field public e:Landroidx/media3/common/Format;

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:Z

.field public l:J

.field public m:J

.field public n:Z

.field public o:Z

.field public p:J

.field public q:LG0/J;

.field public r:Ljava/util/concurrent/Executor;

.field public final synthetic s:LG0/t;


# direct methods
.method public constructor <init>(LG0/t;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/o;->s:LG0/t;

    invoke-static {p2}, Lk0/C;->M(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    iput p1, p0, LG0/o;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LG0/o;->b:Ljava/util/ArrayList;

    new-instance p1, LG0/y;

    invoke-direct {p1}, LG0/y;-><init>()V

    iput-object p1, p0, LG0/o;->c:LG0/y;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LG0/o;->l:J

    iput-wide p1, p0, LG0/o;->m:J

    sget-object p1, LG0/J;->e:Lu2/j;

    iput-object p1, p0, LG0/o;->q:LG0/J;

    sget-object p1, LG0/t;->r:LG0/i;

    iput-object p1, p0, LG0/o;->r:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    invoke-virtual {p0}, LG0/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG0/o;->d:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {v0}, Landroidx/media3/common/VideoFrameProcessor;->flush()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LG0/o;->n:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LG0/o;->l:J

    iput-wide v0, p0, LG0/o;->m:J

    iget-object v2, p0, LG0/o;->s:LG0/t;

    iget v3, v2, LG0/t;->p:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    iget v3, v2, LG0/t;->o:I

    add-int/2addr v3, v4

    iput v3, v2, LG0/t;->o:I

    iget-object v3, v2, LG0/t;->g:LG0/a;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_1

    iget-object p1, v3, LG0/a;->a:LG0/z;

    iget-object v9, p1, LG0/z;->b:LG0/C;

    iput-wide v6, v9, LG0/C;->m:J

    const-wide/16 v10, -0x1

    iput-wide v10, v9, LG0/C;->p:J

    iput-wide v10, v9, LG0/C;->n:J

    iput-wide v4, p1, LG0/z;->h:J

    iput-wide v4, p1, LG0/z;->f:J

    invoke-virtual {p1, v8}, LG0/z;->d(I)V

    iput-wide v4, p1, LG0/z;->i:J

    :cond_1
    iget-object p1, v3, LG0/a;->b:LG0/D;

    iget-object v3, p1, LG0/D;->d:LB4/p;

    iget-object v9, p1, LG0/D;->f:Lc1/c;

    const/4 v10, 0x0

    iput v10, v9, Lc1/c;->b:I

    const/4 v11, -0x1

    iput v11, v9, Lc1/c;->c:I

    iput v10, v9, Lc1/c;->d:I

    iput-wide v4, p1, LG0/D;->j:J

    iget-object v4, p1, LG0/D;->e:LB4/p;

    invoke-virtual {v4}, LB4/p;->h()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4}, LB4/p;->h()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v10

    :goto_0
    invoke-static {v5}, Lk0/c;->d(Z)V

    :goto_1
    invoke-virtual {v4}, LB4/p;->h()I

    move-result v5

    if-le v5, v8, :cond_3

    invoke-virtual {v4}, LB4/p;->e()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, LB4/p;->e()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v4, v5, v6, v7}, LB4/p;->a(Ljava/lang/Object;J)V

    :cond_4
    iget-object v4, p1, LG0/D;->g:Landroidx/media3/common/VideoSize;

    if-nez v4, :cond_7

    invoke-virtual {v3}, LB4/p;->h()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v3}, LB4/p;->h()I

    move-result v4

    if-lez v4, :cond_5

    move v10, v8

    :cond_5
    invoke-static {v10}, Lk0/c;->d(Z)V

    :goto_2
    invoke-virtual {v3}, LB4/p;->h()I

    move-result v4

    if-le v4, v8, :cond_6

    invoke-virtual {v3}, LB4/p;->e()Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, LB4/p;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroidx/media3/common/VideoSize;

    iput-object v3, p1, LG0/D;->g:Landroidx/media3/common/VideoSize;

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, LB4/p;->b()V

    :cond_8
    :goto_3
    iget-object p1, v2, LG0/t;->l:Lk0/y;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    new-instance v3, LB4/l;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2}, LB4/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_9
    iput-wide v0, p0, LG0/o;->p:J

    return-void
.end method

.method public final b(JZJJLA/d;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p8

    iget v2, v0, LA/d;->q:I

    iget-object v3, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v3, Ly0/l;

    iget-object v0, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v0, LG0/f;

    iget-object v4, v1, LG0/o;->s:LG0/t;

    iget-object v5, v4, LG0/t;->d:LG0/D;

    invoke-virtual {v1}, LG0/o;->d()Z

    move-result v6

    invoke-static {v6}, Lk0/c;->j(Z)V

    iget-wide v6, v1, LG0/o;->i:J

    sub-long v9, p1, v6

    :try_start_0
    iget-object v8, v4, LG0/t;->c:LG0/z;

    iget-wide v6, v1, LG0/o;->g:J

    iget-object v11, v1, LG0/o;->c:LG0/y;

    move/from16 v17, p3

    move-wide/from16 v13, p6

    move-wide v15, v6

    move-object/from16 v18, v11

    move-wide/from16 v11, p4

    invoke-virtual/range {v8 .. v18}, LG0/z;->a(JJJJZLG0/y;)I

    move-result v6
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v6, v1, LG0/o;->j:J

    cmp-long v6, v9, v6

    const/4 v7, 0x1

    if-gez v6, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {v0, v3, v2}, LG0/f;->f0(Ly0/l;I)V

    return v7

    :cond_1
    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    invoke-virtual {v1, v11, v12, v13, v14}, LG0/o;->g(JJ)V

    iget-boolean v6, v1, LG0/o;->o:Z

    if-eqz v6, :cond_4

    iget-wide v11, v1, LG0/o;->p:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v11, v13

    if-eqz v6, :cond_3

    iget v6, v4, LG0/t;->o:I

    if-nez v6, :cond_2

    move-wide/from16 p4, v13

    iget-wide v13, v5, LG0/D;->j:J

    cmp-long v6, v13, p4

    if-eqz v6, :cond_2

    cmp-long v6, v13, v11

    if-ltz v6, :cond_2

    goto :goto_0

    :cond_2
    return v8

    :cond_3
    move-wide/from16 p4, v13

    :goto_0
    invoke-virtual {v1}, LG0/o;->f()V

    iput-boolean v8, v1, LG0/o;->o:Z

    move-wide/from16 v11, p4

    iput-wide v11, v1, LG0/o;->p:J

    :cond_4
    iget-object v6, v1, LG0/o;->d:Landroidx/media3/common/VideoFrameProcessor;

    invoke-static {v6}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/media3/common/VideoFrameProcessor;->getPendingInputFrameCount()I

    move-result v6

    iget v11, v1, LG0/o;->a:I

    if-lt v6, v11, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, v1, LG0/o;->d:Landroidx/media3/common/VideoFrameProcessor;

    invoke-static {v6}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/media3/common/VideoFrameProcessor;->registerInputFrame()Z

    move-result v6

    if-nez v6, :cond_6

    :goto_1
    return v8

    :cond_6
    iget-boolean v6, v1, LG0/o;->k:Z

    if-eqz v6, :cond_7

    iget-wide v11, v1, LG0/o;->i:J

    iget-wide v13, v1, LG0/o;->h:J

    iput-wide v11, v4, LG0/t;->q:J

    iget-object v4, v5, LG0/D;->e:LB4/p;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v10}, LB4/p;->a(Ljava/lang/Object;J)V

    iput-boolean v8, v1, LG0/o;->k:Z

    :cond_7
    iput-wide v9, v1, LG0/o;->m:J

    if-eqz p3, :cond_8

    iput-wide v9, v1, LG0/o;->l:J

    :cond_8
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    invoke-virtual {v0, v3, v2, v4, v5}, LG0/f;->d0(Ly0/l;IJ)V

    return v7

    :catch_0
    move-exception v0

    new-instance v2, LG0/K;

    iget-object v3, v1, LG0/o;->e:Landroidx/media3/common/Format;

    invoke-static {v3}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-direct {v2, v0, v3}, LG0/K;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v2
.end method

.method public final c(Landroidx/media3/common/Format;)V
    .locals 12

    invoke-virtual {p0}, LG0/o;->d()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v6, p0, LG0/o;->s:LG0/t;

    iget v0, v6, LG0/t;->p:I

    const/4 v11, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    :cond_2
    iget v2, v0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    sget v2, Lk0/C;->a:I

    const/16 v3, 0x22

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo;->buildUpon()Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    :cond_3
    move-object v4, v0

    iget-object v0, v6, LG0/t;->h:Lk0/d;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    const/4 v3, 0x0

    check-cast v0, Lk0/w;

    invoke-virtual {v0, v2, v3}, Lk0/w;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lk0/y;

    move-result-object v0

    iput-object v0, v6, LG0/t;->l:Lk0/y;

    :try_start_0
    iget-object v2, v6, LG0/t;->e:LG0/s;

    iget-object v3, v6, LG0/t;->a:Landroid/content/Context;

    sget-object v5, Landroidx/media3/common/DebugViewProvider;->NONE:Landroidx/media3/common/DebugViewProvider;

    new-instance v7, LG0/j;

    invoke-direct {v7, v11, v0}, LG0/j;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lp3/H;->q:Lp3/F;

    sget-object v8, Lp3/Y;->t:Lp3/Y;

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v10}, LG0/s;->create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Ljava/util/List;J)Landroidx/media3/common/PreviewingVideoGraph;

    move-result-object v0

    iput-object v0, v6, LG0/t;->m:Landroidx/media3/common/PreviewingVideoGraph;

    iget-object v0, v6, LG0/t;->n:Landroid/util/Pair;

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/Surface;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lk0/v;

    iget v3, v0, Lk0/v;->a:I

    iget v0, v0, Lk0/v;->b:I

    invoke-virtual {v6, v2, v3, v0}, LG0/t;->b(Landroid/view/Surface;II)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, v6, LG0/t;->m:Landroidx/media3/common/PreviewingVideoGraph;

    invoke-interface {v0, v11}, Landroidx/media3/common/VideoGraph;->registerInput(I)V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, v6, LG0/t;->g:LG0/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, v6, LG0/t;->p:I

    iget-object p1, v6, LG0/t;->m:Landroidx/media3/common/PreviewingVideoGraph;

    invoke-interface {p1, v11}, Landroidx/media3/common/VideoGraph;->getProcessor(I)Landroidx/media3/common/VideoFrameProcessor;

    move-result-object p1

    iput-object p1, p0, LG0/o;->d:Landroidx/media3/common/VideoFrameProcessor;

    return-void

    :goto_2
    new-instance v1, LG0/K;

    invoke-direct {v1, v0, p1}, LG0/K;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, LG0/o;->d:Landroidx/media3/common/VideoFrameProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, LG0/o;->s:LG0/t;

    iget-object v0, v0, LG0/t;->g:LG0/a;

    iget-object v0, v0, LG0/a;->a:LG0/z;

    invoke-virtual {v0, p1}, LG0/z;->c(Z)V

    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, LG0/o;->e:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LG0/o;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, LG0/o;->e:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LG0/o;->d:Landroidx/media3/common/VideoFrameProcessor;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget v3, p0, LG0/o;->f:I

    new-instance v4, Landroidx/media3/common/FrameInfo$Builder;

    iget-object v5, v1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v5, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    :cond_2
    iget v6, v1, Landroidx/media3/common/Format;->width:I

    iget v7, v1, Landroidx/media3/common/Format;->height:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/media3/common/FrameInfo$Builder;-><init>(Landroidx/media3/common/ColorInfo;II)V

    iget v1, v1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v4, v1}, Landroidx/media3/common/FrameInfo$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/FrameInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/FrameInfo$Builder;->build()Landroidx/media3/common/FrameInfo;

    move-result-object v1

    invoke-interface {v2, v3, v0, v1}, Landroidx/media3/common/VideoFrameProcessor;->registerInputStream(ILjava/util/List;Landroidx/media3/common/FrameInfo;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LG0/o;->l:J

    return-void
.end method

.method public final g(JJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LG0/o;->s:LG0/t;

    invoke-static {v0, p1, p2, p3, p4}, LG0/t;->a(LG0/t;JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, LG0/K;

    iget-object p3, p0, LG0/o;->e:Landroidx/media3/common/Format;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroidx/media3/common/Format$Builder;

    invoke-direct {p3}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p3

    :goto_0
    invoke-direct {p2, p1, p3}, LG0/K;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw p2
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, LG0/o;->s:LG0/t;

    iget-object v0, v0, LG0/t;->g:LG0/a;

    iget-object v0, v0, LG0/a;->a:LG0/z;

    iget-object v0, v0, LG0/z;->b:LG0/C;

    iget v1, v0, LG0/C;->j:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, LG0/C;->j:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, LG0/C;->d(Z)V

    :goto_0
    return-void
.end method

.method public final i(Landroid/view/Surface;Lk0/v;)V
    .locals 2

    iget-object v0, p0, LG0/o;->s:LG0/t;

    iget-object v1, v0, LG0/t;->n:Landroid/util/Pair;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, LG0/t;->n:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lk0/v;

    invoke-virtual {v1, p2}, Lk0/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, v0, LG0/t;->n:Landroid/util/Pair;

    iget v1, p2, Lk0/v;->a:I

    iget p2, p2, Lk0/v;->b:I

    invoke-virtual {v0, p1, v1, p2}, LG0/t;->b(Landroid/view/Surface;II)V

    return-void
.end method

.method public final j(F)V
    .locals 1

    iget-object v0, p0, LG0/o;->s:LG0/t;

    iget-object v0, v0, LG0/t;->g:LG0/a;

    iget-object v0, v0, LG0/a;->a:LG0/z;

    invoke-virtual {v0, p1}, LG0/z;->i(F)V

    return-void
.end method

.method public final k(JJJJ)V
    .locals 3

    iget-boolean v0, p0, LG0/o;->k:Z

    iget-wide v1, p0, LG0/o;->h:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_1

    iget-wide v1, p0, LG0/o;->i:J

    cmp-long v1, v1, p5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, LG0/o;->k:Z

    iput-wide p1, p0, LG0/o;->g:J

    iput-wide p3, p0, LG0/o;->h:J

    iput-wide p5, p0, LG0/o;->i:J

    iput-wide p7, p0, LG0/o;->j:J

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, LG0/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LG0/o;->s:LG0/t;

    iget-object p1, p1, LG0/t;->f:Lp3/Y;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, LG0/o;->f()V

    return-void
.end method
