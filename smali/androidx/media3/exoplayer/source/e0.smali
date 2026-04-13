.class public Landroidx/media3/exoplayer/source/e0;
.super Ljava/lang/Object;

# interfaces
.implements LI0/L;


# static fields
.field static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SampleQueue"


# instance fields
.field private absoluteFirstIndex:I

.field private allSamplesAreSyncSamples:Z

.field private capacity:I

.field private cryptoDatas:[LI0/K;

.field private currentDrmSession:Lu0/j;

.field private downstreamFormat:Landroidx/media3/common/Format;

.field private final drmEventDispatcher:Lu0/m;

.field private final drmSessionManager:Lu0/q;

.field private final extrasHolder:Landroidx/media3/exoplayer/source/b0;

.field private flags:[I

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private loggedUnexpectedNonSyncSample:Z

.field private offsets:[J

.field private pendingSplice:Z

.field private readPosition:I

.field private relativeFirstIndex:I

.field private final sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

.field private sampleOffsetUs:J

.field private final sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/p0;"
        }
    .end annotation
.end field

.field private sizes:[I

.field private sourceIds:[J

.field private startTimeUs:J

.field private timesUs:[J

.field private unadjustedUpstreamFormat:Landroidx/media3/common/Format;

.field private upstreamFormat:Landroidx/media3/common/Format;

.field private upstreamFormatAdjustmentRequired:Z

.field private upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/d0;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:J


# direct methods
.method public constructor <init>(LE0/b;Lu0/q;Lu0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->drmSessionManager:Lu0/q;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/e0;->drmEventDispatcher:Lu0/m;

    new-instance p2, Landroidx/media3/exoplayer/source/a0;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/a0;-><init>(LE0/b;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    new-instance p1, Landroidx/media3/exoplayer/source/b0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->extrasHolder:Landroidx/media3/exoplayer/source/b0;

    const/16 p1, 0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->sourceIds:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    new-array p1, p1, [LI0/K;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->cryptoDatas:[LI0/K;

    new-instance p1, Landroidx/media3/exoplayer/source/p0;

    new-instance p2, Landroidx/media3/common/d;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Landroidx/media3/common/d;-><init>(I)V

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/p0;-><init>(Landroidx/media3/common/d;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->startTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->largestDiscardedTimestampUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatRequired:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamKeyframeRequired:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->allSamplesAreSyncSamples:Z

    return-void
.end method

.method public static createWithDrm(LE0/b;Landroid/os/Looper;Lu0/q;Lu0/m;)Landroidx/media3/exoplayer/source/e0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lq0/q;->d:Lq0/q;

    invoke-interface {p2, p1, v0}, Lu0/q;->c(Landroid/os/Looper;Lq0/q;)V

    new-instance p1, Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/e0;-><init>(LE0/b;Lu0/q;Lu0/m;)V

    return-object p1
.end method

.method public static createWithDrm(LE0/b;Lu0/q;Lu0/m;)Landroidx/media3/exoplayer/source/e0;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/e0;-><init>(LE0/b;Lu0/q;Lu0/m;)V

    return-object v0
.end method

.method public static createWithoutDrm(LE0/b;)Landroidx/media3/exoplayer/source/e0;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/e0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/media3/exoplayer/source/e0;-><init>(LE0/b;Lu0/q;Lu0/m;)V

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result v1

    :cond_0
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final b(I)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->largestDiscardedTimestampUs:J

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->e(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->largestDiscardedTimestampUs:J

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    const/4 p1, 0x0

    if-gez v1, :cond_1

    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lt v0, v4, :cond_3

    iget-object v4, v1, Landroidx/media3/exoplayer/source/p0;->c:Landroidx/media3/common/d;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/d;->accept(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    iget p1, v1, Landroidx/media3/exoplayer/source/p0;->a:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Landroidx/media3/exoplayer/source/p0;->a:I

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    if-nez p1, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    :cond_4
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public final c(I)J
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lk0/c;->d(Z)V

    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/e0;->largestDiscardedTimestampUs:J

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/e0;->e(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ge p1, v4, :cond_2

    iget-object v4, v0, Landroidx/media3/exoplayer/source/p0;->c:Landroidx/media3/common/d;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/d;->accept(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget p1, v0, Landroidx/media3/exoplayer/source/p0;->a:I

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, v0, Landroidx/media3/exoplayer/source/p0;->a:I

    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-eqz p1, :cond_4

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_4
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d(IJIZ)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p2

    if-gtz v3, :cond_4

    if-eqz p5, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_0
    cmp-long v0, v4, p2

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    if-ne p1, v3, :cond_3

    move p1, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public declared-synchronized discardSampleMetadataToRead()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->b(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final discardTo(JZZ)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    iget v6, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    aget-wide v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v4, p1, v7

    if-gez v4, :cond_1

    :cond_0
    move-object v5, p0

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    :try_start_1
    iget p4, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p4, v1, :cond_2

    add-int/lit8 v1, p4, 0x1

    :cond_2
    move-object v5, p0

    move-wide v7, p1

    move v10, p3

    move v9, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto :goto_4

    :goto_0
    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroidx/media3/exoplayer/source/e0;->d(IJIZ)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    monitor-exit p0

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->b(I)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, p0

    goto :goto_1

    :goto_2
    monitor-exit p0

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/source/a0;->b(J)V

    return-void

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final discardToEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/e0;->b(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/a0;->b(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final discardToRead()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->discardSampleMetadataToRead()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/a0;->b(J)V

    return-void
.end method

.method public final discardUpstreamFrom(J)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->getLargestReadTimestampUs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/e0;->a(J)I

    move-result p1

    iget p2, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/e0;->discardUpstreamSamples(I)V

    return-void
.end method

.method public final discardUpstreamSamples(I)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->c(I)J

    move-result-wide v1

    iget p1, v0, Landroidx/media3/exoplayer/source/a0;->b:I

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/a0;->g:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lk0/c;->d(Z)V

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/a0;->g:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    iget-wide v4, v3, Landroidx/media3/exoplayer/source/Z;->b:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    iget-wide v1, v0, Landroidx/media3/exoplayer/source/a0;->g:J

    iget-wide v4, v3, Landroidx/media3/exoplayer/source/Z;->q:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_2

    iget-object v1, v3, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroidx/media3/exoplayer/source/Z;

    goto :goto_1

    :cond_2
    iget-object v1, v3, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/Z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a0;->a(Landroidx/media3/exoplayer/source/Z;)V

    new-instance v2, Landroidx/media3/exoplayer/source/Z;

    iget-wide v4, v3, Landroidx/media3/exoplayer/source/Z;->q:J

    invoke-direct {v2, p1, v4, v5}, Landroidx/media3/exoplayer/source/Z;-><init>(IJ)V

    iput-object v2, v3, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/a0;->g:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/source/Z;->q:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_3

    move-object v3, v2

    :cond_3
    iput-object v3, v0, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    iget-object p1, v0, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;

    if-ne p1, v1, :cond_4

    iput-object v2, v0, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;

    :cond_4
    return-void

    :cond_5
    :goto_2
    iget-object v1, v0, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a0;->a(Landroidx/media3/exoplayer/source/Z;)V

    new-instance v1, Landroidx/media3/exoplayer/source/Z;

    iget-wide v2, v0, Landroidx/media3/exoplayer/source/a0;->g:J

    invoke-direct {v1, p1, v2, v3}, Landroidx/media3/exoplayer/source/Z;-><init>(IJ)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    return-void
.end method

.method public final e(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public final f(I)I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public final format(Landroidx/media3/common/Format;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatAdjustmentRequired:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatRequired:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    sget v2, Lk0/C;->a:I

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/c0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/c0;->a:Landroidx/media3/common/Format;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/c0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/c0;->a:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    :goto_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->allSamplesAreSyncSamples:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v3, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v3, v0}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->allSamplesAreSyncSamples:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->loggedUnexpectedNonSyncSample:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move v1, v2

    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/d0;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/d0;->a()V

    :cond_3
    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final g(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lu0/j;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    invoke-interface {p1}, Lu0/j;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 5

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->sampleOffsetUs:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getFirstIndex()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    return v0
.end method

.method public final declared-synchronized getFirstTimestampUs()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getLargestQueuedTimestampUs()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getLargestReadTimestampUs()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->largestDiscardedTimestampUs:J

    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/e0;->e(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getReadIndex()I
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized getSkipCount(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result v2

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    const/4 v7, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aget-wide v4, v3, v2

    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    :cond_1
    move-object v1, p0

    goto :goto_2

    :cond_2
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v3, p1, v3

    if-lez v3, :cond_3

    if-eqz p3, :cond_3

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    :cond_3
    sub-int v5, v1, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v3, p1

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/source/e0;->d(IJIZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    monitor-exit p0

    return v7

    :cond_4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_1

    :goto_2
    monitor-exit p0

    return v7

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getUpstreamFormat()Landroidx/media3/common/Format;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getWriteIndex()I
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final h(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;

    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->drmSessionManager:Lu0/q;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lu0/q;->d(Landroidx/media3/common/Format;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/Format;->copyWithCryptoType(I)Landroidx/media3/common/Format;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    iput-object v3, p2, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    iput-object v3, p2, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Lu0/j;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->drmSessionManager:Lu0/q;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    sget v1, Lk0/C;->a:I

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->drmSessionManager:Lu0/q;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/e0;->drmEventDispatcher:Lu0/m;

    invoke-interface {v1, v2, p1}, Lu0/q;->b(Lu0/m;Landroidx/media3/common/Format;)Lu0/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    iput-object p1, p2, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Lu0/j;

    if-eqz v0, :cond_5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->drmEventDispatcher:Lu0/m;

    invoke-interface {v0, p1}, Lu0/j;->b(Lu0/m;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final invalidateUpstreamFormatAdjustment()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatAdjustmentRequired:Z

    return-void
.end method

.method public final declared-synchronized isLastSampleQueued()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isReady(Z)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/p0;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/c0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/c0;->a:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v3

    :cond_4
    :try_start_2
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->g(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lu0/j;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    invoke-interface {v0}, Lu0/j;->g()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized peekSourceId()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->sourceIds:[J

    aget-wide v0, v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->upstreamSourceId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public preRelease()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->discardToEnd()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->drmEventDispatcher:Lu0/m;

    invoke-interface {v0, v1}, Lu0/j;->b(Lu0/m;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;

    :cond_0
    return-void
.end method

.method public read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I
    .locals 10

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->extrasHolder:Landroidx/media3/exoplayer/source/b0;

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p2, Lp0/f;->u:Z

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget v5, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-eq v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/4 v5, -0x4

    const/4 v6, 0x4

    const/4 v7, -0x3

    const/4 v8, -0x5

    if-nez v4, :cond_6

    if-nez p4, :cond_5

    iget-boolean p4, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z

    if-eqz p4, :cond_2

    goto :goto_4

    :cond_2
    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz p4, :cond_4

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq p4, v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_3
    :goto_2
    invoke-virtual {p0, p4, p1}, Landroidx/media3/exoplayer/source/e0;->h(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_3
    move v7, v8

    goto :goto_7

    :cond_4
    monitor-exit p0

    goto :goto_7

    :cond_5
    :goto_4
    :try_start_1
    iput v6, p2, LU2/e;->q:I

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p2, Lp0/f;->v:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_5
    move v7, v5

    goto :goto_7

    :cond_6
    :try_start_2
    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v9

    invoke-virtual {v4, v9}, Landroidx/media3/exoplayer/source/p0;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/c0;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/c0;->a:Landroidx/media3/common/Format;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq v4, v0, :cond_7

    goto :goto_6

    :cond_7
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->g(I)Z

    move-result v0

    if-nez v0, :cond_8

    iput-boolean v2, p2, Lp0/f;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_7

    :cond_8
    :try_start_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    aget v0, v0, p1

    iput v0, p2, LU2/e;->q:I

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_a

    if-nez p4, :cond_9

    iget-boolean p4, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z

    if-eqz p4, :cond_a

    :cond_9
    const/high16 p4, 0x20000000

    invoke-virtual {p2, p4}, LU2/e;->a(I)V

    :cond_a
    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aget-wide v7, p4, p1

    iput-wide v7, p2, Lp0/f;->v:J

    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    aget p4, p4, p1

    iput p4, v3, Landroidx/media3/exoplayer/source/b0;->a:I

    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    aget-wide v7, p4, p1

    iput-wide v7, v3, Landroidx/media3/exoplayer/source/b0;->b:J

    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->cryptoDatas:[LI0/K;

    aget-object p1, p4, p1

    iput-object p1, v3, Landroidx/media3/exoplayer/source/b0;->c:LI0/K;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_5

    :cond_b
    :goto_6
    :try_start_4
    invoke-virtual {p0, v4, p1}, Landroidx/media3/exoplayer/source/e0;->h(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_3

    :goto_7
    if-ne v7, v5, :cond_f

    invoke-virtual {p2, v6}, LU2/e;->c(I)Z

    move-result p1

    if-nez p1, :cond_f

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_e

    if-eqz v1, :cond_d

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->extrasHolder:Landroidx/media3/exoplayer/source/b0;

    iget-object p4, p1, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/a0;->c:Lk0/u;

    invoke-static {p4, p2, p3, p1}, Landroidx/media3/exoplayer/source/a0;->f(Landroidx/media3/exoplayer/source/Z;Lp0/f;Landroidx/media3/exoplayer/source/b0;Lk0/u;)Landroidx/media3/exoplayer/source/Z;

    goto :goto_8

    :cond_d
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->extrasHolder:Landroidx/media3/exoplayer/source/b0;

    iget-object p4, p1, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/a0;->c:Lk0/u;

    invoke-static {p4, p2, p3, v0}, Landroidx/media3/exoplayer/source/a0;->f(Landroidx/media3/exoplayer/source/Z;Lp0/f;Landroidx/media3/exoplayer/source/b0;Lk0/u;)Landroidx/media3/exoplayer/source/Z;

    move-result-object p2

    iput-object p2, p1, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;

    :cond_e
    :goto_8
    if-nez v1, :cond_f

    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    :cond_f
    return v7

    :goto_9
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->reset(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->drmEventDispatcher:Lu0/m;

    invoke-interface {v0, v1}, Lu0/j;->b(Lu0/m;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->currentDrmSession:Lu0/j;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->downstreamFormat:Landroidx/media3/common/Format;

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a0;->a(Landroidx/media3/exoplayer/source/Z;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    iget v2, v0, Landroidx/media3/exoplayer/source/a0;->b:I

    iget-object v3, v1, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    check-cast v3, LE0/a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Lk0/c;->j(Z)V

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Landroidx/media3/exoplayer/source/Z;->b:J

    int-to-long v2, v2

    iput-wide v2, v1, Landroidx/media3/exoplayer/source/Z;->q:J

    iget-object v1, v0, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    iput-wide v6, v0, Landroidx/media3/exoplayer/source/a0;->g:J

    iget-object v0, v0, Landroidx/media3/exoplayer/source/a0;->a:LE0/b;

    check-cast v0, LE0/f;

    invoke-virtual {v0}, LE0/f;->b()V

    iput v4, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    iput v4, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    iput v4, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    iput v4, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iput-boolean v5, p0, Landroidx/media3/exoplayer/source/e0;->upstreamKeyframeRequired:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->startTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->largestDiscardedTimestampUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J

    iput-boolean v4, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/p0;->c:Landroidx/media3/common/d;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/d;->accept(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    iput v2, v0, Landroidx/media3/exoplayer/source/p0;->a:I

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    iput-boolean v5, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatRequired:Z

    iput-boolean v5, p0, Landroidx/media3/exoplayer/source/e0;->allSamplesAreSyncSamples:Z

    :cond_2
    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 7

    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    invoke-virtual {p4, p2}, Landroidx/media3/exoplayer/source/a0;->c(I)I

    move-result p2

    iget-object v0, p4, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    check-cast v1, LE0/a;

    iget-object v2, v1, LE0/a;->a:[B

    iget-wide v3, p4, Landroidx/media3/exoplayer/source/a0;->g:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/Z;->b:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iget v1, v1, LE0/a;->b:I

    add-int/2addr v0, v1

    invoke-interface {p1, v2, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    iget-wide p2, p4, Landroidx/media3/exoplayer/source/a0;->g:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p4, Landroidx/media3/exoplayer/source/a0;->g:J

    iget-object v0, p4, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/Z;->q:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_2

    iget-object p2, v0, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/source/Z;

    iput-object p2, p4, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    :cond_2
    return p1
.end method

.method public final sampleData(Lk0/u;II)V
    .locals 8

    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p3, p2}, Landroidx/media3/exoplayer/source/a0;->c(I)I

    move-result v0

    iget-object v1, p3, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    check-cast v2, LE0/a;

    iget-object v3, v2, LE0/a;->a:[B

    iget-wide v4, p3, Landroidx/media3/exoplayer/source/a0;->g:J

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/Z;->b:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v2, v2, LE0/a;->b:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v1, v0}, Lk0/u;->e([BII)V

    sub-int/2addr p2, v0

    iget-wide v1, p3, Landroidx/media3/exoplayer/source/a0;->g:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p3, Landroidx/media3/exoplayer/source/a0;->g:J

    iget-object v0, p3, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/Z;->q:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/Z;

    iput-object v0, p3, Landroidx/media3/exoplayer/source/a0;->f:Landroidx/media3/exoplayer/source/Z;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public sampleMetadata(JIIILI0/K;)V
    .locals 9

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatAdjustmentRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->format(Landroidx/media3/common/Format;)V

    :cond_0
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/e0;->upstreamKeyframeRequired:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamKeyframeRequired:Z

    :cond_3
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/e0;->sampleOffsetUs:J

    add-long/2addr p1, v4

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/e0;->allSamplesAreSyncSamples:Z

    if-eqz v4, :cond_6

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/e0;->startTimeUs:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_4

    goto :goto_4

    :cond_4
    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->loggedUnexpectedNonSyncSample:Z

    if-nez v0, :cond_5

    const-string v0, "SampleQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/e0;->loggedUnexpectedNonSyncSample:Z

    :cond_5
    or-int/lit8 p3, p3, 0x1

    :cond_6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->pendingSplice:Z

    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-nez v0, :cond_8

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->largestDiscardedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->getLargestReadTimestampUs()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_9

    monitor-exit p0

    move v0, v1

    goto :goto_2

    :cond_9
    :try_start_2
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/e0;->a(J)I

    move-result v0

    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/e0;->c(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    move v0, v2

    :goto_2
    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->pendingSplice:Z

    goto :goto_5

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_b
    :goto_4
    return-void

    :cond_c
    :goto_5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/a0;->g:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    int-to-long v5, p5

    sub-long/2addr v3, v5

    monitor-enter p0

    :try_start_4
    iget p5, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-lez p5, :cond_e

    sub-int/2addr p5, v2

    invoke-virtual {p0, p5}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result p5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    aget-wide v5, v0, p5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    aget p5, v0, p5

    int-to-long v7, p5

    add-long/2addr v5, v7

    cmp-long p5, v5, v3

    if-gtz p5, :cond_d

    move p5, v2

    goto :goto_6

    :cond_d
    move p5, v1

    :goto_6
    invoke-static {p5}, Lk0/c;->d(Z)V

    goto :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_d

    :cond_e
    :goto_7
    const/high16 p5, 0x20000000

    and-int/2addr p5, p3

    if-eqz p5, :cond_f

    move p5, v2

    goto :goto_8

    :cond_f
    move p5, v1

    :goto_8
    iput-boolean p5, p0, Landroidx/media3/exoplayer/source/e0;->isLastSampleQueued:Z

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J

    iget p5, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    invoke-virtual {p0, p5}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result p5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aput-wide p1, v0, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    aput-wide v3, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    aput p4, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    aput p3, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->cryptoDatas:[LI0/K;

    aput-object p6, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sourceIds:[J

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/e0;->upstreamSourceId:J

    aput-wide p2, p1, p5

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_10

    move p1, v2

    goto :goto_9

    :cond_10
    move p1, v1

    :goto_9
    if-nez p1, :cond_11

    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/c0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/c0;->a:Landroidx/media3/common/Format;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    :cond_11
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->drmSessionManager:Lu0/q;

    if-eqz p2, :cond_12

    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->drmEventDispatcher:Lu0/m;

    invoke-interface {p2, p3, p1}, Lu0/q;->a(Lu0/m;Landroidx/media3/common/Format;)Lu0/p;

    move-result-object p2

    goto :goto_a

    :cond_12
    sget-object p2, Lu0/p;->i:Lq0/h;

    :goto_a
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/p0;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->getWriteIndex()I

    move-result p4

    new-instance p5, Landroidx/media3/exoplayer/source/c0;

    invoke-direct {p5, p1, p2}, Landroidx/media3/exoplayer/source/c0;-><init>(Landroidx/media3/common/Format;Lu0/p;)V

    iget-object p1, p3, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    iget p2, p3, Landroidx/media3/exoplayer/source/p0;->a:I

    const/4 p6, -0x1

    if-ne p2, p6, :cond_14

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_13

    move p2, v2

    goto :goto_b

    :cond_13
    move p2, v1

    :goto_b
    invoke-static {p2}, Lk0/c;->j(Z)V

    iput v1, p3, Landroidx/media3/exoplayer/source/p0;->a:I

    :cond_14
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_16

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    if-lt p4, p2, :cond_15

    move p6, v2

    goto :goto_c

    :cond_15
    move p6, v1

    :goto_c
    invoke-static {p6}, Lk0/c;->d(Z)V

    if-ne p2, p4, :cond_16

    iget-object p2, p3, Landroidx/media3/exoplayer/source/p0;->c:Landroidx/media3/common/d;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/media3/common/d;->accept(Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p1, p4, p5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_17
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    iget p2, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I

    if-ne p1, p2, :cond_18

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array v0, p1, [I

    new-array v2, p1, [LI0/K;

    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    sub-int/2addr p2, v3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    invoke-static {v4, v3, p4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    invoke-static {v3, v4, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    invoke-static {v3, v4, p6, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    invoke-static {v3, v4, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->cryptoDatas:[LI0/K;

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    invoke-static {v3, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->sourceIds:[J

    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    invoke-static {v3, v4, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    invoke-static {v4, v1, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    invoke-static {v4, v1, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    invoke-static {v4, v1, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    invoke-static {v4, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->cryptoDatas:[LI0/K;

    invoke-static {v4, v1, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->sourceIds:[J

    invoke-static {v4, v1, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Landroidx/media3/exoplayer/source/e0;->offsets:[J

    iput-object p5, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    iput-object p6, p0, Landroidx/media3/exoplayer/source/e0;->flags:[I

    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->sizes:[I

    iput-object v2, p0, Landroidx/media3/exoplayer/source/e0;->cryptoDatas:[LI0/K;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/e0;->sourceIds:[J

    iput v1, p0, Landroidx/media3/exoplayer/source/e0;->relativeFirstIndex:I

    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_18
    monitor-exit p0

    return-void

    :goto_d
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final declared-synchronized seekTo(I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    iput-object v2, v1, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->absoluteFirstIndex:I

    if-lt p1, v1, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    add-int/2addr v2, v1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroidx/media3/exoplayer/source/e0;->startTimeUs:J

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->sampleDataQueue:Landroidx/media3/exoplayer/source/a0;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0;->d:Landroidx/media3/exoplayer/source/Z;

    iput-object v2, v1, Landroidx/media3/exoplayer/source/a0;->e:Landroidx/media3/exoplayer/source/Z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    monitor-exit p0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->f(I)I

    move-result v4

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    const/4 v9, 0x1

    if-eq v1, v2, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aget-wide v5, v3, v4

    cmp-long v3, p1, v5

    if-ltz v3, :cond_1

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/e0;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v5

    if-lez v3, :cond_2

    if-nez p3, :cond_2

    :cond_1
    move-object v3, p0

    goto :goto_5

    :cond_2
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/e0;->allSamplesAreSyncSamples:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v10, -0x1

    if-eqz v3, :cond_7

    sub-int/2addr v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_5

    :try_start_3
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->timesUs:[J

    aget-wide v5, v3, v4

    cmp-long v3, v5, p1

    if-ltz v3, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->capacity:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v3, :cond_4

    move v4, v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_7

    :cond_5
    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v10

    :goto_2
    move-object v3, p0

    move-wide v5, p1

    goto :goto_3

    :cond_7
    sub-int v7, v2, v1

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v5, p1

    :try_start_4
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/e0;->d(IJIZ)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-ne v2, v10, :cond_8

    monitor-exit p0

    return v0

    :cond_8
    :try_start_5
    iput-wide v5, v3, Landroidx/media3/exoplayer/source/e0;->startTimeUs:J

    iget p1, v3, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    add-int/2addr p1, v2

    iput p1, v3, Landroidx/media3/exoplayer/source/e0;->readPosition:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v9

    :catchall_1
    move-exception v0

    :goto_4
    move-object p1, v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_4

    :goto_5
    monitor-exit p0

    return v0

    :catchall_3
    move-exception v0

    move-object v3, p0

    :goto_6
    move-object p1, v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw p1

    :catchall_4
    move-exception v0

    goto :goto_6

    :goto_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public final setSampleOffsetUs(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->sampleOffsetUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->invalidateUpstreamFormatAdjustment()V

    :cond_0
    return-void
.end method

.method public final setStartTimeUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->startTimeUs:J

    return-void
.end method

.method public final setUpstreamFormatChangeListener(Landroidx/media3/exoplayer/source/d0;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/d0;

    return-void
.end method

.method public final declared-synchronized skip(I)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->length:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final sourceId(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->upstreamSourceId:J

    return-void
.end method

.method public final splice()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->pendingSplice:Z

    return-void
.end method
