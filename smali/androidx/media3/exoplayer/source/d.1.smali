.class public final Landroidx/media3/exoplayer/source/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/C;
.implements Landroidx/media3/exoplayer/source/B;


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/C;

.field public q:Landroidx/media3/exoplayer/source/B;

.field public r:[Landroidx/media3/exoplayer/source/c;

.field public s:J

.field public t:J

.field public u:J

.field public v:Landroidx/media3/exoplayer/source/f;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/C;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/media3/exoplayer/source/c;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/d;->r:[Landroidx/media3/exoplayer/source/c;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/d;->s:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/d;->t:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/d;->u:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/d;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/h0;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/d;->u:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J
    .locals 14

    move-object/from16 v0, p3

    array-length v1, v0

    new-array v1, v1, [Landroidx/media3/exoplayer/source/c;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/d;->r:[Landroidx/media3/exoplayer/source/c;

    array-length v1, v0

    new-array v5, v1, [Landroidx/media3/exoplayer/source/f0;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    const/4 v9, 0x0

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/d;->r:[Landroidx/media3/exoplayer/source/c;

    aget-object v4, v0, v2

    check-cast v4, Landroidx/media3/exoplayer/source/c;

    aput-object v4, v3, v2

    if-eqz v4, :cond_0

    iget-object v9, v4, Landroidx/media3/exoplayer/source/c;->b:Landroidx/media3/exoplayer/source/f0;

    :cond_0
    aput-object v9, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Landroidx/media3/exoplayer/source/C;->e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J

    move-result-wide v10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/d;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/d;->t:J

    cmp-long v2, p5, v6

    if-nez v2, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-eqz v2, :cond_3

    array-length v2, p1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v6, p1, v4

    if-eqz v6, :cond_2

    invoke-interface {v6}, LD0/v;->m()Landroidx/media3/common/Format;

    move-result-object v6

    iget-object v7, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v6, v6, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v7, v6}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v2, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/d;->s:J

    cmp-long p1, v10, p5

    if-eqz p1, :cond_5

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/d;->t:J

    cmp-long p1, v10, v2

    if-ltz p1, :cond_4

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/d;->u:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long p1, v2, v6

    if-eqz p1, :cond_5

    cmp-long p1, v10, v2

    if-gtz p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x1

    :goto_4
    invoke-static {p1}, Lk0/c;->j(Z)V

    :goto_5
    array-length p1, v0

    if-ge v1, p1, :cond_9

    aget-object p1, v5, v1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/source/d;->r:[Landroidx/media3/exoplayer/source/c;

    aput-object v9, p1, v1

    goto :goto_6

    :cond_6
    iget-object v2, p0, Landroidx/media3/exoplayer/source/d;->r:[Landroidx/media3/exoplayer/source/c;

    aget-object v3, v2, v1

    if-eqz v3, :cond_7

    iget-object v3, v3, Landroidx/media3/exoplayer/source/c;->b:Landroidx/media3/exoplayer/source/f0;

    if-eq v3, p1, :cond_8

    :cond_7
    new-instance v3, Landroidx/media3/exoplayer/source/c;

    invoke-direct {v3, p0, p1}, Landroidx/media3/exoplayer/source/c;-><init>(Landroidx/media3/exoplayer/source/d;Landroidx/media3/exoplayer/source/f0;)V

    aput-object v3, v2, v1

    :cond_8
    :goto_6
    iget-object p1, p0, Landroidx/media3/exoplayer/source/d;->r:[Landroidx/media3/exoplayer/source/c;

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-wide v10
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->v:Landroidx/media3/exoplayer/source/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->f()V

    return-void

    :cond_0
    throw v0
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 9

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/d;->t:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v3, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    const-wide/16 v5, 0x0

    sub-long v7, p1, v0

    invoke-static/range {v3 .. v8}, Lk0/C;->j(JJJ)J

    move-result-wide v0

    iget-wide v2, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/d;->u:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    move-wide v6, v4

    goto :goto_1

    :cond_1
    sub-long/2addr v4, p1

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lk0/C;->j(JJJ)J

    move-result-wide v2

    iget-wide v4, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    iget-wide v4, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p3, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {p3, v0, v1, v2, v3}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/C;->h(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final i(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/d;->s:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->r:[Landroidx/media3/exoplayer/source/c;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-boolean v2, v4, Landroidx/media3/exoplayer/source/c;->q:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/C;->i(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/d;->t:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/d;->u:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-eqz v3, :cond_2

    cmp-long p1, v0, p1

    if-gtz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lk0/c;->j(Z)V

    return-wide v0
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/d;->a()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/d;->s:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/d;->s:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/d;->k()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->k()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/d;->t:J

    cmp-long v0, v3, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/d;->u:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-static {v1}, Lk0/c;->j(Z)V

    return-wide v3
.end method

.method public final n(Landroidx/media3/exoplayer/source/B;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/d;->q:Landroidx/media3/exoplayer/source/B;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/C;->n(Landroidx/media3/exoplayer/source/B;J)V

    return-void
.end method

.method public final o()Landroidx/media3/exoplayer/source/t0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->o()Landroidx/media3/exoplayer/source/t0;

    move-result-object v0

    return-object v0
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/C;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/d;->q:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public final onPrepared(Landroidx/media3/exoplayer/source/C;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/d;->v:Landroidx/media3/exoplayer/source/f;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/d;->q:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/B;->onPrepared(Landroidx/media3/exoplayer/source/C;)V

    return-void
.end method

.method public final p()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->p()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/d;->u:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final r(JZ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/C;->r(JZ)V

    return-void
.end method

.method public final s(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/h0;->s(J)V

    return-void
.end method
