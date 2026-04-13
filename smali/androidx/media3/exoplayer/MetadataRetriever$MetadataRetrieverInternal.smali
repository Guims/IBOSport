.class final Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataRetrieverInternal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x2

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x3

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x1

.field private static final MESSAGE_RELEASE:I = 0x4

.field private static final SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;


# instance fields
.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/D;

.field private final mediaSourceHandler:Lk0/l;

.field private final trackGroupsFuture:Lt3/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/y;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    invoke-direct {v0}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/D;Landroidx/media3/common/MediaItem;Lk0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceFactory:Landroidx/media3/exoplayer/source/D;

    iput-object p2, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaItem:Landroidx/media3/common/MediaItem;

    sget-object p1, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->addWorker()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;-><init>(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)V

    check-cast p3, Lk0/w;

    invoke-virtual {p3, p1, p2}, Lk0/w;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lk0/y;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Lk0/l;

    new-instance p1, Lt3/y;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lt3/y;

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Landroidx/media3/exoplayer/source/D;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceFactory:Landroidx/media3/exoplayer/source/D;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Lk0/l;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Lk0/l;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)Lt3/y;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lt3/y;

    return-object p0
.end method

.method public static synthetic access$300()Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    return-object v0
.end method


# virtual methods
.method public retrieveMetadata()Lt3/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt3/s;"
        }
    .end annotation

    sget-object v0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->SHARED_WORKER_THREAD:Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/MetadataRetriever$SharedWorkerThread;->startRetrieval(Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->trackGroupsFuture:Lt3/y;

    return-object v0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaSourceHandler:Lk0/l;

    iget-object v1, p0, Landroidx/media3/exoplayer/MetadataRetriever$MetadataRetrieverInternal;->mediaItem:Landroidx/media3/common/MediaItem;

    check-cast v0, Lk0/y;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lk0/y;->c(ILjava/lang/Object;)Lk0/x;

    move-result-object v0

    invoke-virtual {v0}, Lk0/x;->b()V

    return-void
.end method
