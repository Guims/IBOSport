.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lo3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/d;"
        }
    .end annotation
.end field

.field audioAttributes:Landroidx/media3/common/AudioAttributes;

.field bandwidthMeterSupplier:Lo3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/h;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Lk0/d;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field deviceVolumeControlEnabled:Z

.field dynamicSchedulingEnabled:Z

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field loadControlSupplier:Lo3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/h;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field maxSeekToPreviousPositionMs:J

.field mediaSourceFactorySupplier:Lo3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/h;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

.field playerName:Ljava/lang/String;

.field priority:I

.field priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lo3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/h;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field skipSilenceEnabled:Z

.field suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

.field suppressPlaybackOnUnsuitableOutput:Z

.field trackSelectorSupplier:Lo3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/h;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/a;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroidx/media3/exoplayer/a;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Landroidx/media3/exoplayer/a;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lo3/h;Lo3/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/f;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/RenderersFactory;I)V

    new-instance v1, Landroidx/media3/exoplayer/a;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Landroidx/media3/exoplayer/a;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lo3/h;Lo3/h;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/D;)V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/f;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/RenderersFactory;I)V

    new-instance v1, Landroidx/media3/exoplayer/g;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Landroidx/media3/exoplayer/g;-><init>(Landroidx/media3/exoplayer/source/D;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lo3/h;Lo3/h;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/D;LD0/C;Landroidx/media3/exoplayer/LoadControl;LE0/e;Lq0/a;)V
    .locals 8

    new-instance v2, Landroidx/media3/exoplayer/f;

    const/4 v0, 0x3

    invoke-direct {v2, p2, v0}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/RenderersFactory;I)V

    new-instance v3, Landroidx/media3/exoplayer/g;

    const/4 v0, 0x1

    invoke-direct {v3, p3, v0}, Landroidx/media3/exoplayer/g;-><init>(Landroidx/media3/exoplayer/source/D;I)V

    new-instance v4, Landroidx/media3/exoplayer/i;

    const/4 v0, 0x0

    invoke-direct {v4, p4, v0}, Landroidx/media3/exoplayer/i;-><init>(LD0/C;I)V

    new-instance v5, Landroidx/media3/exoplayer/d;

    const/4 v0, 0x1

    invoke-direct {v5, p5, v0}, Landroidx/media3/exoplayer/d;-><init>(Landroidx/media3/exoplayer/LoadControl;I)V

    new-instance v6, Landroidx/media3/exoplayer/h;

    const/4 p5, 0x1

    invoke-direct {v6, p6, p5}, Landroidx/media3/exoplayer/h;-><init>(LE0/e;I)V

    new-instance v7, Landroidx/media3/exoplayer/e;

    invoke-direct {v7, p7, p5}, Landroidx/media3/exoplayer/e;-><init>(Lq0/a;I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lo3/h;Lo3/h;Lo3/h;Lo3/h;Lo3/h;Lo3/d;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/source/D;)V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/a;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/a;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroidx/media3/exoplayer/g;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Landroidx/media3/exoplayer/g;-><init>(Landroidx/media3/exoplayer/source/D;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lo3/h;Lo3/h;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo3/h;Lo3/h;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/h;",
            "Lo3/h;",
            ")V"
        }
    .end annotation

    new-instance v4, Landroidx/media3/exoplayer/a;

    const/4 v0, 0x4

    invoke-direct {v4, p1, v0}, Landroidx/media3/exoplayer/a;-><init>(Landroid/content/Context;I)V

    new-instance v5, Landroidx/media3/exoplayer/j;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/a;

    const/4 v0, 0x5

    invoke-direct {v6, p1, v0}, Landroidx/media3/exoplayer/a;-><init>(Landroid/content/Context;I)V

    new-instance v7, Landroidx/media3/exoplayer/r;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Landroidx/media3/exoplayer/r;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lo3/h;Lo3/h;Lo3/h;Lo3/h;Lo3/h;Lo3/d;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo3/h;Lo3/h;Lo3/h;Lo3/h;Lo3/h;Lo3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/h;",
            "Lo3/h;",
            "Lo3/h;",
            "Lo3/h;",
            "Lo3/h;",
            "Lo3/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lo3/h;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lo3/h;

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lo3/h;

    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lo3/h;

    iput-object p6, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lo3/h;

    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lo3/d;

    sget p1, Lk0/C;->a:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    sget-object p1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    const-wide/16 p3, 0xbb8

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    new-instance p1, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->build()Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    sget-object p1, Lk0/d;->a:Lk0/w;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Lk0/d;

    const-wide/16 p3, 0x1f4

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    const-string p1, ""

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    const/16 p1, -0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priority:I

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setRenderersFactory$16(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$5(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$3(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$6(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setLoadControl$19(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setMediaSourceFactory$17(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(LE0/e;)LE0/e;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$12(LE0/e;)LE0/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$7(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$4(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/content/Context;)LE0/e;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$15(Landroid/content/Context;)LE0/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/r;

    new-instance v1, LI0/n;

    invoke-direct {v1}, LI0/n;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/r;-><init>(Landroid/content/Context;LI0/t;)V

    return-object v0
.end method

.method private static synthetic lambda$new$10(LD0/C;)LD0/C;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$11(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$12(LE0/e;)LE0/e;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$13(Lq0/a;Lk0/d;)Lq0/a;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$14(Landroid/content/Context;)LD0/C;
    .locals 1

    new-instance v0, LD0/t;

    invoke-direct {v0, p0}, LD0/t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static lambda$new$15(Landroid/content/Context;)LE0/e;
    .locals 8

    sget-object v0, LE0/i;->n:Lp3/Y;

    const-class v1, LE0/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, LE0/i;->t:LE0/i;

    if-nez v0, :cond_0

    new-instance v0, LE0/h;

    invoke-direct {v0, p0}, LE0/h;-><init>(Landroid/content/Context;)V

    new-instance v2, LE0/i;

    iget-object v3, v0, LE0/h;->a:Landroid/content/Context;

    iget-object v4, v0, LE0/h;->b:Ljava/util/HashMap;

    iget v5, v0, LE0/h;->c:I

    iget-object v6, v0, LE0/h;->d:Lk0/w;

    iget-boolean v7, v0, LE0/h;->e:Z

    invoke-direct/range {v2 .. v7}, LE0/i;-><init>(Landroid/content/Context;Ljava/util/Map;ILk0/d;Z)V

    sput-object v2, LE0/i;->t:LE0/i;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LE0/i;->t:LE0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$new$2(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$3(Landroid/content/Context;)Landroidx/media3/exoplayer/source/D;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/r;

    new-instance v1, LI0/n;

    invoke-direct {v1}, LI0/n;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/r;-><init>(Landroid/content/Context;LI0/t;)V

    return-object v0
.end method

.method private static synthetic lambda$new$4(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$new$5(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$6(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$7(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$8(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$9(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setAnalyticsCollector$21(Lq0/a;Lk0/d;)Lq0/a;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setBandwidthMeter$20(LE0/e;)LE0/e;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setLoadControl$19(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setMediaSourceFactory$17(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setRenderersFactory$16(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setTrackSelector$18(LD0/C;)LD0/C;
    .locals 0

    return-object p0
.end method

.method public static synthetic m(LD0/C;)LD0/C;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setTrackSelector$18(LD0/C;)LD0/C;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$8(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lq0/a;Lk0/d;)Lq0/a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$13(Lq0/a;Lk0/d;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$9(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/source/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$2(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lq0/a;Lk0/d;)Lq0/a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setAnalyticsCollector$21(Lq0/a;Lk0/d;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(LD0/C;)LD0/C;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$10(LD0/C;)LD0/C;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(LE0/e;)LE0/e;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setBandwidthMeter$20(LE0/e;)LE0/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Landroid/content/Context;)LD0/C;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$14(Landroid/content/Context;)LD0/C;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$11(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    if-nez v0, :cond_0

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suppressPlaybackOnUnsuitableOutput:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V

    return-object v0
.end method

.method public buildSimpleExoPlayer()Landroidx/media3/exoplayer/SimpleExoPlayer;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    new-instance v0, Landroidx/media3/exoplayer/SimpleExoPlayer;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    return-object v0
.end method

.method public experimentalSetDynamicSchedulingEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->dynamicSchedulingEnabled:Z

    return-object p0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    return-object p0
.end method

.method public setAnalyticsCollector(Lq0/a;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/e;-><init>(Lq0/a;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lo3/d;

    return-object p0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    return-object p0
.end method

.method public setBandwidthMeter(LE0/e;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/h;-><init>(LE0/e;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lo3/h;

    return-object p0
.end method

.method public setClock(Lk0/d;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Lk0/d;

    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-object p0
.end method

.method public setDeviceVolumeControlEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Landroidx/media3/exoplayer/LivePlaybackSpeedControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    return-object p0
.end method

.method public setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/d;-><init>(Landroidx/media3/exoplayer/LoadControl;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lo3/h;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setMaxSeekToPreviousPositionMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    return-object p0
.end method

.method public setMediaSourceFactory(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/g;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/g;-><init>(Landroidx/media3/exoplayer/source/D;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lo3/h;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    return-object p0
.end method

.method public setPlaybackLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    new-instance v0, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    return-object p0
.end method

.method public setPlaybackLooperProvider(Landroidx/media3/exoplayer/PlaybackLooperProvider;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooperProvider:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    return-object p0
.end method

.method public setPriority(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priority:I

    return-object p0
.end method

.method public setPriorityTaskManager(Landroidx/media3/common/PriorityTaskManager;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    return-object p0
.end method

.method public setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/RenderersFactory;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lo3/h;

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    return-object p0
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->skipSilenceEnabled:Z

    return-object p0
.end method

.method public setSuitableOutputChecker(Landroidx/media3/exoplayer/SuitableOutputChecker;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Landroidx/media3/exoplayer/SuitableOutputChecker;

    return-object p0
.end method

.method public setSuppressPlaybackOnUnsuitableOutput(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suppressPlaybackOnUnsuitableOutput:Z

    return-object p0
.end method

.method public setTrackSelector(LD0/C;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/i;-><init>(LD0/C;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lo3/h;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    return-object p0
.end method

.method public setUsePlatformDiagnostics(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    return-object p0
.end method

.method public setVideoScalingMode(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    return-object p0
.end method

.method public setWakeMode(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    return-object p0
.end method
