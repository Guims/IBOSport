.class public final Landroidx/media3/exoplayer/source/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/C;
.implements Landroidx/media3/exoplayer/source/B;


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/E;

.field public final q:J

.field public final r:LE0/b;

.field public s:Landroidx/media3/exoplayer/source/G;

.field public t:Landroidx/media3/exoplayer/source/C;

.field public u:Landroidx/media3/exoplayer/source/B;

.field public v:Z

.field public w:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/E;LE0/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/w;->b:Landroidx/media3/exoplayer/source/E;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/w;->r:LE0/b;

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/w;->q:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/w;->w:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/source/E;)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/w;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/w;->q:J

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/w;->s:Landroidx/media3/exoplayer/source/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/w;->r:LE0/b;

    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media3/exoplayer/source/G;->c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/w;->u:Landroidx/media3/exoplayer/source/B;

    if-eqz v2, :cond_1

    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/C;->n(Landroidx/media3/exoplayer/source/B;J)V

    :cond_1
    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/h0;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J
    .locals 12

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/w;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/w;->q:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    move-wide v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p5

    :goto_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/w;->w:J

    iget-object v5, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v0, Lk0/C;->a:I

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, Landroidx/media3/exoplayer/source/C;->e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final f()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->f()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->s:Landroidx/media3/exoplayer/source/G;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/G;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_0
    throw v0
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/C;->h(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final i(J)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/C;->i(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(Landroidx/media3/exoplayer/source/B;J)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/w;->u:Landroidx/media3/exoplayer/source/B;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    if-eqz p1, :cond_1

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/w;->w:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/w;->q:J

    :goto_0
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/C;->n(Landroidx/media3/exoplayer/source/B;J)V

    :cond_1
    return-void
.end method

.method public final o()Landroidx/media3/exoplayer/source/t0;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->o()Landroidx/media3/exoplayer/source/t0;

    move-result-object v0

    return-object v0
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/C;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/w;->u:Landroidx/media3/exoplayer/source/B;

    sget v0, Lk0/C;->a:I

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public final onPrepared(Landroidx/media3/exoplayer/source/C;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/w;->u:Landroidx/media3/exoplayer/source/B;

    sget v0, Lk0/C;->a:I

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/B;->onPrepared(Landroidx/media3/exoplayer/source/C;)V

    return-void
.end method

.method public final p()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final r(JZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/C;->r(JZ)V

    return-void
.end method

.method public final s(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/h0;->s(J)V

    return-void
.end method
