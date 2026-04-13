.class public final Landroidx/media3/exoplayer/source/q;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/q;->a:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 0

    const p2, 0x7fffffff

    invoke-interface {p1, p2}, LI0/r;->h(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(JJ)V
    .locals 0

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    new-instance v1, LI0/v;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, LI0/v;-><init>(J)V

    invoke-interface {p1, v1}, LI0/s;->seekMap(LI0/F;)V

    invoke-interface {p1}, LI0/s;->endTracks()V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/q;->a:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "text/x-unknown"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    invoke-interface {v0, p1}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
