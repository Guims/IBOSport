.class public final Landroidx/media3/exoplayer/source/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/f0;

.field public q:Z

.field public final synthetic r:Landroidx/media3/exoplayer/source/d;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/d;Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/c;->r:Landroidx/media3/exoplayer/source/d;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/c;->b:Landroidx/media3/exoplayer/source/f0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->a()V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->r:Landroidx/media3/exoplayer/source/d;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(J)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->r:Landroidx/media3/exoplayer/source/d;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->j(J)I

    move-result p1

    return p1
.end method

.method public final q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->r:Landroidx/media3/exoplayer/source/d;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/d;->a()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/c;->q:Z

    const/4 v3, 0x4

    const/4 v4, -0x4

    if-eqz v1, :cond_1

    iput v3, p2, LU2/e;->q:I

    return v4

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/d;->p()J

    move-result-wide v5

    iget-object v1, p0, Landroidx/media3/exoplayer/source/c;->b:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/exoplayer/source/f0;->q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result p3

    const/4 v1, -0x5

    const-wide/high16 v7, -0x8000000000000000L

    if-ne p3, v1, :cond_6

    iget-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p2, Landroidx/media3/common/Format;->encoderDelay:I

    if-nez p3, :cond_3

    iget v2, p2, Landroidx/media3/common/Format;->encoderPadding:I

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-wide v2, v0, Landroidx/media3/exoplayer/source/d;->t:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move p3, v3

    :cond_4
    iget-wide v4, v0, Landroidx/media3/exoplayer/source/d;->u:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget v3, p2, Landroidx/media3/common/Format;->encoderPadding:I

    :goto_1
    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p2

    iput-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    return v1

    :cond_6
    iget-wide v0, v0, Landroidx/media3/exoplayer/source/d;->u:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_9

    if-ne p3, v4, :cond_7

    iget-wide v9, p2, Lp0/f;->v:J

    cmp-long p1, v9, v0

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v2, :cond_9

    cmp-long p1, v5, v7

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lp0/f;->u:Z

    if-nez p1, :cond_9

    :cond_8
    invoke-virtual {p2}, Lp0/f;->k()V

    iput v3, p2, LU2/e;->q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/c;->q:Z

    return v4

    :cond_9
    return p3
.end method
