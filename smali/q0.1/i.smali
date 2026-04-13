.class public final Lq0/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Period;

.field public b:Lp3/H;

.field public c:Lp3/d0;

.field public d:Landroidx/media3/exoplayer/source/E;

.field public e:Landroidx/media3/exoplayer/source/E;

.field public f:Landroidx/media3/exoplayer/source/E;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline$Period;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/i;->a:Landroidx/media3/common/Timeline$Period;

    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    iput-object p1, p0, Lq0/i;->b:Lp3/H;

    sget-object p1, Lp3/d0;->v:Lp3/d0;

    iput-object p1, p0, Lq0/i;->c:Lp3/d0;

    return-void
.end method

.method public static b(Landroidx/media3/common/Player;Lp3/H;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/E;
    .locals 10

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    :goto_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v1, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Lk0/C;->Q(J)J

    move-result-wide v1

    invoke-virtual {p3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p3

    :goto_1
    move v9, p3

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p3, -0x1

    goto :goto_1

    :goto_3
    const/4 p3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/media3/exoplayer/source/E;

    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v6

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    invoke-static/range {v4 .. v9}, Lq0/i;->c(Landroidx/media3/exoplayer/source/E;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v6

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, p2

    invoke-static/range {v4 .. v9}, Lq0/i;->c(Landroidx/media3/exoplayer/source/E;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v4

    :cond_5
    return-object v3
.end method

.method public static c(Landroidx/media3/exoplayer/source/E;Ljava/lang/Object;ZIII)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    iget v1, p0, Landroidx/media3/exoplayer/source/E;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-ne v1, p3, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/source/E;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    const/4 p1, -0x1

    if-ne v1, p1, :cond_3

    iget p0, p0, Landroidx/media3/exoplayer/source/E;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(LA/d;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p3, p0, Lq0/i;->c:Lp3/d0;

    invoke-virtual {p3, p2}, Lp3/d0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/Timeline;

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, p3}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Landroidx/media3/common/Timeline;)V
    .locals 3

    new-instance v0, LA/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LA/d;-><init>(I)V

    iget-object v1, p0, Lq0/i;->b:Lp3/H;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0, v0, v1, p1}, Lq0/i;->a(LA/d;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline;)V

    iget-object v1, p0, Lq0/i;->f:Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    invoke-static {v1, v2}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lq0/i;->f:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0, v0, v1, p1}, Lq0/i;->a(LA/d;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline;)V

    :cond_0
    iget-object v1, p0, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    invoke-static {v1, v2}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    iget-object v2, p0, Lq0/i;->f:Landroidx/media3/exoplayer/source/E;

    invoke-static {v1, v2}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0, v0, v1, p1}, Lq0/i;->a(LA/d;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lq0/i;->b:Lp3/H;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lq0/i;->b:Lp3/H;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0, v0, v2, p1}, Lq0/i;->a(LA/d;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lq0/i;->b:Lp3/H;

    iget-object v2, p0, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {v1, v2}, Lp3/H;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lq0/i;->d:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p0, v0, v1, p1}, Lq0/i;->a(LA/d;Landroidx/media3/exoplayer/source/E;Landroidx/media3/common/Timeline;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, LA/d;->c()Lp3/d0;

    move-result-object p1

    iput-object p1, p0, Lq0/i;->c:Lp3/d0;

    return-void
.end method
