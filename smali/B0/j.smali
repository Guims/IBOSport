.class public final LB0/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# instance fields
.field public final b:LB0/l;

.field public final q:Landroidx/media3/exoplayer/source/e0;

.field public final r:I

.field public s:Z

.field public final synthetic t:LB0/l;


# direct methods
.method public constructor <init>(LB0/l;LB0/l;Landroidx/media3/exoplayer/source/e0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/j;->t:LB0/l;

    iput-object p2, p0, LB0/j;->b:LB0/l;

    iput-object p3, p0, LB0/j;->q:Landroidx/media3/exoplayer/source/e0;

    iput p4, p0, LB0/j;->r:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 8

    iget-boolean v0, p0, LB0/j;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LB0/j;->t:LB0/l;

    iget-object v1, v0, LB0/l;->v:LA/d;

    iget-object v2, v0, LB0/l;->q:[I

    iget v3, p0, LB0/j;->r:I

    aget v2, v2, v3

    iget-object v4, v0, LB0/l;->r:[Landroidx/media3/common/Format;

    aget-object v3, v4, v3

    const/4 v5, 0x0

    iget-wide v6, v0, LB0/l;->I:J

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, LA/d;->g(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/j;->s:Z

    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 2

    iget-object v0, p0, LB0/j;->t:LB0/l;

    invoke-virtual {v0}, LB0/l;->w()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LB0/j;->q:Landroidx/media3/exoplayer/source/e0;

    iget-boolean v0, v0, LB0/l;->N:Z

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/e0;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(J)I
    .locals 3

    iget-object v0, p0, LB0/j;->t:LB0/l;

    invoke-virtual {v0}, LB0/l;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v1, v0, LB0/l;->N:Z

    iget-object v2, p0, LB0/j;->q:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->getSkipCount(JZ)I

    move-result p1

    iget-object p2, v0, LB0/l;->K:LB0/a;

    if-eqz p2, :cond_1

    iget v0, p0, LB0/j;->r:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, LB0/a;->c(I)I

    move-result p2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/e0;->skip(I)V

    if-lez p1, :cond_2

    invoke-virtual {p0}, LB0/j;->b()V

    :cond_2
    return p1
.end method

.method public final q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I
    .locals 4

    iget-object v0, p0, LB0/j;->t:LB0/l;

    invoke-virtual {v0}, LB0/l;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, LB0/l;->K:LB0/a;

    iget-object v2, p0, LB0/j;->q:Landroidx/media3/exoplayer/source/e0;

    if-eqz v1, :cond_1

    iget v3, p0, LB0/j;->r:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, LB0/a;->c(I)I

    move-result v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v3

    if-gt v1, v3, :cond_1

    :goto_0
    const/4 p1, -0x3

    return p1

    :cond_1
    invoke-virtual {p0}, LB0/j;->b()V

    iget-boolean v0, v0, LB0/l;->N:Z

    invoke-virtual {v2, p1, p2, p3, v0}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    move-result p1

    return p1
.end method
