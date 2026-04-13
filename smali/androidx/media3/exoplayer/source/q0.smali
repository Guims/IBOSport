.class public final Landroidx/media3/exoplayer/source/q0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/f0;

.field public final q:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/f0;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/q0;->b:Landroidx/media3/exoplayer/source/f0;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/q0;->q:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/q0;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->a()V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/q0;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isReady()Z

    move-result v0

    return v0
.end method

.method public final j(J)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/q0;->q:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/q0;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->j(J)I

    move-result p1

    return p1
.end method

.method public final q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/q0;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/f0;->q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lp0/f;->v:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/q0;->q:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lp0/f;->v:J

    :cond_0
    return p1
.end method
