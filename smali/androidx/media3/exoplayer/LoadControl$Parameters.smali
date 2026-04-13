.class public final Landroidx/media3/exoplayer/LoadControl$Parameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/LoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final bufferedDurationUs:J

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/E;

.field public final playWhenReady:Z

.field public final playbackPositionUs:J

.field public final playbackSpeed:F

.field public final playerId:Lq0/q;

.field public final rebuffering:Z

.field public final targetLiveOffsetUs:J

.field public final timeline:Landroidx/media3/common/Timeline;


# direct methods
.method public constructor <init>(Lq0/q;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/E;JJFZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playerId:Lq0/q;

    iput-object p2, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->timeline:Landroidx/media3/common/Timeline;

    iput-object p3, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->mediaPeriodId:Landroidx/media3/exoplayer/source/E;

    iput-wide p4, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackPositionUs:J

    iput-wide p6, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iput p8, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    iput-boolean p9, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->playWhenReady:Z

    iput-boolean p10, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    iput-wide p11, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    return-void
.end method
