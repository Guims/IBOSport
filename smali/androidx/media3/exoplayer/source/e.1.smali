.class public final Landroidx/media3/exoplayer/source/e;
.super Landroidx/media3/exoplayer/source/t;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;JJ)V
    .locals 13

    move-wide/from16 v0, p4

    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/source/t;-><init>(Landroidx/media3/common/Timeline;)V

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p1, v3, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    const-wide/16 v5, 0x0

    move-wide v7, p2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-boolean v2, p1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez v2, :cond_1

    cmp-long v2, v9, v5

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/source/f;

    invoke-direct {p1, v4}, Landroidx/media3/exoplayer/source/f;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    iget-wide v0, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    goto :goto_1

    :cond_2
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    iget-wide v5, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v7

    if-eqz v2, :cond_5

    cmp-long v2, v0, v5

    if-lez v2, :cond_3

    move-wide v11, v5

    goto :goto_2

    :cond_3
    move-wide v11, v0

    :goto_2
    cmp-long v0, v9, v11

    if-gtz v0, :cond_4

    move-wide v0, v11

    goto :goto_3

    :cond_4
    new-instance v7, Landroidx/media3/exoplayer/source/f;

    const/4 v8, 0x2

    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/source/f;-><init>(IJJ)V

    throw v7

    :cond_5
    :goto_3
    iput-wide v9, p0, Landroidx/media3/exoplayer/source/e;->a:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/e;->b:J

    cmp-long v2, v0, v7

    if-nez v2, :cond_6

    move-wide v9, v7

    goto :goto_4

    :cond_6
    sub-long v9, v0, v9

    :goto_4
    iput-wide v9, p0, Landroidx/media3/exoplayer/source/e;->c:J

    iget-boolean p1, p1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_8

    if-eqz v2, :cond_7

    cmp-long p1, v5, v7

    if-eqz p1, :cond_8

    cmp-long p1, v0, v5

    if-nez p1, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/e;->d:Z

    return-void

    :cond_9
    new-instance p1, Landroidx/media3/exoplayer/source/f;

    invoke-direct {p1, v3}, Landroidx/media3/exoplayer/source/f;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12

    iget-object p1, p0, Landroidx/media3/exoplayer/source/t;->timeline:Landroidx/media3/common/Timeline;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/e;->a:J

    sub-long v10, v0, v2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    :goto_0
    move-wide v8, v2

    goto :goto_1

    :cond_0
    sub-long v2, v0, v10

    goto :goto_0

    :goto_1
    iget-object v5, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 6

    iget-object p1, p0, Landroidx/media3/exoplayer/source/t;->timeline:Landroidx/media3/common/Timeline;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e;->a:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide p3, p0, Landroidx/media3/exoplayer/source/e;->c:J

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/e;->d:Z

    iput-boolean p1, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/e;->b:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    sub-long/2addr p3, v0

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    :cond_1
    invoke-static {v0, v1}, Lk0/C;->c0(J)J

    move-result-wide p3

    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    :cond_2
    iget-wide v0, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    iput-wide v0, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    :cond_3
    return-object p2
.end method
