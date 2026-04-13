.class public final Landroidx/media3/exoplayer/source/g;
.super Landroidx/media3/exoplayer/source/u0;


# instance fields
.field public final l:J

.field public final m:J

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:Landroidx/media3/common/Timeline$Window;

.field public s:Landroidx/media3/exoplayer/source/e;

.field public t:Landroidx/media3/exoplayer/source/f;

.field public u:J

.field public v:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/G;JJZZZ)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/u0;-><init>(Landroidx/media3/exoplayer/source/G;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->d(Z)V

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/g;->l:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/source/g;->m:J

    iput-boolean p6, p0, Landroidx/media3/exoplayer/source/g;->n:Z

    iput-boolean p7, p0, Landroidx/media3/exoplayer/source/g;->o:Z

    iput-boolean p8, p0, Landroidx/media3/exoplayer/source/g;->p:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/g;->q:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/g;->r:Landroidx/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final A(Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g;->t:Landroidx/media3/exoplayer/source/f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/g;->D(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final D(Landroidx/media3/common/Timeline;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v0, v1, Landroidx/media3/exoplayer/source/g;->r:Landroidx/media3/common/Timeline$Window;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v5

    iget-object v3, v1, Landroidx/media3/exoplayer/source/g;->s:Landroidx/media3/exoplayer/source/e;

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/g;->m:J

    const-wide/high16 v9, -0x8000000000000000L

    iget-object v11, v1, Landroidx/media3/exoplayer/source/g;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/g;->o:Z

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v12, v1, Landroidx/media3/exoplayer/source/g;->u:J

    sub-long/2addr v12, v5

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/g;->v:J

    sub-long v9, v7, v5

    :goto_0
    move-wide v7, v9

    :goto_1
    move-wide v5, v12

    goto :goto_6

    :cond_2
    :goto_2
    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/g;->p:Z

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/g;->l:J

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v14

    add-long/2addr v12, v14

    add-long/2addr v14, v7

    goto :goto_3

    :cond_3
    move-wide v14, v7

    :goto_3
    add-long v2, v5, v12

    iput-wide v2, v1, Landroidx/media3/exoplayer/source/g;->u:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    add-long v9, v5, v14

    :goto_4
    iput-wide v9, v1, Landroidx/media3/exoplayer/source/g;->v:J

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_5

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/d;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/g;->u:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/g;->v:J

    iput-wide v5, v3, Landroidx/media3/exoplayer/source/d;->t:J

    iput-wide v7, v3, Landroidx/media3/exoplayer/source/d;->u:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    move-wide v7, v14

    goto :goto_1

    :goto_6
    :try_start_0
    new-instance v3, Landroidx/media3/exoplayer/source/e;

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/e;-><init>(Landroidx/media3/common/Timeline;JJ)V

    iput-object v3, v1, Landroidx/media3/exoplayer/source/g;->s:Landroidx/media3/exoplayer/source/e;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/f; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/common/Timeline;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Landroidx/media3/exoplayer/source/g;->t:Landroidx/media3/exoplayer/source/f;

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/d;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/g;->t:Landroidx/media3/exoplayer/source/f;

    iput-object v3, v0, Landroidx/media3/exoplayer/source/d;->v:Landroidx/media3/exoplayer/source/f;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;
    .locals 7

    new-instance v0, Landroidx/media3/exoplayer/source/d;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/G;->c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/g;->u:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/g;->v:J

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/g;->n:Z

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/d;-><init>(Landroidx/media3/exoplayer/source/C;ZJJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/g;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g;->t:Landroidx/media3/exoplayer/source/f;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/k;->d()V

    return-void

    :cond_0
    throw v0
.end method

.method public final g(Landroidx/media3/common/MediaItem;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/G;->b()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/G;->g(Landroidx/media3/common/MediaItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Landroidx/media3/exoplayer/source/C;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/g;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lk0/c;->j(Z)V

    check-cast p1, Landroidx/media3/exoplayer/source/d;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/G;->h(Landroidx/media3/exoplayer/source/C;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/g;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/g;->s:Landroidx/media3/exoplayer/source/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/t;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/g;->D(Landroidx/media3/common/Timeline;)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/source/k;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/g;->t:Landroidx/media3/exoplayer/source/f;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/g;->s:Landroidx/media3/exoplayer/source/e;

    return-void
.end method
