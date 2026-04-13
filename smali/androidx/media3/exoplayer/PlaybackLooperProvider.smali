.class public final Landroidx/media3/exoplayer/PlaybackLooperProvider;
.super Ljava/lang/Object;


# instance fields
.field private internalPlaybackThread:Landroid/os/HandlerThread;

.field private final lock:Ljava/lang/Object;

.field private playbackLooper:Landroid/os/Looper;

.field private referenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    return-void
.end method


# virtual methods
.method public obtainLooper()Landroid/os/Looper;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lk0/c;->j(Z)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "ExoPlayer:Playback"

    const/16 v4, -0x10

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseLooper()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lk0/c;->j(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
