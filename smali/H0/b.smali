.class public final LH0/b;
.super Landroidx/media3/exoplayer/BaseRenderer;


# instance fields
.field public final b:Lp0/f;

.field public final q:Lk0/u;

.field public r:LH0/a;

.field public s:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    new-instance v0, Lp0/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp0/f;-><init>(II)V

    iput-object v0, p0, LH0/b;->b:Lp0/f;

    new-instance v0, Lk0/u;

    invoke-direct {v0}, Lk0/u;-><init>()V

    iput-object v0, p0, LH0/b;->q:Lk0/u;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    check-cast p2, LH0/a;

    iput-object p2, p0, LH0/b;->r:LH0/a;

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onDisabled()V
    .locals 1

    iget-object v0, p0, LH0/b;->r:LH0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LH0/a;->onCameraMotionReset()V

    :cond_0
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, LH0/b;->s:J

    iget-object p1, p0, LH0/b;->r:LH0/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LH0/a;->onCameraMotionReset()V

    :cond_0
    return-void
.end method

.method public final render(JJ)V
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_7

    iget-wide p3, p0, LH0/b;->s:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_7

    iget-object p3, p0, LH0/b;->b:Lp0/f;

    invoke-virtual {p3}, Lp0/f;->k()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p3, v0}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result p4

    const/4 v1, -0x4

    if-ne p4, v1, :cond_7

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, LU2/e;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    iget-wide v1, p3, Lp0/f;->v:J

    iput-wide v1, p0, LH0/b;->s:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, LH0/b;->r:LH0/a;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lp0/f;->n()V

    iget-object p3, p3, Lp0/f;->t:Ljava/nio/ByteBuffer;

    sget v1, Lk0/C;->a:I

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/4 p3, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, LH0/b;->q:Lk0/u;

    invoke-virtual {v3, v1, v2}, Lk0/u;->E([BI)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {v3, p3}, Lk0/u;->G(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_2
    if-ge v0, p3, :cond_5

    invoke-virtual {v3}, Lk0/u;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object p3, p4

    :goto_3
    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    iget-object p4, p0, LH0/b;->r:LH0/a;

    iget-wide v0, p0, LH0/b;->s:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getStreamOffsetUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, LH0/a;->onCameraMotion(J[F)V

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 1

    const-string v0, "application/x-camera-motion"

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method
