.class final Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;
.super Ljava/lang/Object;

# interfaces
.implements LG0/x;
.implements LH0/a;
.implements Landroidx/media3/exoplayer/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameMetadataListener"
.end annotation


# static fields
.field public static final MSG_SET_CAMERA_MOTION_LISTENER:I = 0x8

.field public static final MSG_SET_SPHERICAL_SURFACE_VIEW:I = 0x2710

.field public static final MSG_SET_VIDEO_FRAME_METADATA_LISTENER:I = 0x7


# instance fields
.field private cameraMotionListener:LH0/a;

.field private internalCameraMotionListener:LH0/a;

.field private internalVideoFrameMetadataListener:LG0/x;

.field private videoFrameMetadataListener:LG0/x;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, LH0/l;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:LG0/x;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:LH0/a;

    return-void

    :cond_1
    invoke-virtual {p2}, LH0/l;->getVideoFrameMetadataListener()LG0/x;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:LG0/x;

    invoke-virtual {p2}, LH0/l;->getCameraMotionListener()LH0/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:LH0/a;

    return-void

    :cond_2
    check-cast p2, LH0/a;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:LH0/a;

    return-void

    :cond_3
    check-cast p2, LG0/x;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:LG0/x;

    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:LH0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, LH0/a;->onCameraMotion(J[F)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:LH0/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, LH0/a;->onCameraMotion(J[F)V

    :cond_1
    return-void
.end method

.method public onCameraMotionReset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:LH0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LH0/a;->onCameraMotionReset()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:LH0/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LH0/a;->onCameraMotionReset()V

    :cond_1
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:LG0/x;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, LG0/x;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    move-object v7, v6

    move-object v6, v5

    move-wide v4, v3

    move-wide v2, v1

    goto :goto_0

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:LG0/x;

    if-eqz v1, :cond_1

    invoke-interface/range {v1 .. v7}, LG0/x;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method
