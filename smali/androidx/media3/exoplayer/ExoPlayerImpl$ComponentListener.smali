.class final Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;

# interfaces
.implements LG0/I;
.implements Lr0/l;
.implements LC0/f;
.implements Lz0/b;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements LH0/k;
.implements Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;
.implements Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;
.implements Landroidx/media3/exoplayer/StreamVolumeManager$Listener;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

.method public static synthetic a(IZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onStreamVolumeChanged$7(IZLandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onCues$2(Ljava/util/List;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/common/Metadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onMetadata$5(Landroidx/media3/common/Metadata;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic d(Lj0/c;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onCues$3(Lj0/c;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/common/VideoSize;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onVideoSizeChanged$0(Landroidx/media3/common/VideoSize;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/common/DeviceInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onStreamTypeChanged$6(Landroidx/media3/common/DeviceInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic g(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onSkipSilenceEnabledChanged$1(ZLandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onMetadata$4(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private static synthetic lambda$onCues$2(Ljava/util/List;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$onCues$3(Lj0/c;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Lj0/c;)V

    return-void
.end method

.method private synthetic lambda$onMetadata$4(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method private static synthetic lambda$onMetadata$5(Landroidx/media3/common/Metadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method private static synthetic lambda$onSkipSilenceEnabledChanged$1(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$onStreamTypeChanged$6(Landroidx/media3/common/DeviceInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method private static synthetic lambda$onStreamVolumeChanged$7(IZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method private static synthetic lambda$onVideoSizeChanged$0(Landroidx/media3/common/VideoSize;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2200(I)I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2300(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2300(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/d;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lq0/d;-><init>(I)V

    const/16 v2, 0x405

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object p2

    new-instance p3, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 p4, 0x15

    invoke-direct {p3, p4}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 p4, 0x3f0

    invoke-virtual {p1, p2, p4, p3}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/f;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v2, 0x3f4

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    iget-object v0, p1, Lq0/j;->s:Lq0/i;

    iget-object v0, v0, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p1, v0}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lq0/d;-><init>(I)V

    const/16 v2, 0x3f5

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1102(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1002(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1002(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lq0/h;-><init>(I)V

    const/16 v2, 0x3ef

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 2

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1102(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object p2

    new-instance v0, Lq0/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0x3f1

    invoke-virtual {p1, p2, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object p2

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v1, 0x3f2

    invoke-virtual {p1, p2, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/d;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lq0/d;-><init>(I)V

    const/16 v2, 0x3f6

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioTrackInitialized(Lr0/m;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/d;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lq0/d;-><init>(I)V

    const/16 v2, 0x407

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioTrackReleased(Lr0/m;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/d;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lq0/d;-><init>(I)V

    const/16 v2, 0x408

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object p2

    new-instance p3, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 p4, 0xf

    invoke-direct {p3, p4}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 p4, 0x3f3

    invoke-virtual {p1, p2, p4, p3}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onCues(Lj0/c;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1302(Landroidx/media3/exoplayer/ExoPlayerImpl;Lj0/c;)Lj0/c;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/l;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/l;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lk0/q;->f(ILk0/n;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj0/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/l;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/l;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lk0/q;->f(ILk0/n;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    iget-object p2, p1, Lq0/j;->s:Lq0/i;

    iget-object p2, p2, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p1, p2}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p2

    new-instance p3, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v0, 0x18

    invoke-direct {p3, v0}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v0, 0x3fa

    invoke-virtual {p1, p2, v0, p3}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaMetadata$Builder;->populateFromMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1402(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/l;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Landroidx/media3/exoplayer/l;-><init>(ILjava/lang/Object;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lk0/q;->c(ILk0/n;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/l;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/l;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lk0/q;->c(ILk0/n;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object p1

    invoke-virtual {p1}, Lk0/q;->b()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/j;

    invoke-virtual {v0}, Lq0/j;->e()Lq0/b;

    move-result-object v1

    new-instance v2, Lq0/f;

    invoke-direct {v2, v1, p1, p2, p3}, Lq0/f;-><init>(Lq0/b;Ljava/lang/Object;J)V

    const/16 p2, 0x1a

    invoke-virtual {v0, v1, p2, v2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$900(Landroidx/media3/exoplayer/ExoPlayerImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object p1

    new-instance p3, Landroidx/media3/common/d;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/media3/common/d;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lk0/q;->f(ILk0/n;)V

    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1200(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1202(Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/n;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/n;-><init>(IZ)V

    const/16 p1, 0x17

    invoke-virtual {v0, p1, v1}, Lk0/q;->f(ILk0/n;)V

    return-void
.end method

.method public onSleepingForOffloadChanged(Z)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2700(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/StreamVolumeManager;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2500(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/DeviceInfo;)Landroidx/media3/common/DeviceInfo;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/l;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/l;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0x1d

    invoke-virtual {v0, p1, v1}, Lk0/q;->f(ILk0/n;)V

    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/v;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/v;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Lk0/q;->f(ILk0/n;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2000(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v2, 0x406

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/j;

    invoke-virtual {v0}, Lq0/j;->e()Lq0/b;

    move-result-object v2

    new-instance v1, Lib/player/base/c;

    move-object v3, p1

    move-wide v6, p2

    move-wide v4, p4

    invoke-direct/range {v1 .. v7}, Lib/player/base/c;-><init>(Lq0/b;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {v0, v2, p1, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/f;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/impl/async/f;-><init>(I)V

    const/16 v2, 0x3fb

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/j;

    iget-object v1, v0, Lq0/j;->s:Lq0/i;

    iget-object v1, v1, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {v0, v1}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object v1

    new-instance v2, Lp2/f;

    const/4 v3, 0x4

    invoke-direct {v2, v1, p1, v3}, Lp2/f;-><init>(Lq0/b;Ljava/lang/Object;I)V

    const/16 p1, 0x3fc

    invoke-virtual {v0, v1, p1, v2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$402(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$402(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object v0

    new-instance v1, Lq0/d;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lq0/d;-><init>(I)V

    const/16 v2, 0x3f7

    invoke-virtual {p1, v0, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    iget-object p2, p1, Lq0/j;->s:Lq0/i;

    iget-object p2, p2, Lq0/i;->e:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p1, p2}, Lq0/j;->c(Landroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p2

    new-instance p3, Lq0/d;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lq0/d;-><init>(I)V

    const/16 v0, 0x3fd

    invoke-virtual {p1, p2, v0, p3}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 2

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lq0/a;

    move-result-object p1

    check-cast p1, Lq0/j;

    invoke-virtual {p1}, Lq0/j;->e()Lq0/b;

    move-result-object p2

    new-instance v0, Lq0/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lq0/d;-><init>(I)V

    const/16 v1, 0x3f9

    invoke-virtual {p1, p2, v1, v0}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$702(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Lk0/q;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/l;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/l;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0x19

    invoke-virtual {v0, p1, v1}, Lk0/q;->f(ILk0/n;)V

    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2100(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method
