.class public final Landroidx/media3/exoplayer/MetadataRetriever;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;,
        Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAXIMUM_PARALLEL_RETRIEVALS:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveMetadata(Landroid/content/Context;Landroidx/media3/common/MediaItem;)Lt3/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/MediaItem;",
            ")",
            "Lt3/s;"
        }
    .end annotation

    sget-object v0, Lk0/d;->a:Lk0/w;

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/MetadataRetriever;->retrieveMetadata(Landroid/content/Context;Landroidx/media3/common/MediaItem;Lk0/d;)Lt3/s;

    move-result-object p0

    return-object p0
.end method

.method public static retrieveMetadata(Landroid/content/Context;Landroidx/media3/common/MediaItem;Lk0/d;)Lt3/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/MediaItem;",
            "Lk0/d;",
            ")",
            "Lt3/s;"
        }
    .end annotation

    new-instance v0, LI0/n;

    invoke-direct {v0}, LI0/n;-><init>()V

    monitor-enter v0

    const/4 v1, 0x6

    :try_start_0
    iput v1, v0, LI0/n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v1, Landroidx/media3/exoplayer/source/r;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/source/r;-><init>(Landroid/content/Context;LI0/t;)V

    invoke-static {v1, p1, p2}, Landroidx/media3/exoplayer/MetadataRetriever;->retrieveMetadata(Landroidx/media3/exoplayer/source/D;Landroidx/media3/common/MediaItem;Lk0/d;)Lt3/s;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static retrieveMetadata(Landroidx/media3/exoplayer/source/D;Landroidx/media3/common/MediaItem;)Lt3/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/D;",
            "Landroidx/media3/common/MediaItem;",
            ")",
            "Lt3/s;"
        }
    .end annotation

    sget-object v0, Lk0/d;->a:Lk0/w;

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/MetadataRetriever;->retrieveMetadata(Landroidx/media3/exoplayer/source/D;Landroidx/media3/common/MediaItem;Lk0/d;)Lt3/s;

    move-result-object p0

    return-object p0
.end method

.method private static retrieveMetadata(Landroidx/media3/exoplayer/source/D;Landroidx/media3/common/MediaItem;Lk0/d;)Lt3/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/D;",
            "Landroidx/media3/common/MediaItem;",
            "Lk0/d;",
            ")",
            "Lt3/s;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;-><init>(Landroidx/media3/exoplayer/source/D;Landroidx/media3/common/MediaItem;Lk0/d;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->retrieveMetadata()Lt3/s;

    move-result-object p0

    return-object p0
.end method

.method public static setMaximumParallelRetrievals(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    sget-object v0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
