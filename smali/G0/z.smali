.class public final LG0/z;
.super Ljava/lang/Object;


# instance fields
.field public final a:LG0/f;

.field public final b:LG0/C;

.field public final c:J

.field public d:Z

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Z

.field public k:F

.field public l:Lk0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;LG0/f;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG0/z;->a:LG0/f;

    iput-wide p3, p0, LG0/z;->c:J

    new-instance p2, LG0/C;

    invoke-direct {p2, p1}, LG0/C;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LG0/z;->b:LG0/C;

    const/4 p1, 0x0

    iput p1, p0, LG0/z;->e:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LG0/z;->f:J

    iput-wide p1, p0, LG0/z;->h:J

    iput-wide p1, p0, LG0/z;->i:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LG0/z;->k:F

    sget-object p1, Lk0/d;->a:Lk0/w;

    iput-object p1, p0, LG0/z;->l:Lk0/d;

    return-void
.end method


# virtual methods
.method public final a(JJJJZLG0/y;)I
    .locals 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p10

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v5, LG0/y;->a:J

    iput-wide v6, v5, LG0/y;->b:J

    iget-wide v8, v0, LG0/z;->f:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_0

    iput-wide v3, v0, LG0/z;->f:J

    :cond_0
    iget-wide v8, v0, LG0/z;->h:J

    cmp-long v8, v8, v1

    const-wide/16 v11, -0x1

    const/4 v15, 0x0

    move-wide/from16 v16, v6

    const/4 v6, 0x1

    if-eqz v8, :cond_9

    iget-object v7, v0, LG0/z;->b:LG0/C;

    const-wide/16 v18, 0x3e8

    iget-wide v13, v7, LG0/C;->n:J

    cmp-long v8, v13, v11

    if-eqz v8, :cond_1

    iput-wide v13, v7, LG0/C;->p:J

    iget-wide v13, v7, LG0/C;->o:J

    iput-wide v13, v7, LG0/C;->q:J

    :cond_1
    iget-wide v13, v7, LG0/C;->m:J

    const-wide/16 v20, 0x1

    add-long v13, v13, v20

    iput-wide v13, v7, LG0/C;->m:J

    iget-object v8, v7, LG0/C;->a:LG0/c;

    mul-long v13, v1, v18

    move-wide/from16 v22, v11

    iget-object v11, v8, LG0/c;->a:LG0/b;

    invoke-virtual {v11, v13, v14}, LG0/b;->b(J)V

    iget-object v11, v8, LG0/c;->a:LG0/b;

    invoke-virtual {v11}, LG0/b;->a()Z

    move-result v11

    if-eqz v11, :cond_3

    iput-boolean v15, v8, LG0/c;->c:Z

    :cond_2
    const-wide/16 v24, 0x0

    goto :goto_2

    :cond_3
    iget-wide v11, v8, LG0/c;->d:J

    cmp-long v11, v11, v16

    if-eqz v11, :cond_2

    iget-boolean v11, v8, LG0/c;->c:Z

    if-eqz v11, :cond_5

    iget-object v11, v8, LG0/c;->b:LG0/b;

    const-wide/16 v24, 0x0

    iget-wide v9, v11, LG0/b;->d:J

    cmp-long v12, v9, v24

    if-nez v12, :cond_4

    move v9, v15

    goto :goto_0

    :cond_4
    iget-object v11, v11, LG0/b;->g:[Z

    sub-long v9, v9, v20

    const-wide/16 v20, 0xf

    rem-long v9, v9, v20

    long-to-int v9, v9

    aget-boolean v9, v11, v9

    :goto_0
    if-eqz v9, :cond_6

    goto :goto_1

    :cond_5
    const-wide/16 v24, 0x0

    :goto_1
    iget-object v9, v8, LG0/c;->b:LG0/b;

    invoke-virtual {v9}, LG0/b;->c()V

    iget-object v9, v8, LG0/c;->b:LG0/b;

    iget-wide v10, v8, LG0/c;->d:J

    invoke-virtual {v9, v10, v11}, LG0/b;->b(J)V

    :cond_6
    iput-boolean v6, v8, LG0/c;->c:Z

    iget-object v9, v8, LG0/c;->b:LG0/b;

    invoke-virtual {v9, v13, v14}, LG0/b;->b(J)V

    :goto_2
    iget-boolean v9, v8, LG0/c;->c:Z

    if-eqz v9, :cond_7

    iget-object v9, v8, LG0/c;->b:LG0/b;

    invoke-virtual {v9}, LG0/b;->a()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v8, LG0/c;->a:LG0/b;

    iget-object v10, v8, LG0/c;->b:LG0/b;

    iput-object v10, v8, LG0/c;->a:LG0/b;

    iput-object v9, v8, LG0/c;->b:LG0/b;

    iput-boolean v15, v8, LG0/c;->c:Z

    :cond_7
    iput-wide v13, v8, LG0/c;->d:J

    iget-object v9, v8, LG0/c;->a:LG0/b;

    invoke-virtual {v9}, LG0/b;->a()Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v15

    goto :goto_3

    :cond_8
    iget v9, v8, LG0/c;->e:I

    add-int/2addr v9, v6

    :goto_3
    iput v9, v8, LG0/c;->e:I

    invoke-virtual {v7}, LG0/C;->c()V

    iput-wide v1, v0, LG0/z;->h:J

    goto :goto_4

    :cond_9
    move-wide/from16 v22, v11

    const-wide/16 v18, 0x3e8

    const-wide/16 v24, 0x0

    :goto_4
    sub-long/2addr v1, v3

    long-to-double v1, v1

    iget v7, v0, LG0/z;->k:F

    float-to-double v7, v7

    div-double/2addr v1, v7

    double-to-long v1, v1

    iget-boolean v7, v0, LG0/z;->d:Z

    if-eqz v7, :cond_a

    iget-object v7, v0, LG0/z;->l:Lk0/d;

    check-cast v7, Lk0/w;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lk0/C;->Q(J)J

    move-result-wide v7

    sub-long v7, v7, p5

    sub-long/2addr v1, v7

    :cond_a
    iput-wide v1, v5, LG0/y;->a:J

    iget-wide v7, v0, LG0/z;->i:J

    cmp-long v7, v7, v16

    const-wide/16 v8, -0x7530

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v7, :cond_c

    iget-boolean v7, v0, LG0/z;->j:Z

    if-nez v7, :cond_c

    move v14, v6

    :cond_b
    move v1, v15

    goto :goto_6

    :cond_c
    iget v7, v0, LG0/z;->e:I

    if-eqz v7, :cond_10

    if-eq v7, v6, :cond_f

    if-eq v7, v11, :cond_e

    if-ne v7, v10, :cond_d

    iget-object v7, v0, LG0/z;->l:Lk0/d;

    check-cast v7, Lk0/w;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lk0/C;->Q(J)J

    move-result-wide v12

    move v14, v6

    iget-wide v6, v0, LG0/z;->g:J

    sub-long/2addr v12, v6

    iget-boolean v6, v0, LG0/z;->d:Z

    if-eqz v6, :cond_b

    cmp-long v1, v1, v8

    if-gez v1, :cond_b

    const-wide/32 v1, 0x186a0

    cmp-long v1, v12, v1

    if-lez v1, :cond_b

    :goto_5
    move v1, v14

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_e
    move v14, v6

    cmp-long v1, v3, p7

    if-ltz v1, :cond_b

    goto :goto_5

    :cond_f
    move v14, v6

    goto :goto_5

    :cond_10
    move v14, v6

    iget-boolean v1, v0, LG0/z;->d:Z

    :goto_6
    if-eqz v1, :cond_11

    return v15

    :cond_11
    iget-boolean v1, v0, LG0/z;->d:Z

    if-eqz v1, :cond_27

    iget-wide v1, v0, LG0/z;->f:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_12

    goto/16 :goto_11

    :cond_12
    iget-object v1, v0, LG0/z;->l:Lk0/d;

    check-cast v1, Lk0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v6, v0, LG0/z;->b:LG0/C;

    iget-wide v12, v5, LG0/y;->a:J

    mul-long v12, v12, v18

    add-long/2addr v12, v1

    move-wide/from16 p1, v8

    iget-wide v8, v6, LG0/C;->p:J

    cmp-long v7, v8, v22

    if-eqz v7, :cond_16

    iget-object v7, v6, LG0/C;->a:LG0/c;

    iget-object v7, v7, LG0/c;->a:LG0/b;

    invoke-virtual {v7}, LG0/b;->a()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v6, LG0/C;->a:LG0/c;

    iget-object v8, v7, LG0/c;->a:LG0/b;

    invoke-virtual {v8}, LG0/b;->a()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v7, v7, LG0/c;->a:LG0/b;

    iget-wide v8, v7, LG0/b;->e:J

    cmp-long v20, v8, v24

    move/from16 p5, v10

    move/from16 p6, v11

    if-nez v20, :cond_13

    move-wide/from16 v10, v24

    goto :goto_7

    :cond_13
    iget-wide v10, v7, LG0/b;->f:J

    div-long/2addr v10, v8

    goto :goto_7

    :cond_14
    move/from16 p5, v10

    move/from16 p6, v11

    move-wide/from16 v10, v16

    :goto_7
    iget-wide v7, v6, LG0/C;->q:J

    move/from16 v20, v14

    iget-wide v14, v6, LG0/C;->m:J

    move-wide/from16 p7, v10

    iget-wide v9, v6, LG0/C;->p:J

    sub-long/2addr v14, v9

    mul-long v14, v14, p7

    long-to-float v9, v14

    iget v10, v6, LG0/C;->i:F

    div-float/2addr v9, v10

    float-to-long v9, v9

    add-long/2addr v7, v9

    sub-long v9, v12, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v14, 0x1312d00

    cmp-long v9, v9, v14

    if-gtz v9, :cond_15

    move-wide v12, v7

    goto :goto_8

    :cond_15
    move-wide/from16 v7, v24

    iput-wide v7, v6, LG0/C;->m:J

    move-wide/from16 v7, v22

    iput-wide v7, v6, LG0/C;->p:J

    iput-wide v7, v6, LG0/C;->n:J

    goto :goto_8

    :cond_16
    move/from16 p5, v10

    move/from16 p6, v11

    move/from16 v20, v14

    :goto_8
    iget-wide v7, v6, LG0/C;->m:J

    iput-wide v7, v6, LG0/C;->n:J

    iput-wide v12, v6, LG0/C;->o:J

    iget-object v7, v6, LG0/C;->c:LG0/B;

    if-eqz v7, :cond_1b

    iget-wide v8, v6, LG0/C;->k:J

    cmp-long v8, v8, v16

    if-nez v8, :cond_17

    goto :goto_b

    :cond_17
    iget-wide v7, v7, LG0/B;->b:J

    cmp-long v9, v7, v16

    if-nez v9, :cond_18

    goto :goto_b

    :cond_18
    iget-wide v9, v6, LG0/C;->k:J

    sub-long v14, v12, v7

    div-long/2addr v14, v9

    mul-long/2addr v14, v9

    add-long/2addr v14, v7

    cmp-long v7, v12, v14

    if-gtz v7, :cond_19

    sub-long v7, v14, v9

    goto :goto_9

    :cond_19
    add-long/2addr v9, v14

    move-wide v7, v14

    move-wide v14, v9

    :goto_9
    sub-long v9, v14, v12

    sub-long/2addr v12, v7

    cmp-long v9, v9, v12

    if-gez v9, :cond_1a

    goto :goto_a

    :cond_1a
    move-wide v14, v7

    :goto_a
    iget-wide v6, v6, LG0/C;->l:J

    sub-long v12, v14, v6

    :cond_1b
    :goto_b
    iput-wide v12, v5, LG0/y;->b:J

    sub-long/2addr v12, v1

    div-long v12, v12, v18

    iput-wide v12, v5, LG0/y;->a:J

    iget-wide v1, v0, LG0/z;->i:J

    cmp-long v1, v1, v16

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, LG0/z;->j:Z

    if-nez v1, :cond_1c

    move/from16 v1, v20

    goto :goto_c

    :cond_1c
    const/4 v1, 0x0

    :goto_c
    iget-object v2, v0, LG0/z;->a:LG0/f;

    const-wide/32 v6, -0x7a120

    cmp-long v6, v12, v6

    if-gez v6, :cond_1d

    if-nez p9, :cond_1d

    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/BaseRenderer;->skipSource(J)I

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    const/4 v9, 0x0

    goto :goto_e

    :cond_1e
    if-eqz v1, :cond_1f

    iget-object v4, v2, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget v6, v4, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v6, v3

    iput v6, v4, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget v3, v4, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v6, v2, LG0/f;->Y0:I

    add-int/2addr v3, v6

    iput v3, v4, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_d

    :cond_1f
    iget-object v4, v2, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget v6, v4, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget v4, v2, LG0/f;->Y0:I

    invoke-virtual {v2, v3, v4}, LG0/f;->g0(II)V

    :goto_d
    invoke-virtual {v2}, Ly0/t;->i()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Ly0/t;->t()V

    :cond_20
    iget-object v2, v2, LG0/f;->M0:LG0/o;

    const/4 v9, 0x0

    if-eqz v2, :cond_21

    invoke-virtual {v2, v9}, LG0/o;->a(Z)V

    :cond_21
    move/from16 v11, v20

    goto :goto_f

    :goto_e
    move v11, v9

    :goto_f
    if-eqz v11, :cond_22

    const/4 v1, 0x4

    return v1

    :cond_22
    iget-wide v2, v5, LG0/y;->a:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_23

    if-nez p9, :cond_23

    move/from16 v15, v20

    goto :goto_10

    :cond_23
    move v15, v9

    :goto_10
    if-eqz v15, :cond_25

    if-eqz v1, :cond_24

    return p5

    :cond_24
    return p6

    :cond_25
    const-wide/32 v4, 0xc350

    cmp-long v1, v2, v4

    if-lez v1, :cond_26

    goto :goto_11

    :cond_26
    return v20

    :cond_27
    :goto_11
    const/4 v1, 0x5

    return v1
.end method

.method public final b(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    iget p1, p0, LG0/z;->e:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    iput-wide v1, p0, LG0/z;->i:J

    return v0

    :cond_0
    iget-wide v3, p0, LG0/z;->i:J

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    return v3

    :cond_1
    iget-object p1, p0, LG0/z;->l:Lk0/d;

    check-cast p1, Lk0/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, LG0/z;->i:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_2

    return v0

    :cond_2
    iput-wide v1, p0, LG0/z;->i:J

    return v3
.end method

.method public final c(Z)V
    .locals 4

    iput-boolean p1, p0, LG0/z;->j:Z

    const-wide/16 v0, 0x0

    iget-wide v2, p0, LG0/z;->c:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    iget-object p1, p0, LG0/z;->l:Lk0/d;

    check-cast p1, Lk0/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, LG0/z;->i:J

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget v0, p0, LG0/z;->e:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, LG0/z;->e:I

    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, LG0/z;->d:Z

    iget-object v1, p0, LG0/z;->l:Lk0/d;

    check-cast v1, Lk0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lk0/C;->Q(J)J

    move-result-wide v1

    iput-wide v1, p0, LG0/z;->g:J

    iget-object v1, p0, LG0/z;->b:LG0/C;

    iput-boolean v0, v1, LG0/C;->d:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v1, LG0/C;->m:J

    const-wide/16 v2, -0x1

    iput-wide v2, v1, LG0/C;->p:J

    iput-wide v2, v1, LG0/C;->n:J

    iget-object v0, v1, LG0/C;->b:LG0/A;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, LG0/A;->a:Landroid/hardware/display/DisplayManager;

    iget-object v4, v1, LG0/C;->c:LG0/B;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, LG0/B;->q:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v4, 0x0

    invoke-static {v4}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, v0, LG0/A;->b:LG0/C;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-static {v0, v3}, LG0/C;->a(LG0/C;Landroid/view/Display;)V

    :cond_0
    invoke-virtual {v1, v2}, LG0/C;->d(Z)V

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, LG0/z;->d:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LG0/z;->i:J

    iget-object v1, p0, LG0/z;->b:LG0/C;

    iput-boolean v0, v1, LG0/C;->d:Z

    iget-object v0, v1, LG0/C;->b:LG0/A;

    if-eqz v0, :cond_0

    iget-object v2, v0, LG0/A;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, v1, LG0/C;->c:LG0/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LG0/B;->q:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {v1}, LG0/C;->b()V

    return-void
.end method

.method public final g(F)V
    .locals 4

    iget-object v0, p0, LG0/z;->b:LG0/C;

    iput p1, v0, LG0/C;->f:F

    iget-object p1, v0, LG0/C;->a:LG0/c;

    iget-object v1, p1, LG0/c;->a:LG0/b;

    invoke-virtual {v1}, LG0/b;->c()V

    iget-object v1, p1, LG0/c;->b:LG0/b;

    invoke-virtual {v1}, LG0/b;->c()V

    const/4 v1, 0x0

    iput-boolean v1, p1, LG0/c;->c:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p1, LG0/c;->d:J

    iput v1, p1, LG0/c;->e:I

    invoke-virtual {v0}, LG0/C;->c()V

    return-void
.end method

.method public final h(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, LG0/z;->b:LG0/C;

    iget-object v1, v0, LG0/C;->e:Landroid/view/Surface;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LG0/C;->b()V

    iput-object p1, v0, LG0/C;->e:Landroid/view/Surface;

    invoke-virtual {v0, v2}, LG0/C;->d(Z)V

    :goto_0
    invoke-virtual {p0, v2}, LG0/z;->d(I)V

    return-void
.end method

.method public final i(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget v0, p0, LG0/z;->k:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, LG0/z;->k:F

    iget-object v0, p0, LG0/z;->b:LG0/C;

    iput p1, v0, LG0/C;->i:F

    const-wide/16 v2, 0x0

    iput-wide v2, v0, LG0/C;->m:J

    const-wide/16 v2, -0x1

    iput-wide v2, v0, LG0/C;->p:J

    iput-wide v2, v0, LG0/C;->n:J

    invoke-virtual {v0, v1}, LG0/C;->d(Z)V

    return-void
.end method
