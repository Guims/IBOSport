.class final Landroidx/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public allRenderersInCorrectState:Z

.field public hasEnabledTracks:Z

.field public info:Landroidx/media3/exoplayer/MediaPeriodInfo;

.field private final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/C;

.field private final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field private next:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public prepareCalled:Z

.field public prepared:Z

.field private final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field private rendererPositionOffsetUs:J

.field public final sampleStreams:[Landroidx/media3/exoplayer/source/f0;

.field public final targetPreloadBufferDurationUs:J

.field private trackGroups:Landroidx/media3/exoplayer/source/t0;

.field private final trackSelector:LD0/C;

.field private trackSelectorResult:LD0/D;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererCapabilities;JLD0/C;LE0/b;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;LD0/D;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iput-wide p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:LD0/C;

    iput-object p6, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    move-object p2, p1

    iget-object p1, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/E;

    iget-object p3, p1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iput-wide p9, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->targetPreloadBufferDurationUs:J

    sget-object p3, Landroidx/media3/exoplayer/source/t0;->d:Landroidx/media3/exoplayer/source/t0;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/t0;

    iput-object p8, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    array-length p3, p2

    new-array p3, p3, [Landroidx/media3/exoplayer/source/f0;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/f0;

    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    move-object p3, p5

    iget-wide p4, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide p7, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    move-object p2, p6

    move-wide p6, p7

    invoke-static/range {p1 .. p7}, Landroidx/media3/exoplayer/MediaPeriodHolder;->createMediaPeriod(Landroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/MediaSourceList;LE0/b;JJ)Landroidx/media3/exoplayer/source/C;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/f0;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    invoke-virtual {v1, v0}, LD0/D;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/source/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static createMediaPeriod(Landroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/MediaSourceList;LE0/b;JJ)Landroidx/media3/exoplayer/source/C;
    .locals 0

    invoke-virtual {p1, p0, p2, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList;->createPeriod(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;

    move-result-object p1

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p5, p2

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/media3/exoplayer/source/d;

    const/4 p2, 0x1

    const-wide/16 p3, 0x0

    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/source/d;-><init>(Landroidx/media3/exoplayer/source/C;ZJJ)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method private disableTrackSelectionsInResult()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    iget v2, v1, LD0/D;->a:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, LD0/D;->b(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    iget-object v2, v2, LD0/D;->c:[LD0/v;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, LD0/v;->disable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/f0;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableTrackSelectionsInResult()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    iget v2, v1, LD0/D;->a:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, LD0/D;->b(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    iget-object v2, v2, LD0/D;->c:[LD0/v;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, LD0/v;->i()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private isLoadingMediaPeriod()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static releaseMediaPeriod(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/source/C;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Landroidx/media3/exoplayer/source/d;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/media3/exoplayer/source/d;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/d;->b:Landroidx/media3/exoplayer/source/C;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/C;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->releasePeriod(Landroidx/media3/exoplayer/source/C;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    invoke-static {p1, v0, p0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public applyTrackSelection(LD0/D;JZ)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(LD0/D;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public applyTrackSelection(LD0/D;JZ[Z)J
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, LD0/D;->a:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    invoke-virtual {p1, v4, v1}, LD0/D;->a(LD0/D;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/f0;

    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/f0;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    iget-object v5, p1, LD0/D;->c:[LD0/v;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/f0;

    move-wide v9, p2

    move-object/from16 v8, p5

    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/source/C;->e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J

    move-result-wide p2

    iget-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/f0;

    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Landroidx/media3/exoplayer/source/f0;)V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    move p4, v0

    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/f0;

    array-length v2, v1

    if-ge p4, v2, :cond_5

    aget-object v1, v1, p4

    if-eqz v1, :cond_2

    invoke-virtual {p1, p4}, LD0/D;->b(I)Z

    move-result v1

    invoke-static {v1}, Lk0/c;->j(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, p4

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    iput-boolean v3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_4

    :cond_2
    iget-object v1, p1, LD0/D;->c:[LD0/v;

    aget-object v1, v1, p4

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    invoke-static {v1}, Lk0/c;->j(Z)V

    :cond_4
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    return-wide p2
.end method

.method public canBeUsedForMediaPeriodInfo(Landroidx/media3/exoplayer/MediaPeriodInfo;)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v3, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/E;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/h0;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->p()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public getNext()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRendererOffset()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public getStartPositionRendererTime()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/t0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/t0;

    return-object v0
.end method

.method public getTrackSelectorResult()LD0/D;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:LD0/D;

    return-object v0
.end method

.method public handlePrepared(FLandroidx/media3/common/Timeline;Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->o()Landroidx/media3/exoplayer/source/t0;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;Z)LD0/D;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide p2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(LD0/D;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, p3, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v2, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    return-void
.end method

.method public hasLoadingError()Z
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->f()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/f0;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/f0;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFullyBuffered()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->p()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyPreloaded()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->targetPreloadBufferDurationUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Landroidx/media3/exoplayer/source/B;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/C;->n(Landroidx/media3/exoplayer/source/B;J)V

    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/h0;->s(J)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->releaseMediaPeriod(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/source/C;)V

    return-void
.end method

.method public selectTracks(FLandroidx/media3/common/Timeline;Z)LD0/D;
    .locals 34

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:LD0/C;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Landroidx/media3/exoplayer/source/t0;

    move-result-object v3

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/E;

    check-cast v0, LD0/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [I

    array-length v6, v2

    add-int/2addr v6, v5

    new-array v7, v6, [[Landroidx/media3/common/TrackGroup;

    array-length v8, v2

    add-int/2addr v8, v5

    new-array v13, v8, [[[I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    iget v10, v3, Landroidx/media3/exoplayer/source/t0;->a:I

    new-array v11, v10, [Landroidx/media3/common/TrackGroup;

    aput-object v11, v7, v9

    new-array v10, v10, [[I

    aput-object v10, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v6, v2

    new-array v12, v6, [I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_1

    aget-object v10, v2, v9

    invoke-interface {v10}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v10

    aput v10, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    iget v9, v3, Landroidx/media3/exoplayer/source/t0;->a:I

    const/4 v15, 0x5

    if-ge v6, v9, :cond_a

    invoke-virtual {v3, v6}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    iget v10, v9, Landroidx/media3/common/TrackGroup;->type:I

    if-ne v10, v15, :cond_2

    move v10, v5

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    array-length v11, v2

    move/from16 v16, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    array-length v8, v2

    if-ge v14, v8, :cond_7

    aget-object v8, v2, v14

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v17, v5

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_5
    iget v3, v9, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v3, :cond_3

    invoke-virtual {v9, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v3

    invoke-interface {v8, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v3

    invoke-static {v3}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    aget v3, v4, v14

    if-nez v3, :cond_4

    move/from16 v3, v17

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    :goto_6
    if-gt v0, v15, :cond_5

    if-ne v0, v15, :cond_6

    if-eqz v10, :cond_6

    if-nez v16, :cond_6

    if-eqz v3, :cond_6

    :cond_5
    move v15, v0

    move/from16 v16, v3

    move v11, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    goto :goto_4

    :cond_7
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move/from16 v17, v5

    array-length v0, v2

    if-ne v11, v0, :cond_8

    iget v0, v9, Landroidx/media3/common/TrackGroup;->length:I

    new-array v0, v0, [I

    goto :goto_8

    :cond_8
    aget-object v0, v2, v11

    iget v3, v9, Landroidx/media3/common/TrackGroup;->length:I

    new-array v3, v3, [I

    const/4 v5, 0x0

    :goto_7
    iget v8, v9, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v8, :cond_9

    invoke-virtual {v9, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v8

    invoke-interface {v0, v8}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    move-object v0, v3

    :goto_8
    aget v3, v4, v11

    aget-object v5, v7, v11

    aput-object v9, v5, v3

    aget-object v5, v13, v11

    aput-object v0, v5, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v4, v11

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    goto/16 :goto_2

    :cond_a
    move-object/from16 v18, v0

    move/from16 v17, v5

    array-length v0, v2

    new-array v11, v0, [Landroidx/media3/exoplayer/source/t0;

    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    array-length v3, v2

    new-array v10, v3, [I

    const/4 v3, 0x0

    :goto_9
    array-length v5, v2

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    new-instance v6, Landroidx/media3/exoplayer/source/t0;

    aget-object v8, v7, v3

    invoke-static {v5, v8}, Lk0/C;->S(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v6, v8}, Landroidx/media3/exoplayer/source/t0;-><init>([Landroidx/media3/common/TrackGroup;)V

    aput-object v6, v11, v3

    aget-object v6, v13, v3

    invoke-static {v5, v6}, Lk0/C;->S(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v13, v3

    aget-object v5, v2, v3

    invoke-interface {v5}, Landroidx/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    aget-object v5, v2, v3

    invoke-interface {v5}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v5

    aput v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    array-length v0, v2

    aget v0, v4, v0

    new-instance v14, Landroidx/media3/exoplayer/source/t0;

    array-length v2, v2

    aget-object v2, v7, v2

    invoke-static {v0, v2}, Lk0/C;->S(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v14, v0}, Landroidx/media3/exoplayer/source/t0;-><init>([Landroidx/media3/common/TrackGroup;)V

    new-instance v9, LD0/x;

    invoke-direct/range {v9 .. v14}, LD0/x;-><init>([I[Landroidx/media3/exoplayer/source/t0;[I[[[ILandroidx/media3/exoplayer/source/t0;)V

    move-object/from16 v0, v18

    check-cast v0, LD0/t;

    iget-object v2, v0, LD0/t;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, LD0/t;->g:LD0/l;

    iget-boolean v4, v3, LD0/l;->e:Z

    if-eqz v4, :cond_d

    sget v4, Lk0/C;->a:I

    const/16 v5, 0x20

    if-lt v4, v5, :cond_d

    iget-object v4, v0, LD0/t;->h:LD0/o;

    if-eqz v4, :cond_d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {v5}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v6, v4, LD0/o;->d:LD0/n;

    if-nez v6, :cond_d

    iget-object v6, v4, LD0/o;->c:Landroid/os/Handler;

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    new-instance v6, LD0/n;

    invoke-direct {v6, v0}, LD0/n;-><init>(LD0/t;)V

    iput-object v6, v4, LD0/o;->d:LD0/n;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v4, LD0/o;->c:Landroid/os/Handler;

    iget-object v5, v4, LD0/o;->a:Landroid/media/Spatializer;

    new-instance v7, LG0/j;

    move/from16 v8, v17

    invoke-direct {v7, v8, v6}, LG0/j;-><init>(ILjava/lang/Object;)V

    iget-object v4, v4, LD0/o;->d:LD0/n;

    invoke-static {v5, v7, v4}, LD0/m;->f(Landroid/media/Spatializer;LG0/j;LD0/n;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_54

    :cond_d
    :goto_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, v9, LD0/x;->a:I

    new-array v4, v2, [LD0/u;

    iget-object v5, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v5, v5, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v8, 0x2

    const/4 v6, 0x4

    if-ne v5, v8, :cond_e

    const/4 v5, 0x0

    goto :goto_b

    :cond_e
    new-instance v5, LD0/f;

    const/4 v14, 0x0

    invoke-direct {v5, v3, v14, v12}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v14, LD0/c;

    invoke-direct {v14, v6}, LD0/c;-><init>(I)V

    invoke-static {v8, v9, v13, v5, v14}, LD0/t;->h(ILD0/x;[[[ILD0/q;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v5

    :goto_b
    iget-boolean v14, v3, Landroidx/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    const/16 v16, 0x0

    const/4 v7, 0x3

    if-nez v14, :cond_10

    if-nez v5, :cond_f

    goto :goto_d

    :cond_f
    :goto_c
    move-object/from16 v14, v16

    goto :goto_e

    :cond_10
    :goto_d
    iget-object v14, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v14, v14, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-ne v14, v8, :cond_11

    goto :goto_c

    :cond_11
    new-instance v14, LA3/d;

    invoke-direct {v14, v7, v3}, LA3/d;-><init>(ILjava/lang/Object;)V

    new-instance v15, LD0/c;

    invoke-direct {v15, v8}, LD0/c;-><init>(I)V

    invoke-static {v6, v9, v13, v14, v15}, LD0/t;->h(ILD0/x;[[[ILD0/q;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v14

    :goto_e
    if-eqz v14, :cond_12

    iget-object v5, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, LD0/u;

    aput-object v14, v4, v5

    goto :goto_f

    :cond_12
    if-eqz v5, :cond_13

    iget-object v14, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, LD0/u;

    aput-object v5, v4, v14

    :cond_13
    :goto_f
    const/4 v5, 0x0

    :goto_10
    iget v14, v9, LD0/x;->a:I

    if-ge v5, v14, :cond_15

    aget v14, v10, v5

    if-ne v8, v14, :cond_14

    aget-object v14, v11, v5

    iget v14, v14, Landroidx/media3/exoplayer/source/t0;->a:I

    if-lez v14, :cond_14

    const/4 v5, 0x1

    goto :goto_11

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_15
    const/4 v5, 0x0

    :goto_11
    new-instance v14, LD0/e;

    invoke-direct {v14, v0, v3, v5, v12}, LD0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;)V

    new-instance v5, LD0/c;

    invoke-direct {v5, v7}, LD0/c;-><init>(I)V

    const/4 v12, 0x1

    invoke-static {v12, v9, v13, v14, v5}, LD0/t;->h(ILD0/x;[[[ILD0/q;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v12, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v14, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, LD0/u;

    aput-object v14, v4, v12

    :cond_16
    if-nez v5, :cond_17

    move-object/from16 v5, v16

    goto :goto_12

    :cond_17
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, LD0/u;

    iget-object v12, v5, LD0/u;->a:Landroidx/media3/common/TrackGroup;

    iget-object v5, v5, LD0/u;->b:[I

    const/4 v14, 0x0

    aget v5, v5, v14

    invoke-virtual {v12, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    :goto_12
    iget-object v12, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v12, v12, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-ne v12, v8, :cond_18

    move-object/from16 v5, v16

    goto :goto_13

    :cond_18
    new-instance v12, LD0/f;

    const/4 v14, 0x1

    invoke-direct {v12, v3, v14, v5}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v5, LD0/c;

    const/4 v14, 0x5

    invoke-direct {v5, v14}, LD0/c;-><init>(I)V

    invoke-static {v7, v9, v13, v12, v5}, LD0/t;->h(ILD0/x;[[[ILD0/q;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v5

    :goto_13
    if-eqz v5, :cond_19

    iget-object v12, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, LD0/u;

    aput-object v5, v4, v12

    :cond_19
    const/4 v5, 0x0

    :goto_14
    if-ge v5, v2, :cond_22

    aget v12, v10, v5

    if-eq v12, v8, :cond_21

    const/4 v14, 0x1

    if-eq v12, v14, :cond_21

    if-eq v12, v7, :cond_21

    if-eq v12, v6, :cond_21

    aget-object v12, v11, v5

    aget-object v14, v13, v5

    iget-object v15, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v15, v15, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-ne v15, v8, :cond_1a

    move/from16 v23, v5

    move-object/from16 v24, v10

    :goto_15
    move-object/from16 v5, v16

    goto/16 :goto_1a

    :cond_1a
    move-object/from16 v7, v16

    move-object/from16 v20, v7

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_16
    iget v6, v12, Landroidx/media3/exoplayer/source/t0;->a:I

    if-ge v15, v6, :cond_1f

    invoke-virtual {v12, v15}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    aget-object v21, v14, v15

    move/from16 v23, v5

    move-object/from16 v8, v20

    move/from16 v20, v18

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :goto_17
    iget v5, v6, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v7, v5, :cond_1e

    aget v5, v21, v7

    move-object/from16 v24, v10

    iget-boolean v10, v3, LD0/l;->f:Z

    invoke-static {v5, v10}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    new-instance v10, LD0/j;

    move-object/from16 v25, v6

    aget v6, v21, v7

    invoke-direct {v10, v5, v6}, LD0/j;-><init>(Landroidx/media3/common/Format;I)V

    if-eqz v8, :cond_1b

    sget-object v5, Lp3/y;->a:Lp3/w;

    iget-boolean v6, v10, LD0/j;->q:Z

    move/from16 v26, v7

    iget-boolean v7, v8, LD0/j;->q:Z

    invoke-virtual {v5, v6, v7}, Lp3/w;->c(ZZ)Lp3/y;

    move-result-object v5

    iget-boolean v6, v10, LD0/j;->b:Z

    iget-boolean v7, v8, LD0/j;->b:Z

    invoke-virtual {v5, v6, v7}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v5

    invoke-virtual {v5}, Lp3/y;->e()I

    move-result v5

    if-lez v5, :cond_1d

    goto :goto_18

    :cond_1b
    move/from16 v26, v7

    :goto_18
    move-object v8, v10

    move-object/from16 v18, v25

    move/from16 v20, v26

    goto :goto_19

    :cond_1c
    move-object/from16 v25, v6

    move/from16 v26, v7

    :cond_1d
    :goto_19
    add-int/lit8 v7, v26, 0x1

    move-object/from16 v10, v24

    move-object/from16 v6, v25

    goto :goto_17

    :cond_1e
    move-object/from16 v24, v10

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v18

    move/from16 v18, v20

    move/from16 v5, v23

    move-object/from16 v20, v8

    const/4 v8, 0x2

    goto :goto_16

    :cond_1f
    move/from16 v23, v5

    move-object/from16 v24, v10

    if-nez v7, :cond_20

    goto :goto_15

    :cond_20
    new-instance v5, LD0/u;

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v6

    const/4 v14, 0x0

    invoke-direct {v5, v14, v7, v6}, LD0/u;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    :goto_1a
    aput-object v5, v4, v23

    goto :goto_1b

    :cond_21
    move/from16 v23, v5

    move-object/from16 v24, v10

    :goto_1b
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v10, v24

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_14

    :cond_22
    iget v5, v9, LD0/x;->a:I

    iget-object v6, v9, LD0/x;->c:[Landroidx/media3/exoplayer/source/t0;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v5, :cond_23

    aget-object v10, v6, v8

    invoke-static {v10, v3, v7}, LD0/t;->b(Landroidx/media3/exoplayer/source/t0;LD0/l;Ljava/util/HashMap;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_23
    iget-object v8, v9, LD0/x;->f:Landroidx/media3/exoplayer/source/t0;

    invoke-static {v8, v3, v7}, LD0/t;->b(Landroidx/media3/exoplayer/source/t0;LD0/l;Ljava/util/HashMap;)V

    const/4 v8, 0x0

    :goto_1d
    const/4 v10, -0x1

    if-ge v8, v5, :cond_26

    iget-object v11, v9, LD0/x;->b:[I

    aget v11, v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/TrackSelectionOverride;

    if-nez v11, :cond_24

    goto :goto_1f

    :cond_24
    iget-object v12, v11, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lp3/H;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_25

    aget-object v12, v6, v8

    iget-object v14, v11, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v12, v14}, Landroidx/media3/exoplayer/source/t0;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v12

    if-eq v12, v10, :cond_25

    new-instance v10, LD0/u;

    iget-object v12, v11, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v11, v11, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lp3/H;

    invoke-static {v11}, La/a;->O(Ljava/util/Collection;)[I

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct {v10, v14, v12, v11}, LD0/u;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    goto :goto_1e

    :cond_25
    move-object/from16 v10, v16

    :goto_1e
    aput-object v10, v4, v8

    :goto_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_26
    iget v5, v9, LD0/x;->a:I

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_2a

    iget-object v7, v9, LD0/x;->c:[Landroidx/media3/exoplayer/source/t0;

    aget-object v7, v7, v6

    iget-object v8, v3, LD0/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_29

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    iget-object v8, v3, LD0/l;->h:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_28

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_27

    goto :goto_21

    :cond_27
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_28
    :goto_21
    aput-object v16, v4, v6

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_2a
    const/4 v5, 0x0

    :goto_22
    if-ge v5, v2, :cond_2d

    iget-object v6, v9, LD0/x;->b:[I

    aget v6, v6, v5

    iget-object v7, v3, LD0/l;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, v3, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lp3/L;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lp3/C;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    :cond_2b
    aput-object v16, v4, v5

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_2d
    iget-object v5, v0, LD0/t;->e:Lx2/f;

    iget-object v0, v0, LD0/C;->b:LE0/e;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_23
    array-length v7, v4

    const-wide/16 v11, 0x0

    if-ge v6, v7, :cond_2f

    aget-object v7, v4, v6

    if-eqz v7, :cond_2e

    iget-object v7, v7, LD0/u;->b:[I

    array-length v7, v7

    const/4 v14, 0x1

    if-le v7, v14, :cond_2e

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v7

    new-instance v8, LD0/a;

    invoke-direct {v8, v11, v12, v11, v12}, LD0/a;-><init>(JJ)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v16

    goto :goto_24

    :cond_2e
    move-object/from16 v7, v16

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_24
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v7

    goto :goto_23

    :cond_2f
    move-object/from16 v7, v16

    array-length v6, v4

    new-array v8, v6, [[J

    const/4 v14, 0x0

    :goto_25
    array-length v15, v4

    const-wide/16 v18, -0x1

    if-ge v14, v15, :cond_33

    aget-object v15, v4, v14

    if-nez v15, :cond_30

    const/4 v7, 0x0

    new-array v15, v7, [J

    aput-object v15, v8, v14

    move-object v12, v8

    goto :goto_27

    :cond_30
    iget-object v7, v15, LD0/u;->b:[I

    array-length v11, v7

    new-array v11, v11, [J

    aput-object v11, v8, v14

    const/4 v11, 0x0

    :goto_26
    array-length v12, v7

    if-ge v11, v12, :cond_32

    iget-object v12, v15, LD0/u;->a:Landroidx/media3/common/TrackGroup;

    aget v10, v7, v11

    invoke-virtual {v12, v10}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/Format;->bitrate:I

    move-object/from16 v21, v7

    move-object v12, v8

    int-to-long v7, v10

    aget-object v10, v12, v14

    cmp-long v25, v7, v18

    if-nez v25, :cond_31

    const-wide/16 v7, 0x0

    :cond_31
    aput-wide v7, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object v8, v12

    move-object/from16 v7, v21

    const/4 v10, -0x1

    goto :goto_26

    :cond_32
    move-object v12, v8

    aget-object v7, v12, v14

    invoke-static {v7}, Ljava/util/Arrays;->sort([J)V

    :goto_27
    add-int/lit8 v14, v14, 0x1

    move-object v8, v12

    const/4 v7, 0x0

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    goto :goto_25

    :cond_33
    move-object v12, v8

    new-array v7, v6, [I

    new-array v8, v6, [J

    const/4 v10, 0x0

    :goto_28
    if-ge v10, v6, :cond_35

    aget-object v11, v12, v10

    array-length v14, v11

    if-nez v14, :cond_34

    const-wide/16 v25, 0x0

    goto :goto_29

    :cond_34
    const/4 v14, 0x0

    aget-wide v25, v11, v14

    :goto_29
    aput-wide v25, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_35
    invoke-static {v5, v8}, LD0/b;->u(Ljava/util/ArrayList;[J)V

    const-string v10, "expectedValuesPerKey"

    const/4 v11, 0x2

    invoke-static {v11, v10}, Lp3/q;->c(ILjava/lang/String;)V

    new-instance v10, Ljava/util/TreeMap;

    sget-object v14, Lp3/W;->q:Lp3/W;

    invoke-direct {v10, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v14, Lp3/U;

    invoke-direct {v14}, Lp3/U;-><init>()V

    new-instance v15, Lp3/V;

    invoke-direct {v15, v10}, Lp3/V;-><init>(Ljava/util/Map;)V

    iput-object v14, v15, Lp3/V;->u:Lp3/U;

    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v6, :cond_3e

    aget-object v14, v12, v10

    array-length v11, v14

    move-object/from16 v26, v0

    const/4 v0, 0x1

    if-gt v11, v0, :cond_37

    move/from16 v23, v6

    move-object/from16 v27, v7

    :cond_36
    move/from16 v31, v10

    goto/16 :goto_31

    :cond_37
    array-length v0, v14

    new-array v11, v0, [D

    move/from16 v21, v0

    const/4 v14, 0x0

    :goto_2b
    aget-object v0, v12, v10

    move/from16 v23, v6

    array-length v6, v0

    const-wide/16 v24, 0x0

    if-ge v14, v6, :cond_39

    move-object/from16 v27, v7

    aget-wide v6, v0, v14

    cmp-long v0, v6, v18

    if-nez v0, :cond_38

    goto :goto_2c

    :cond_38
    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v24

    :goto_2c
    aput-wide v24, v11, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v23

    move-object/from16 v7, v27

    goto :goto_2b

    :cond_39
    move-object/from16 v27, v7

    add-int/lit8 v0, v21, -0x1

    aget-wide v6, v11, v0

    const/4 v14, 0x0

    aget-wide v28, v11, v14

    sub-double v6, v6, v28

    const/4 v14, 0x0

    :goto_2d
    if-ge v14, v0, :cond_36

    aget-wide v28, v11, v14

    add-int/lit8 v14, v14, 0x1

    aget-wide v30, v11, v14

    add-double v28, v28, v30

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    cmpl-double v21, v6, v24

    if-nez v21, :cond_3a

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    :goto_2e
    move/from16 v21, v0

    goto :goto_2f

    :cond_3a
    const/16 v21, 0x0

    aget-wide v30, v11, v21

    sub-double v28, v28, v30

    div-double v28, v28, v6

    goto :goto_2e

    :goto_2f
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-wide/from16 v28, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v15, Lp3/V;->s:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move/from16 v31, v10

    move-object/from16 v10, v30

    check-cast v10, Ljava/util/Collection;

    if-nez v10, :cond_3c

    invoke-virtual {v15}, Lp3/V;->c()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget v6, v15, Lp3/V;->t:I

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v15, Lp3/V;->t:I

    invoke-interface {v7, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "New Collection violated the Collection spec"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3c
    const/16 v17, 0x1

    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v0, v15, Lp3/V;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v15, Lp3/V;->t:I

    :cond_3d
    :goto_30
    move/from16 v0, v21

    move-wide/from16 v6, v28

    move/from16 v10, v31

    goto :goto_2d

    :goto_31
    add-int/lit8 v10, v31, 0x1

    move/from16 v6, v23

    move-object/from16 v0, v26

    move-object/from16 v7, v27

    const/4 v11, 0x2

    goto/16 :goto_2a

    :cond_3e
    move-object/from16 v26, v0

    move-object/from16 v27, v7

    iget-object v0, v15, Lp3/o;->q:Lp3/n;

    if-nez v0, :cond_3f

    new-instance v0, Lp3/n;

    const/4 v14, 0x0

    invoke-direct {v0, v14, v15}, Lp3/n;-><init>(ILjava/io/Serializable;)V

    iput-object v0, v15, Lp3/o;->q:Lp3/n;

    :cond_3f
    invoke-static {v0}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object v0

    const/4 v6, 0x0

    :goto_32
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-ge v6, v7, :cond_40

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v10, v27, v7

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v27, v7

    aget-object v11, v12, v7

    aget-wide v10, v11, v10

    aput-wide v10, v8, v7

    invoke-static {v5, v8}, LD0/b;->u(Ljava/util/ArrayList;[J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_40
    const/4 v0, 0x0

    :goto_33
    array-length v6, v4

    if-ge v0, v6, :cond_42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_41

    aget-wide v6, v8, v0

    const-wide/16 v10, 0x2

    mul-long/2addr v6, v10

    aput-wide v6, v8, v0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_42
    invoke-static {v5, v8}, LD0/b;->u(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v0

    const/4 v6, 0x0

    :goto_34
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_44

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp3/E;

    if-nez v7, :cond_43

    sget-object v7, Lp3/Y;->t:Lp3/Y;

    goto :goto_35

    :cond_43
    invoke-virtual {v7}, Lp3/E;->i()Lp3/Y;

    move-result-object v7

    :goto_35
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_44
    invoke-virtual {v0}, Lp3/E;->i()Lp3/Y;

    move-result-object v0

    array-length v5, v4

    new-array v5, v5, [LD0/v;

    const/4 v6, 0x0

    :goto_36
    array-length v7, v4

    if-ge v6, v7, :cond_48

    aget-object v7, v4, v6

    if-eqz v7, :cond_47

    iget-object v8, v7, LD0/u;->b:[I

    array-length v10, v8

    if-nez v10, :cond_45

    goto :goto_38

    :cond_45
    array-length v10, v8

    const/4 v14, 0x1

    if-ne v10, v14, :cond_46

    new-instance v10, LD0/w;

    iget-object v7, v7, LD0/u;->a:Landroidx/media3/common/TrackGroup;

    const/4 v14, 0x0

    aget v8, v8, v14

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-direct {v10, v7, v8}, LD0/d;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    goto :goto_37

    :cond_46
    iget-object v7, v7, LD0/u;->a:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, v6}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v33, v10

    check-cast v33, Lp3/H;

    new-instance v23, LD0/b;

    const/16 v10, 0x2710

    int-to-long v10, v10

    const/16 v12, 0x61a8

    int-to-long v14, v12

    move-wide/from16 v31, v14

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide/from16 v27, v10

    move-wide/from16 v29, v14

    invoke-direct/range {v23 .. v33}, LD0/b;-><init>(Landroidx/media3/common/TrackGroup;[ILE0/e;JJJLp3/H;)V

    move-object/from16 v10, v23

    :goto_37
    aput-object v10, v5, v6

    :cond_47
    :goto_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_48
    new-array v0, v2, [Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v4, 0x0

    :goto_39
    const/4 v6, -0x2

    if-ge v4, v2, :cond_4c

    iget-object v7, v9, LD0/x;->b:[I

    aget v7, v7, v4

    iget-object v8, v3, LD0/l;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_4b

    iget-object v8, v3, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lp3/L;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lp3/C;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    goto :goto_3a

    :cond_49
    iget-object v7, v9, LD0/x;->b:[I

    aget v7, v7, v4

    if-eq v7, v6, :cond_4a

    aget-object v6, v5, v4

    if-eqz v6, :cond_4b

    :cond_4a
    sget-object v6, Landroidx/media3/exoplayer/RendererConfiguration;->DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;

    goto :goto_3b

    :cond_4b
    :goto_3a
    const/4 v6, 0x0

    :goto_3b
    aput-object v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4c
    iget-object v2, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v2, v2, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-eqz v2, :cond_52

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v14, 0x0

    :goto_3c
    iget v7, v9, LD0/x;->a:I

    if-ge v14, v7, :cond_4f

    iget-object v7, v9, LD0/x;->b:[I

    aget v7, v7, v14

    aget-object v8, v5, v14

    const/4 v12, 0x1

    if-eq v7, v12, :cond_4d

    if-eqz v8, :cond_4d

    goto :goto_3f

    :cond_4d
    if-ne v7, v12, :cond_4e

    if-eqz v8, :cond_4e

    invoke-interface {v8}, LD0/v;->length()I

    move-result v7

    if-ne v7, v12, :cond_4e

    iget-object v7, v9, LD0/x;->c:[Landroidx/media3/exoplayer/source/t0;

    aget-object v7, v7, v14

    invoke-interface {v8}, LD0/v;->d()Landroidx/media3/common/TrackGroup;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroidx/media3/exoplayer/source/t0;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v7

    aget-object v10, v13, v14

    aget-object v7, v10, v7

    const/4 v10, 0x0

    invoke-interface {v8, v10}, LD0/v;->j(I)I

    move-result v11

    aget v7, v7, v11

    invoke-interface {v8}, LD0/v;->m()Landroidx/media3/common/Format;

    move-result-object v8

    invoke-static {v3, v7, v8}, LD0/t;->g(LD0/l;ILandroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_4e

    add-int/lit8 v2, v2, 0x1

    move v4, v14

    :cond_4e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3c

    :cond_4f
    const/4 v14, 0x1

    if-ne v2, v14, :cond_52

    new-instance v2, Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v3, v3, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    if-eqz v3, :cond_50

    const/4 v8, 0x1

    goto :goto_3d

    :cond_50
    const/4 v8, 0x2

    :goto_3d
    aget-object v3, v0, v4

    if-eqz v3, :cond_51

    iget-boolean v3, v3, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-eqz v3, :cond_51

    const/4 v3, 0x1

    goto :goto_3e

    :cond_51
    const/4 v3, 0x0

    :goto_3e
    invoke-direct {v2, v8, v3}, Landroidx/media3/exoplayer/RendererConfiguration;-><init>(IZ)V

    aput-object v2, v0, v4

    :cond_52
    :goto_3f
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [LD0/v;

    array-length v3, v2

    new-array v3, v3, [Ljava/util/List;

    const/4 v14, 0x0

    :goto_40
    array-length v4, v2

    if-ge v14, v4, :cond_54

    aget-object v4, v2, v14

    if-eqz v4, :cond_53

    invoke-static {v4}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v4

    goto :goto_41

    :cond_53
    sget-object v4, Lp3/H;->q:Lp3/F;

    sget-object v4, Lp3/Y;->t:Lp3/Y;

    :goto_41
    aput-object v4, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_40

    :cond_54
    new-instance v2, Lp3/E;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/play_billing/w;-><init>(I)V

    const/4 v14, 0x0

    :goto_42
    iget v4, v9, LD0/x;->a:I

    iget-object v5, v9, LD0/x;->c:[Landroidx/media3/exoplayer/source/t0;

    if-ge v14, v4, :cond_60

    aget-object v4, v5, v14

    aget-object v7, v3, v14

    const/4 v8, 0x0

    :goto_43
    iget v10, v4, Landroidx/media3/exoplayer/source/t0;->a:I

    if-ge v8, v10, :cond_5f

    invoke-virtual {v4, v8}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v10

    aget-object v11, v5, v14

    invoke-virtual {v11, v8}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v11

    iget v11, v11, Landroidx/media3/common/TrackGroup;->length:I

    new-array v12, v11, [I

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_44
    if-ge v13, v11, :cond_56

    iget-object v6, v9, LD0/x;->e:[[[I

    aget-object v6, v6, v14

    aget-object v6, v6, v8

    aget v6, v6, v13

    invoke-static {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v6

    move-object/from16 v19, v3

    const/4 v3, 0x4

    if-eq v6, v3, :cond_55

    goto :goto_45

    :cond_55
    add-int/lit8 v6, v15, 0x1

    aput v13, v12, v15

    move v15, v6

    :goto_45
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v19

    const/4 v6, -0x2

    goto :goto_44

    :cond_56
    move-object/from16 v19, v3

    const/4 v3, 0x4

    invoke-static {v12, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    const/16 v11, 0x10

    move-object/from16 v21, v4

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_46
    array-length v4, v6

    if-ge v12, v4, :cond_58

    aget v4, v6, v12

    move-object/from16 v22, v5

    aget-object v5, v22, v14

    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    add-int/lit8 v5, v15, 0x1

    if-nez v15, :cond_57

    move-object v3, v4

    const/16 v17, 0x1

    goto :goto_47

    :cond_57
    sget v15, Lk0/C;->a:I

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v13

    move v13, v4

    :goto_47
    iget-object v4, v9, LD0/x;->e:[[[I

    aget-object v4, v4, v14

    aget-object v4, v4, v8

    aget v4, v4, v12

    invoke-static {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->getAdaptiveSupport(I)I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v12, 0x1

    move v15, v5

    move-object/from16 v5, v22

    goto :goto_46

    :cond_58
    move-object/from16 v22, v5

    const/16 v17, 0x1

    if-eqz v13, :cond_59

    iget-object v3, v9, LD0/x;->d:[I

    aget v3, v3, v14

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_59
    if-eqz v11, :cond_5a

    move/from16 v3, v17

    goto :goto_48

    :cond_5a
    const/4 v3, 0x0

    :goto_48
    iget v4, v10, Landroidx/media3/common/TrackGroup;->length:I

    new-array v5, v4, [I

    new-array v4, v4, [Z

    const/4 v6, 0x0

    :goto_49
    iget v11, v10, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v6, v11, :cond_5e

    iget-object v11, v9, LD0/x;->e:[[[I

    aget-object v11, v11, v14

    aget-object v11, v11, v8

    aget v11, v11, v6

    invoke-static {v11}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v11

    aput v11, v5, v6

    const/4 v11, 0x0

    :goto_4a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_5d

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LD0/v;

    invoke-interface {v12}, LD0/v;->d()Landroidx/media3/common/TrackGroup;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    invoke-interface {v12, v6}, LD0/v;->t(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5c

    move/from16 v11, v17

    goto :goto_4b

    :cond_5b
    const/4 v13, -0x1

    :cond_5c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4a

    :cond_5d
    const/4 v13, -0x1

    const/4 v11, 0x0

    :goto_4b
    aput-boolean v11, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_5e
    const/4 v13, -0x1

    new-instance v6, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v6, v10, v3, v5, v4}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    const/4 v6, -0x2

    goto/16 :goto_43

    :cond_5f
    move-object/from16 v19, v3

    const/4 v13, -0x1

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v6, -0x2

    goto/16 :goto_42

    :cond_60
    const/16 v17, 0x1

    iget-object v3, v9, LD0/x;->f:Landroidx/media3/exoplayer/source/t0;

    const/4 v14, 0x0

    :goto_4c
    iget v4, v3, Landroidx/media3/exoplayer/source/t0;->a:I

    if-ge v14, v4, :cond_61

    invoke-virtual {v3, v14}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    iget v5, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v5, v5, [I

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    iget v6, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v6, v6, [Z

    new-instance v8, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v8, v4, v7, v5, v6}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4c

    :cond_61
    const/4 v7, 0x0

    new-instance v3, Landroidx/media3/common/Tracks;

    invoke-virtual {v2}, Lp3/E;->i()Lp3/Y;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    new-instance v2, LD0/D;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [LD0/v;

    invoke-direct {v2, v4, v0, v3, v9}, LD0/D;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[LD0/v;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    move v14, v7

    :goto_4d
    iget v0, v2, LD0/D;->a:I

    if-ge v14, v0, :cond_66

    invoke-virtual {v2, v14}, LD0/D;->b(I)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, v2, LD0/D;->c:[LD0/v;

    aget-object v0, v0, v14

    if-nez v0, :cond_63

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v0, v0, v14

    invoke-interface {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_62

    goto :goto_4e

    :cond_62
    move v8, v7

    goto :goto_4f

    :cond_63
    const/4 v3, -0x2

    :goto_4e
    move/from16 v8, v17

    :goto_4f
    invoke-static {v8}, Lk0/c;->j(Z)V

    goto :goto_51

    :cond_64
    const/4 v3, -0x2

    iget-object v0, v2, LD0/D;->c:[LD0/v;

    aget-object v0, v0, v14

    if-nez v0, :cond_65

    move/from16 v8, v17

    goto :goto_50

    :cond_65
    move v8, v7

    :goto_50
    invoke-static {v8}, Lk0/c;->j(Z)V

    :goto_51
    add-int/lit8 v14, v14, 0x1

    goto :goto_4d

    :cond_66
    iget-object v0, v2, LD0/D;->c:[LD0/v;

    array-length v3, v0

    move v8, v7

    :goto_52
    if-ge v8, v3, :cond_68

    aget-object v4, v0, v8

    move/from16 v5, p1

    if-eqz v4, :cond_67

    invoke-interface {v4, v5}, LD0/v;->p(F)V

    move/from16 v6, p3

    invoke-interface {v4, v6}, LD0/v;->g(Z)V

    goto :goto_53

    :cond_67
    move/from16 v6, p3

    :goto_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_68
    return-object v2

    :goto_54
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setNext(Landroidx/media3/exoplayer/MediaPeriodHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    return-void
.end method

.method public setRendererOffset(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-void
.end method

.method public toPeriodTime(J)J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public toRendererTime(J)J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public updateClipping()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/C;

    instance-of v1, v0, Landroidx/media3/exoplayer/source/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/source/d;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroidx/media3/exoplayer/source/d;->t:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/d;->u:J

    :cond_1
    return-void
.end method
