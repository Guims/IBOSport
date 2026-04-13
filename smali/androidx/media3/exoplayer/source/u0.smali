.class public abstract Landroidx/media3/exoplayer/source/u0;
.super Landroidx/media3/exoplayer/source/k;


# instance fields
.field public final k:Landroidx/media3/exoplayer/source/G;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/G;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/k;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    return-void
.end method


# virtual methods
.method public abstract A(Landroidx/media3/common/Timeline;)V
.end method

.method public final B()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/k;->y(Ljava/lang/Object;Landroidx/media3/exoplayer/source/G;)V

    return-void
.end method

.method public C()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/u0;->B()V

    return-void
.end method

.method public a(Landroidx/media3/common/MediaItem;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/G;->a(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final b()Landroidx/media3/common/MediaItem;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/G;->b()Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/G;->e()Z

    move-result v0

    return v0
.end method

.method public final f()Landroidx/media3/common/Timeline;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u0;->k:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/G;->f()Landroidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public final o(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->j:Landroidx/media3/datasource/TransferListener;

    const/4 p1, 0x0

    invoke-static {p1}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->i:Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/u0;->C()V

    return-void
.end method

.method public final u(Ljava/lang/Object;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/u0;->z(Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/Object;J)J
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-wide p2
.end method

.method public final w(ILjava/lang/Object;)I
    .locals 0

    check-cast p2, Ljava/lang/Void;

    return p1
.end method

.method public final x(Ljava/lang/Object;Landroidx/media3/exoplayer/source/a;Landroidx/media3/common/Timeline;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/source/u0;->A(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public z(Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;
    .locals 0

    return-object p1
.end method
