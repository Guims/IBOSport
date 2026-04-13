.class public final Lr0/v;
.super Ljava/lang/Object;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Z

.field public E:J

.field public F:J

.field public G:Z

.field public H:J

.field public I:Lk0/d;

.field public final a:Lcom/bumptech/glide/f;

.field public final b:[J

.field public c:Landroid/media/AudioTrack;

.field public d:I

.field public e:Lr0/u;

.field public f:I

.field public g:Z

.field public h:J

.field public i:F

.field public j:Z

.field public k:J

.field public l:J

.field public m:Ljava/lang/reflect/Method;

.field public n:J

.field public o:Z

.field public p:Z

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/v;->a:Lcom/bumptech/glide/f;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lr0/v;->m:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lr0/v;->b:[J

    sget-object p1, Lk0/d;->a:Lk0/w;

    iput-object p1, p0, Lr0/v;->I:Lk0/d;

    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lr0/v;->a:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v1, Lr0/G;

    iget-object v2, v0, Lr0/v;->c:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x3e8

    const/4 v14, 0x3

    if-ne v2, v14, :cond_1a

    iget-object v2, v0, Lr0/v;->I:Lk0/d;

    check-cast v2, Lk0/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    div-long v3, v15, v12

    iget-wide v5, v0, Lr0/v;->l:J

    sub-long v5, v3, v5

    const-wide/16 v17, 0x7530

    cmp-long v2, v5, v17

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Lr0/v;->b()J

    move-result-wide v5

    iget v2, v0, Lr0/v;->f:I

    invoke-static {v2, v5, v6}, Lk0/C;->W(IJ)J

    move-result-wide v5

    cmp-long v2, v5, v8

    if-nez v2, :cond_0

    goto/16 :goto_a

    :cond_0
    iget v2, v0, Lr0/v;->v:I

    move-wide/from16 v17, v12

    iget v12, v0, Lr0/v;->i:F

    invoke-static {v5, v6, v12}, Lk0/C;->C(JF)J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object v12, v0, Lr0/v;->b:[J

    aput-wide v5, v12, v2

    iget v2, v0, Lr0/v;->v:I

    add-int/2addr v2, v11

    const/16 v5, 0xa

    rem-int/2addr v2, v5

    iput v2, v0, Lr0/v;->v:I

    iget v2, v0, Lr0/v;->w:I

    if-ge v2, v5, :cond_1

    add-int/2addr v2, v11

    iput v2, v0, Lr0/v;->w:I

    :cond_1
    iput-wide v3, v0, Lr0/v;->l:J

    iput-wide v8, v0, Lr0/v;->k:J

    move v2, v10

    :goto_0
    iget v5, v0, Lr0/v;->w:I

    if-ge v2, v5, :cond_3

    iget-wide v8, v0, Lr0/v;->k:J

    aget-wide v19, v12, v2

    int-to-long v5, v5

    div-long v19, v19, v5

    add-long v5, v19, v8

    iput-wide v5, v0, Lr0/v;->k:J

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_2
    move-wide/from16 v17, v12

    :cond_3
    iget-boolean v2, v0, Lr0/v;->g:Z

    if-eqz v2, :cond_4

    goto/16 :goto_b

    :cond_4
    iget-object v2, v0, Lr0/v;->e:Lr0/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lr0/u;->a:Lr0/t;

    if-eqz v5, :cond_11

    iget-object v12, v5, Lr0/t;->b:Landroid/media/AudioTimestamp;

    const-wide/32 v19, 0x7a120

    iget-wide v8, v2, Lr0/u;->e:J

    sub-long v8, v3, v8

    iget-wide v14, v2, Lr0/u;->d:J

    cmp-long v8, v8, v14

    if-gez v8, :cond_5

    goto/16 :goto_3

    :cond_5
    iput-wide v3, v2, Lr0/u;->e:J

    iget-object v8, v5, Lr0/t;->a:Landroid/media/AudioTrack;

    invoke-virtual {v8, v12}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-wide v14, v12, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v6, v5, Lr0/t;->d:J

    cmp-long v21, v6, v14

    if-lez v21, :cond_7

    iget-boolean v9, v5, Lr0/t;->f:Z

    if-eqz v9, :cond_6

    move-object/from16 v22, v12

    iget-wide v11, v5, Lr0/t;->g:J

    add-long/2addr v11, v6

    iput-wide v11, v5, Lr0/t;->g:J

    iput-boolean v10, v5, Lr0/t;->f:Z

    goto :goto_1

    :cond_6
    move-object/from16 v22, v12

    iget-wide v6, v5, Lr0/t;->c:J

    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    iput-wide v6, v5, Lr0/t;->c:J

    goto :goto_1

    :cond_7
    move-object/from16 v22, v12

    :goto_1
    iput-wide v14, v5, Lr0/t;->d:J

    iget-wide v6, v5, Lr0/t;->g:J

    add-long/2addr v14, v6

    iget-wide v6, v5, Lr0/t;->c:J

    const/16 v9, 0x20

    shl-long/2addr v6, v9

    add-long/2addr v14, v6

    iput-wide v14, v5, Lr0/t;->e:J

    goto :goto_2

    :cond_8
    move-object/from16 v22, v12

    :goto_2
    iget v6, v2, Lr0/u;->b:I

    if-eqz v6, :cond_e

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    const/4 v9, 0x2

    if-eq v6, v9, :cond_b

    const/4 v13, 0x3

    if-eq v6, v13, :cond_a

    const/4 v7, 0x4

    if-ne v6, v7, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    if-eqz v8, :cond_12

    invoke-virtual {v2}, Lr0/u;->a()V

    goto :goto_4

    :cond_b
    if-nez v8, :cond_12

    invoke-virtual {v2}, Lr0/u;->a()V

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    iget-wide v6, v5, Lr0/t;->e:J

    iget-wide v11, v2, Lr0/u;->f:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_12

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lr0/u;->b(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {v2}, Lr0/u;->a()V

    goto :goto_4

    :cond_e
    if-eqz v8, :cond_10

    move-object/from16 v6, v22

    iget-wide v6, v6, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v6, v6, v17

    iget-wide v11, v2, Lr0/u;->c:J

    cmp-long v6, v6, v11

    if-ltz v6, :cond_f

    iget-wide v6, v5, Lr0/t;->e:J

    iput-wide v6, v2, Lr0/u;->f:J

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lr0/u;->b(I)V

    goto :goto_4

    :cond_f
    :goto_3
    move v8, v10

    goto :goto_4

    :cond_10
    iget-wide v6, v2, Lr0/u;->c:J

    sub-long v6, v3, v6

    cmp-long v6, v6, v19

    if-lez v6, :cond_12

    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lr0/u;->b(I)V

    goto :goto_4

    :cond_11
    const-wide/32 v19, 0x7a120

    goto :goto_3

    :cond_12
    :goto_4
    const-string v11, "DefaultAudioSink"

    if-nez v8, :cond_13

    const-wide/32 v22, 0x4c4b40

    goto/16 :goto_8

    :cond_13
    if-eqz v5, :cond_14

    iget-object v8, v5, Lr0/t;->b:Landroid/media/AudioTimestamp;

    iget-wide v12, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v12, v12, v17

    goto :goto_5

    :cond_14
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-eqz v5, :cond_15

    iget-wide v14, v5, Lr0/t;->e:J

    :goto_6
    const-wide/32 v22, 0x4c4b40

    goto :goto_7

    :cond_15
    const-wide/16 v14, -0x1

    goto :goto_6

    :goto_7
    invoke-virtual {v0}, Lr0/v;->b()J

    move-result-wide v6

    iget v5, v0, Lr0/v;->f:I

    invoke-static {v5, v6, v7}, Lk0/C;->W(IJ)J

    move-result-wide v5

    sub-long v7, v12, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v7, v7, v22

    const-string v8, ", "

    if-lez v7, :cond_16

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Spurious audio timestamp (system clock mismatch): "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lr0/G;->k()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lr0/G;->l()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lr0/u;->b(I)V

    goto :goto_8

    :cond_16
    iget v7, v0, Lr0/v;->f:I

    invoke-static {v7, v14, v15}, Lk0/C;->W(IJ)J

    move-result-wide v24

    sub-long v24, v24, v5

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    cmp-long v7, v24, v22

    if-lez v7, :cond_17

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Spurious audio timestamp (frame position mismatch): "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lr0/G;->k()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lr0/G;->l()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lr0/u;->b(I)V

    goto :goto_8

    :cond_17
    const/4 v7, 0x4

    iget v5, v2, Lr0/u;->b:I

    if-ne v5, v7, :cond_18

    invoke-virtual {v2}, Lr0/u;->a()V

    :cond_18
    :goto_8
    iget-boolean v2, v0, Lr0/v;->p:Z

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lr0/v;->m:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1b

    iget-wide v5, v0, Lr0/v;->q:J

    sub-long v5, v3, v5

    cmp-long v5, v5, v19

    if-ltz v5, :cond_1b

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v0, Lr0/v;->c:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget v6, Lk0/C;->a:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    mul-long v6, v6, v17

    iget-wide v8, v0, Lr0/v;->h:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lr0/v;->n:J

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lr0/v;->n:J

    cmp-long v2, v6, v22

    if-lez v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring impossibly large audio latency: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lr0/v;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    iput-object v5, v0, Lr0/v;->m:Ljava/lang/reflect/Method;

    :cond_19
    :goto_9
    iput-wide v3, v0, Lr0/v;->q:J

    goto :goto_b

    :cond_1a
    :goto_a
    move-wide/from16 v17, v12

    :cond_1b
    :goto_b
    iget-object v2, v0, Lr0/v;->I:Lk0/d;

    check-cast v2, Lk0/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long v2, v2, v17

    iget-object v4, v0, Lr0/v;->e:Lr0/u;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lr0/u;->a:Lr0/t;

    iget v4, v4, Lr0/u;->b:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_1c

    const/4 v10, 0x1

    :cond_1c
    if-eqz v10, :cond_1f

    if-eqz v5, :cond_1d

    iget-wide v6, v5, Lr0/t;->e:J

    goto :goto_c

    :cond_1d
    const-wide/16 v6, -0x1

    :goto_c
    iget v4, v0, Lr0/v;->f:I

    invoke-static {v4, v6, v7}, Lk0/C;->W(IJ)J

    move-result-wide v6

    if-eqz v5, :cond_1e

    iget-object v4, v5, Lr0/t;->b:Landroid/media/AudioTimestamp;

    iget-wide v4, v4, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v4, v4, v17

    goto :goto_d

    :cond_1e
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_d
    sub-long v4, v2, v4

    iget v8, v0, Lr0/v;->i:F

    invoke-static {v4, v5, v8}, Lk0/C;->x(JF)J

    move-result-wide v4

    add-long/2addr v4, v6

    goto :goto_f

    :cond_1f
    iget v4, v0, Lr0/v;->w:I

    if-nez v4, :cond_20

    invoke-virtual {v0}, Lr0/v;->b()J

    move-result-wide v4

    iget v6, v0, Lr0/v;->f:I

    invoke-static {v6, v4, v5}, Lk0/C;->W(IJ)J

    move-result-wide v4

    goto :goto_e

    :cond_20
    iget-wide v4, v0, Lr0/v;->k:J

    add-long/2addr v4, v2

    iget v6, v0, Lr0/v;->i:F

    invoke-static {v4, v5, v6}, Lk0/C;->x(JF)J

    move-result-wide v4

    :goto_e
    if-nez p1, :cond_21

    iget-wide v6, v0, Lr0/v;->n:J

    sub-long/2addr v4, v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_21
    :goto_f
    iget-boolean v6, v0, Lr0/v;->D:Z

    if-eq v6, v10, :cond_22

    iget-wide v6, v0, Lr0/v;->C:J

    iput-wide v6, v0, Lr0/v;->F:J

    iget-wide v6, v0, Lr0/v;->B:J

    iput-wide v6, v0, Lr0/v;->E:J

    :cond_22
    iget-wide v6, v0, Lr0/v;->F:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xf4240

    cmp-long v11, v6, v8

    if-gez v11, :cond_23

    iget-wide v11, v0, Lr0/v;->E:J

    iget v13, v0, Lr0/v;->i:F

    invoke-static {v6, v7, v13}, Lk0/C;->x(JF)J

    move-result-wide v13

    add-long/2addr v13, v11

    mul-long v6, v6, v17

    div-long/2addr v6, v8

    mul-long/2addr v4, v6

    sub-long v6, v17, v6

    mul-long/2addr v6, v13

    add-long/2addr v6, v4

    div-long v4, v6, v17

    :cond_23
    iget-boolean v6, v0, Lr0/v;->j:Z

    if-nez v6, :cond_24

    iget-wide v6, v0, Lr0/v;->B:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_24

    const/4 v8, 0x1

    iput-boolean v8, v0, Lr0/v;->j:Z

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Lk0/C;->c0(J)J

    move-result-wide v6

    iget v8, v0, Lr0/v;->i:F

    invoke-static {v6, v7, v8}, Lk0/C;->C(JF)J

    move-result-wide v6

    iget-object v8, v0, Lr0/v;->I:Lk0/d;

    check-cast v8, Lk0/w;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7}, Lk0/C;->c0(J)J

    move-result-wide v6

    sub-long/2addr v8, v6

    iget-object v1, v1, Lr0/G;->s:Lr0/p;

    if-eqz v1, :cond_24

    invoke-interface {v1, v8, v9}, Lr0/p;->f(J)V

    :cond_24
    iput-wide v2, v0, Lr0/v;->C:J

    iput-wide v4, v0, Lr0/v;->B:J

    iput-boolean v10, v0, Lr0/v;->D:Z

    return-wide v4
.end method

.method public final b()J
    .locals 11

    iget-object v0, p0, Lr0/v;->I:Lk0/d;

    check-cast v0, Lk0/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lr0/v;->x:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lr0/v;->c:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-wide v0, p0, Lr0/v;->z:J

    return-wide v0

    :cond_0
    invoke-static {v0, v1}, Lk0/C;->Q(J)J

    move-result-wide v0

    iget-wide v2, p0, Lr0/v;->x:J

    sub-long/2addr v0, v2

    iget v2, p0, Lr0/v;->i:F

    invoke-static {v0, v1, v2}, Lk0/C;->x(JF)J

    move-result-wide v3

    iget v0, p0, Lr0/v;->f:I

    int-to-long v5, v0

    const-wide/32 v7, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    iget-wide v2, p0, Lr0/v;->A:J

    iget-wide v4, p0, Lr0/v;->z:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v6, p0, Lr0/v;->r:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x5

    cmp-long v2, v6, v8

    if-ltz v2, :cond_a

    iget-object v2, p0, Lr0/v;->c:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v7, v2

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iget-boolean v2, p0, Lr0/v;->g:Z

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_4

    if-ne v6, v3, :cond_3

    cmp-long v2, v7, v9

    if-nez v2, :cond_3

    iget-wide v2, p0, Lr0/v;->s:J

    iput-wide v2, p0, Lr0/v;->u:J

    :cond_3
    iget-wide v2, p0, Lr0/v;->u:J

    add-long/2addr v7, v2

    :cond_4
    sget v2, Lk0/C;->a:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_6

    cmp-long v2, v7, v9

    if-nez v2, :cond_5

    iget-wide v2, p0, Lr0/v;->s:J

    cmp-long v2, v2, v9

    if-lez v2, :cond_5

    const/4 v2, 0x3

    if-ne v6, v2, :cond_5

    iget-wide v2, p0, Lr0/v;->y:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    iput-wide v0, p0, Lr0/v;->y:J

    goto :goto_1

    :cond_5
    iput-wide v4, p0, Lr0/v;->y:J

    :cond_6
    iget-wide v2, p0, Lr0/v;->s:J

    cmp-long v4, v2, v7

    if-lez v4, :cond_8

    iget-boolean v4, p0, Lr0/v;->G:Z

    if-eqz v4, :cond_7

    iget-wide v4, p0, Lr0/v;->H:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lr0/v;->H:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lr0/v;->G:Z

    goto :goto_0

    :cond_7
    iget-wide v2, p0, Lr0/v;->t:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lr0/v;->t:J

    :cond_8
    :goto_0
    iput-wide v7, p0, Lr0/v;->s:J

    :cond_9
    :goto_1
    iput-wide v0, p0, Lr0/v;->r:J

    :cond_a
    iget-wide v0, p0, Lr0/v;->s:J

    iget-wide v2, p0, Lr0/v;->H:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lr0/v;->t:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final c(J)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr0/v;->a(Z)J

    move-result-wide v1

    iget v3, p0, Lr0/v;->f:I

    sget v4, Lk0/C;->a:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    sget-object v7, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static/range {v1 .. v7}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lr0/v;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr0/v;->c:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lr0/v;->b()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr0/v;->k:J

    const/4 v2, 0x0

    iput v2, p0, Lr0/v;->w:I

    iput v2, p0, Lr0/v;->v:I

    iput-wide v0, p0, Lr0/v;->l:J

    iput-wide v0, p0, Lr0/v;->C:J

    iput-wide v0, p0, Lr0/v;->F:J

    iput-boolean v2, p0, Lr0/v;->j:Z

    return-void
.end method
