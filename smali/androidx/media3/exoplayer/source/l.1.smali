.class public final Landroidx/media3/exoplayer/source/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/h0;


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/h0;

.field public final q:Lp3/H;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/h0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/l;->b:Landroidx/media3/exoplayer/source/h0;

    invoke-static {p2}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/l;->q:Lp3/H;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l;->b:Landroidx/media3/exoplayer/source/h0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/h0;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l;->b:Landroidx/media3/exoplayer/source/h0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l;->b:Landroidx/media3/exoplayer/source/h0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l;->b:Landroidx/media3/exoplayer/source/h0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l;->b:Landroidx/media3/exoplayer/source/h0;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/h0;->s(J)V

    return-void
.end method
