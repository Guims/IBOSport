.class public final Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaItemData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    }
.end annotation


# instance fields
.field public final defaultPositionUs:J

.field public final durationUs:J

.field public final elapsedRealtimeEpochOffsetMs:J

.field public final isDynamic:Z

.field public final isPlaceholder:Z

.field public final isSeekable:Z

.field public final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public final manifest:Ljava/lang/Object;

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final periodPositionInWindowUs:[J

.field public final periods:Lp3/H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/H;"
        }
    .end annotation
.end field

.field public final positionInFirstPeriodUs:J

.field public final presentationStartTimeMs:J

.field public final tracks:Landroidx/media3/common/Tracks;

.field public final uid:Ljava/lang/Object;

.field public final windowStartTimeMs:J


# direct methods
.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v5, "presentationStartTimeMs can only be set if liveConfiguration != null"

    invoke-static {v5, v0}, Lk0/c;->c(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const-string v5, "windowStartTimeMs can only be set if liveConfiguration != null"

    invoke-static {v5, v0}, Lk0/c;->c(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    const-string v5, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null"

    invoke-static {v5, v0}, Lk0/c;->c(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_3
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    const-string v5, "windowStartTimeMs can\'t be less than presentationStartTimeMs"

    invoke-static {v5, v0}, Lk0/c;->c(Ljava/lang/String;Z)V

    :cond_5
    :goto_4
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Lp3/H;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5800(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gtz v1, :cond_6

    move v1, v4

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    const-string v2, "defaultPositionUs can\'t be greater than durationUs"

    invoke-static {v2, v1}, Lk0/c;->c(Ljava/lang/String;Z)V

    :cond_7
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5900(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6000(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/Tracks;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6100(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6200(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5800(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    neg-long v1, v1

    aput-wide v1, v5, v3

    :goto_6
    add-int/lit8 p1, v0, -0x1

    if-ge v3, p1, :cond_8

    iget-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    add-int/lit8 v1, v3, 0x1

    aget-wide v5, p1, v3

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-wide v2, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    add-long/2addr v5, v2

    aput-wide v5, p1, v1

    move v3, v1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;-><init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)V

    return-void
.end method

.method public static synthetic access$4700(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->buildFromState(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4800(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->getPeriodUid(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4900(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$5000(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;IILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->getPeriod(IILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method private static buildFromState(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 6

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->access$6900(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2, p1, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object p1

    iget v2, p3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_1
    iget v3, p3, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3, v2, p2, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    new-instance v3, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    iget-object v4, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;-><init>(Ljava/lang/Object;)V

    iget-object v4, p2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v3, v4}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->setAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    move-result-object v3

    iget-wide v4, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->setDurationUs(J)Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    move-result-object v3

    iget-boolean v4, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    invoke-virtual {v3, v4}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    iget-object v1, p3, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-direct {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    iget-wide v1, p3, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-virtual {p2, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setDefaultPositionUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-wide v1, p3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-virtual {p2, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setDurationUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-wide v1, p3, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    invoke-virtual {p2, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setElapsedRealtimeEpochOffsetMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-boolean v1, p3, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsDynamic(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-boolean v1, p3, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-boolean v1, p3, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsSeekable(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-object v1, p3, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-object v1, p3, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setManifest(Ljava/lang/Object;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    iget-object v1, p3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lp3/E;->i()Lp3/Y;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setPeriods(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p1

    iget-wide v1, p3, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setPositionInFirstPeriodUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p1

    iget-wide v1, p3, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setPresentationStartTimeMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p1

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    goto :goto_3

    :cond_3
    sget-object p0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :goto_3
    invoke-virtual {p1, p0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    iget-wide p1, p3, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setWindowStartTimeMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object p0

    return-object p0
.end method

.method private getPeriod(IILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-wide v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v5, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    add-long v7, v1, v5

    sget-object v11, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-boolean v12, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    const-wide/16 v9, 0x0

    move-object v5, v4

    move/from16 v6, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v12}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    return-object p3

    :cond_0
    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-object v14, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-static {v3, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    iget-wide v3, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    iget-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    aget-wide v19, v5, v1

    iget-object v1, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-boolean v2, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    move/from16 v16, p1

    move-object/from16 v13, p3

    move-object/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v17, v3

    invoke-virtual/range {v13 .. v22}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    return-object p3
.end method

.method private getPeriodUid(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-object p1, p1, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    move v3, v2

    :goto_0
    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    move v4, v3

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    move v5, v4

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    move v7, v5

    iget-wide v5, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    move v9, v7

    iget-wide v7, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    move v11, v9

    iget-wide v9, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    move v12, v11

    iget-boolean v11, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    move v13, v12

    iget-boolean v12, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    move v14, v13

    iget-object v13, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    move/from16 v16, v14

    iget-wide v14, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    move/from16 v17, v1

    move-object/from16 v18, v2

    iget-wide v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    add-int v17, p1, v17

    add-int/lit8 v19, v17, -0x1

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    move-wide/from16 v20, v1

    move-object/from16 v2, v18

    move/from16 v18, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v21}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    iget-boolean v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iput-boolean v2, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object v1
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    sget v4, Lk0/C;->a:I

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    iget-object p1, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-virtual {v1, p1}, Lp3/H;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lp3/H;

    invoke-virtual {v1}, Lp3/H;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
