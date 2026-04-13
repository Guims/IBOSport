.class public final Landroidx/media3/exoplayer/MediaExtractorCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$SeekMode;
    }
.end annotation


# static fields
.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaExtractorCompat"


# instance fields
.field private final allocator:LE0/b;

.field private currentDataSource:Landroidx/media3/datasource/DataSource;

.field private currentExtractor:LI0/q;

.field private currentExtractorInput:LI0/r;

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final extractorsFactory:LI0/t;

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private hasBeenPrepared:Z

.field private httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final noDataBuffer:Lp0/f;

.field private offsetInCurrentFile:J

.field private pendingSeek:LI0/G;

.field private final positionHolder:LI0/D;

.field private final sampleHolderWithBufferReplacementDirect:Lp0/f;

.field private final sampleHolderWithBufferReplacementDisabled:Lp0/f;

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;",
            ">;"
        }
    .end annotation
.end field

.field private seekMap:LI0/F;

.field private final selectedTrackIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;",
            ">;"
        }
    .end annotation
.end field

.field private tracksEnded:Z

.field private upstreamFormatsCount:I


# direct methods
.method public constructor <init>(LI0/t;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->extractorsFactory:LI0/t;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    new-instance p1, LI0/D;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:LI0/D;

    new-instance p1, LE0/f;

    invoke-direct {p1}, LE0/f;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:LE0/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    new-instance p1, Lp0/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Lp0/f;

    new-instance p1, Lp0/f;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDirect:Lp0/f;

    new-instance p1, Lp0/f;

    invoke-direct {p1, p2, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Lp0/f;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, LI0/n;

    invoke-direct {v0}, LI0/n;-><init>()V

    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;-><init>(LI0/t;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public static synthetic a(LI0/q;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->lambda$selectExtractor$0(LI0/q;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/MediaExtractorCompat;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    return p0
.end method

.method public static synthetic access$302(Landroidx/media3/exoplayer/MediaExtractorCompat;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    return p1
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/MediaExtractorCompat;)LE0/b;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:LE0/b;

    return-object p0
.end method

.method public static synthetic access$502(Landroidx/media3/exoplayer/MediaExtractorCompat;LI0/F;)LI0/F;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:LI0/F;

    return-object p1
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaExtractorCompat;->onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V

    return-void
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/MediaExtractorCompat;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private advanceToSampleOrEndOfInput()Z
    .locals 8

    const-string v0, "Treating exception as the end of input."

    const-string v1, "MediaExtractorCompat"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->maybeResolvePendingSeek()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->skipOneSample()V

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:LI0/q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:LI0/r;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:LI0/D;

    invoke-interface {v4, v6, v7}, LI0/q;->e(LI0/r;LI0/D;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:LI0/D;

    iget-wide v6, v4, LI0/D;->a:J

    invoke-direct {p0, v6, v7}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)LI0/r;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:LI0/r;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_1
    invoke-static {v1, v0, v3}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v3, v5

    goto :goto_0

    :cond_4
    return v2

    :catch_2
    move-exception v3

    invoke-static {v1, v0, v3}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;
    .locals 1

    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->httpRequestHeaders:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method private static lambda$selectExtractor$0(LI0/q;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private maybeResolvePendingSeek()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:LI0/G;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, LI0/G;->b:J

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:LI0/q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, LI0/G;->a:J

    invoke-interface {v3, v1, v2, v4, v5}, LI0/q;->f(JJ)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)LI0/r;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:LI0/r;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:LI0/G;

    return-void
.end method

.method private onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->setMainTrackIndex(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    new-instance v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ly0/A;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->setCompatibilityTrackIndex(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    new-instance v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    invoke-direct {v2, p1, v1, p2, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private peekNextSelectedTrackSample(Lp0/f;Z)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v2, 0x1

    or-int/2addr p2, v2

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    move-result v3

    const/4 v4, -0x5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    move-result v3

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    const/4 p1, -0x4

    if-ne v3, p1, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lk0/c;->j(Z)V

    return-void
.end method

.method private prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 10

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->hasBeenPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->hasBeenPrepared:Z

    iget-wide v2, p2, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->offsetInCurrentFile:J

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {p1, p2}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v8

    new-instance v4, LI0/m;

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v9}, LI0/m;-><init>(Landroidx/media3/common/DataReader;JJ)V

    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectExtractor(LI0/r;)LI0/q;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-interface {p1, p2}, LI0/q;->k(LI0/s;)V

    move p2, v1

    :goto_0
    if-eqz p2, :cond_6

    const/4 p2, -0x1

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:LI0/D;

    invoke-interface {p1, v4, v2}, LI0/q;->e(LI0/r;LI0/D;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move v2, p2

    :goto_2
    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:LI0/F;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    goto :goto_4

    :cond_1
    :goto_3
    move v3, v1

    :goto_4
    if-nez v0, :cond_4

    if-eqz v3, :cond_2

    if-ne v2, p2, :cond_2

    goto :goto_5

    :cond_2
    if-ne v2, v1, :cond_3

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:LI0/D;

    iget-wide v4, p2, LI0/D;->a:J

    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)LI0/r;

    move-result-object p2

    move-object v4, p2

    :cond_3
    move p2, v3

    goto :goto_0

    :cond_4
    :goto_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->release()V

    if-eqz v0, :cond_5

    const-string p1, "Exception encountered while parsing input media."

    goto :goto_6

    :cond_5
    const-string p1, "Reached end of input before preparation completed."

    :goto_6
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_6
    iput-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:LI0/r;

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:LI0/q;

    return-void
.end method

.method private reopenCurrentDataSource(J)LI0/r;
    .locals 6

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->offsetInCurrentFile:J

    add-long/2addr v2, p1

    invoke-direct {p0, v0, v2, v3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    add-long/2addr v2, p1

    :cond_0
    move-wide v4, v2

    new-instance v0, LI0/m;

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, LI0/m;-><init>(Landroidx/media3/common/DataReader;JJ)V

    return-object v0
.end method

.method private selectExtractor(LI0/r;)LI0/q;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->extractorsFactory:LI0/t;

    invoke-interface {v0}, LI0/t;->e()[LI0/q;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    :try_start_0
    invoke-interface {v3, p1}, LI0/q;->b(LI0/r;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {p1}, LI0/r;->j()V

    goto :goto_2

    :catch_0
    :cond_0
    invoke-interface {p1}, LI0/r;->j()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, LI0/r;->j()V

    throw v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    new-instance p1, LO0/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "None of the available extractors ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, LE1/a;

    const-string v3, ", "

    invoke-direct {v2, v3}, LE1/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lp3/H;->k([Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    new-instance v3, Landroidx/media3/exoplayer/r;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/r;-><init>(I)V

    invoke-static {v0, v3}, Lp3/q;->v(Ljava/util/List;Lo3/d;)Ljava/util/AbstractList;

    move-result-object v0

    invoke-virtual {v2, v0}, LE1/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lp3/Y;->t:Lp3/Y;

    invoke-direct {p1, v0, v1}, LO0/d;-><init>(Ljava/lang/String;Lp3/Y;)V

    throw p1
.end method

.method private skipOneSample()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->isCompatibilityTrack:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->discardFrontSample()V

    :cond_0
    return-void
.end method


# virtual methods
.method public advance()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->skipOneSample()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    return v0
.end method

.method public getAllocator()LE0/b;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:LE0/b;

    return-object v0
.end method

.method public getSampleFlags()I
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Lp0/f;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Lp0/f;Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Lp0/f;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, LU2/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Lp0/f;

    invoke-virtual {v2, v1}, LU2/e;->c(I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getSampleSize()J
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDirect:Lp0/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Lp0/f;Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDirect:Lp0/f;

    iget-object v0, v0, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v0, v2

    return-wide v0
.end method

.method public getSampleTime()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Lp0/f;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Lp0/f;Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Lp0/f;

    iget-wide v0, v0, Lp0/f;->v:J

    return-wide v0
.end method

.method public getSampleTrackIndex()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Lp0/f;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->createDownstreamMediaFormat(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Lp0/f;

    iput-object p1, v0, Lp0/f;->t:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Lp0/f;Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Lp0/f;

    const/4 v0, 0x0

    iput-object v0, p2, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/e0;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:LI0/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, LI0/q;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:LI0/q;

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:LI0/r;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:LI0/G;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    return-void
.end method

.method public seekTo(JI)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:LI0/F;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:LI0/q;

    instance-of v2, v0, Lc1/m;

    if-eqz v2, :cond_1

    check-cast v0, Lc1/m;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->getIdOfBackingTrack()I

    move-result v2

    invoke-virtual {v0, v2, p1, p2}, Lc1/m;->l(IJ)LI0/E;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:LI0/F;

    invoke-interface {v0, p1, p2}, LI0/F;->h(J)LI0/E;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_4

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    iget-object p3, v0, LI0/E;->b:LI0/G;

    iget-object v1, v0, LI0/E;->a:LI0/G;

    iget-wide v2, p3, LI0/G;->a:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, v1, LI0/G;->a:J

    sub-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_5

    iget-object v1, v0, LI0/E;->b:LI0/G;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    iget-object v1, v0, LI0/E;->b:LI0/G;

    goto :goto_1

    :cond_4
    iget-object v1, v0, LI0/E;->a:LI0/G;

    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/e0;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:LI0/G;

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 3

    new-instance v0, Landroidx/media3/datasource/MediaDataSourceAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/datasource/MediaDataSourceAdapter;-><init>(Landroid/media/MediaDataSource;Z)V

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6

    new-instance v0, Landroidx/media3/datasource/FileDescriptorDataSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->httpRequestHeaders:Ljava/util/Map;

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {p2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public unselectTrack(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
