.class public final Landroidx/media3/exoplayer/source/z;
.super Landroidx/media3/exoplayer/source/u0;


# instance fields
.field public final l:Z

.field public final m:Landroidx/media3/common/Timeline$Window;

.field public final n:Landroidx/media3/common/Timeline$Period;

.field public o:Landroidx/media3/exoplayer/source/x;

.field public p:Landroidx/media3/exoplayer/source/w;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/G;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/u0;-><init>(Landroidx/media3/exoplayer/source/G;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/G;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/z;->l:Z

    new-instance p2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/z;->m:Landroidx/media3/common/Timeline$Window;

    new-instance p2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/z;->n:Landroidx/media3/common/Timeline$Period;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/G;->f()Landroidx/media3/common/Timeline;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/source/x;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/z;->s:Z

    return-void

    :cond_1
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/G;->b()Landroidx/media3/common/MediaItem;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/source/x;

    new-instance v0, Landroidx/media3/exoplayer/source/y;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/y;-><init>(Landroidx/media3/common/MediaItem;)V

    sget-object p1, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v1, Landroidx/media3/exoplayer/source/x;->c:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    return-void
.end method


# virtual methods
.method public final A(Landroidx/media3/common/Timeline;)V
    .locals 11

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/z;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    new-instance v2, Landroidx/media3/exoplayer/source/x;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/x;->a:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    invoke-direct {v2, p1, v3, v1}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    if-eqz v0, :cond_6

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/w;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/z;->E(J)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/z;->s:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    new-instance v2, Landroidx/media3/exoplayer/source/x;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/x;->a:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    invoke-direct {v2, p1, v3, v1}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v2, Landroidx/media3/exoplayer/source/x;->c:Ljava/lang/Object;

    new-instance v3, Landroidx/media3/exoplayer/source/x;

    invoke-direct {v3, p1, v1, v2}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/z;->m:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v3

    iget-object v6, v2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    if-eqz v5, :cond_3

    iget-wide v7, v5, Landroidx/media3/exoplayer/source/w;->q:J

    iget-object v9, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/w;->b:Landroidx/media3/exoplayer/source/E;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    iget-object v10, p0, Landroidx/media3/exoplayer/source/z;->n:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9, v5, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v10}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v9

    add-long/2addr v9, v7

    iget-object v5, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    invoke-virtual {v5, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-eqz v1, :cond_3

    move-wide v4, v9

    goto :goto_1

    :cond_3
    move-wide v4, v3

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/z;->n:Landroidx/media3/common/Timeline$Period;

    const/4 v3, 0x0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->m:Landroidx/media3/common/Timeline$Window;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/z;->s:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    new-instance v2, Landroidx/media3/exoplayer/source/x;

    iget-object v5, v1, Landroidx/media3/exoplayer/source/x;->a:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    invoke-direct {v2, p1, v5, v1}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v1, Landroidx/media3/exoplayer/source/x;

    invoke-direct {v1, p1, v6, v2}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    :goto_2
    iput-object v2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/source/z;->E(J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Landroidx/media3/exoplayer/source/w;->b:Landroidx/media3/exoplayer/source/E;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    if-eqz v2, :cond_5

    sget-object v2, Landroidx/media3/exoplayer/source/x;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/E;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/E;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/z;->s:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/z;->r:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/common/Timeline;)V

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/w;->a(Landroidx/media3/exoplayer/source/E;)V

    :cond_7
    return-void
.end method

.method public final C()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/z;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/z;->q:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/u0;->B()V

    :cond_0
    return-void
.end method

.method public final D(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/w;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/source/w;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/w;-><init>(Landroidx/media3/exoplayer/source/E;LE0/b;J)V

    iget-object p2, v0, Landroidx/media3/exoplayer/source/w;->s:Landroidx/media3/exoplayer/source/G;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lk0/c;->j(Z)V

    iget-object p2, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    iput-object p2, v0, Landroidx/media3/exoplayer/source/w;->s:Landroidx/media3/exoplayer/source/G;

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/z;->r:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object p3, p3, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    if-eqz p3, :cond_1

    sget-object p3, Landroidx/media3/exoplayer/source/x;->c:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object p2, p2, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/E;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/E;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/w;->a(Landroidx/media3/exoplayer/source/E;)V

    return-object v0

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/z;->q:Z

    if-nez p1, :cond_3

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/z;->q:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/u0;->B()V

    :cond_3
    return-object v0
.end method

.method public final E(J)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/w;->b:Landroidx/media3/exoplayer/source/E;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/x;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/z;->n:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v1, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    iput-wide p1, v0, Landroidx/media3/exoplayer/source/w;->w:J

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroidx/media3/common/MediaItem;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/z;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    new-instance v1, Landroidx/media3/exoplayer/source/s0;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/t;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/source/s0;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    new-instance v2, Landroidx/media3/exoplayer/source/x;

    iget-object v3, v0, Landroidx/media3/exoplayer/source/x;->a:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v0}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/x;

    new-instance v1, Landroidx/media3/exoplayer/source/y;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/y;-><init>(Landroidx/media3/common/MediaItem;)V

    sget-object v2, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v3, Landroidx/media3/exoplayer/source/x;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/x;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/G;->a(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final bridge synthetic c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/z;->D(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/w;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final g(Landroidx/media3/common/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/G;->g(Landroidx/media3/common/MediaItem;)Z

    move-result p1

    return p1
.end method

.method public final h(Landroidx/media3/exoplayer/source/C;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/w;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/w;->s:Landroidx/media3/exoplayer/source/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/w;->t:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/G;->h(Landroidx/media3/exoplayer/source/C;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/z;->p:Landroidx/media3/exoplayer/source/w;

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/z;->r:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/z;->q:Z

    invoke-super {p0}, Landroidx/media3/exoplayer/source/k;->r()V

    return-void
.end method

.method public final z(Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/z;->o:Landroidx/media3/exoplayer/source/x;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/x;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/source/x;->c:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/E;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/E;

    move-result-object p1

    return-object p1
.end method
