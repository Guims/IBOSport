.class public final Landroidx/media3/exoplayer/source/L;
.super Ljava/lang/Object;

# interfaces
.implements LD0/v;


# instance fields
.field public final a:LD0/v;

.field public final b:Landroidx/media3/common/TrackGroup;


# direct methods
.method public constructor <init>(LD0/v;Landroidx/media3/common/TrackGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    return-void
.end method


# virtual methods
.method public final a(JJJLjava/util/List;[LB0/p;)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, LD0/v;->a(JJJLjava/util/List;[LB0/p;)V

    return-void
.end method

.method public final b(IJ)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1, p2, p3}, LD0/v;->b(IJ)Z

    move-result p1

    return p1
.end method

.method public final c(Landroidx/media3/common/Format;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1}, LD0/v;->t(I)I

    move-result p1

    return p1
.end method

.method public final d()Landroidx/media3/common/TrackGroup;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    return-object v0
.end method

.method public final disable()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->disable()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->e()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/source/L;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/source/L;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    iget-object v3, p1, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(JLB0/f;Ljava/util/List;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1, p2, p3, p4}, LD0/v;->f(JLB0/f;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1}, LD0/v;->g(Z)V

    return-void
.end method

.method public final h(I)Landroidx/media3/common/Format;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1}, LD0/v;->j(I)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0}, Landroidx/media3/common/TrackGroup;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->i()V

    return-void
.end method

.method public final j(I)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1}, LD0/v;->j(I)I

    move-result p1

    return p1
.end method

.method public final k(JLjava/util/List;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1, p2, p3}, LD0/v;->k(JLjava/util/List;)I

    move-result p1

    return p1
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->l()I

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->length()I

    move-result v0

    return v0
.end method

.method public final m()Landroidx/media3/common/Format;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->l()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/L;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1, v0}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->n()I

    move-result v0

    return v0
.end method

.method public final o(IJ)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1, p2, p3}, LD0/v;->o(IJ)Z

    move-result p1

    return p1
.end method

.method public final p(F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1}, LD0/v;->p(F)V

    return-void
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->q()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->r()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0}, LD0/v;->s()V

    return-void
.end method

.method public final t(I)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/L;->a:LD0/v;

    invoke-interface {v0, p1}, LD0/v;->t(I)I

    move-result p1

    return p1
.end method
