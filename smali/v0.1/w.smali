.class public final Lv0/w;
.super Ljava/lang/Object;

# interfaces
.implements LE0/n;
.implements LE0/q;
.implements Landroidx/media3/exoplayer/source/h0;
.implements LI0/s;
.implements Landroidx/media3/exoplayer/source/d0;


# static fields
.field public static final n0:Ljava/util/Set;


# instance fields
.field public final A:I

.field public final B:Lcom/bumptech/glide/manager/r;

.field public final C:Ljava/util/ArrayList;

.field public final D:Ljava/util/List;

.field public final E:Lv0/s;

.field public final F:Lv0/s;

.field public final G:Landroid/os/Handler;

.field public final H:Ljava/util/ArrayList;

.field public final I:Ljava/util/Map;

.field public J:LB0/f;

.field public K:[Lv0/v;

.field public L:[I

.field public final M:Ljava/util/HashSet;

.field public final N:Landroid/util/SparseIntArray;

.field public O:Lv0/u;

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Landroidx/media3/common/Format;

.field public V:Landroidx/media3/common/Format;

.field public W:Z

.field public X:Landroidx/media3/exoplayer/source/t0;

.field public Y:Ljava/util/Set;

.field public Z:[I

.field public a0:I

.field public final b:Ljava/lang/String;

.field public b0:Z

.field public c0:[Z

.field public d0:[Z

.field public e0:J

.field public f0:J

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public k0:J

.field public l0:Landroidx/media3/common/DrmInitData;

.field public m0:Lv0/o;

.field public final q:I

.field public final r:Lv0/f;

.field public final s:Lv0/k;

.field public final t:LE0/b;

.field public final u:Landroidx/media3/common/Format;

.field public final v:Lu0/q;

.field public final w:Lu0/m;

.field public final x:LE0/m;

.field public final y:LE0/s;

.field public final z:LA/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lv0/w;->n0:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILv0/f;Lv0/k;Ljava/util/Map;LE0/b;JLandroidx/media3/common/Format;Lu0/q;Lu0/m;LE0/m;LA/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/w;->b:Ljava/lang/String;

    iput p2, p0, Lv0/w;->q:I

    iput-object p3, p0, Lv0/w;->r:Lv0/f;

    iput-object p4, p0, Lv0/w;->s:Lv0/k;

    iput-object p5, p0, Lv0/w;->I:Ljava/util/Map;

    iput-object p6, p0, Lv0/w;->t:LE0/b;

    iput-object p9, p0, Lv0/w;->u:Landroidx/media3/common/Format;

    iput-object p10, p0, Lv0/w;->v:Lu0/q;

    iput-object p11, p0, Lv0/w;->w:Lu0/m;

    iput-object p12, p0, Lv0/w;->x:LE0/m;

    iput-object p13, p0, Lv0/w;->z:LA/d;

    iput p14, p0, Lv0/w;->A:I

    new-instance p1, LE0/s;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, LE0/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv0/w;->y:LE0/s;

    new-instance p1, Lcom/bumptech/glide/manager/r;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/manager/r;-><init>(IB)V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    iput-boolean p3, p1, Lcom/bumptech/glide/manager/r;->q:Z

    iput-object p2, p1, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    iput-object p1, p0, Lv0/w;->B:Lcom/bumptech/glide/manager/r;

    new-array p1, p3, [I

    iput-object p1, p0, Lv0/w;->L:[I

    new-instance p1, Ljava/util/HashSet;

    sget-object p4, Lv0/w;->n0:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p5

    invoke-direct {p1, p5}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lv0/w;->M:Ljava/util/HashSet;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p1, p4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lv0/w;->N:Landroid/util/SparseIntArray;

    new-array p1, p3, [Lv0/v;

    iput-object p1, p0, Lv0/w;->K:[Lv0/v;

    new-array p1, p3, [Z

    iput-object p1, p0, Lv0/w;->d0:[Z

    new-array p1, p3, [Z

    iput-object p1, p0, Lv0/w;->c0:[Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lv0/w;->D:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv0/w;->H:Ljava/util/ArrayList;

    new-instance p1, Lv0/s;

    invoke-direct {p1, p0, p3}, Lv0/s;-><init>(Lv0/w;I)V

    iput-object p1, p0, Lv0/w;->E:Lv0/s;

    new-instance p1, Lv0/s;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lv0/s;-><init>(Lv0/w;I)V

    iput-object p1, p0, Lv0/w;->F:Lv0/s;

    invoke-static {p2}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lv0/w;->G:Landroid/os/Handler;

    iput-wide p7, p0, Lv0/w;->e0:J

    iput-wide p7, p0, Lv0/w;->f0:J

    return-void
.end method

.method public static q(II)LI0/o;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unmapped track with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, LI0/o;

    invoke-direct {p0}, LI0/o;-><init>()V

    return-object p0
.end method

.method public static u(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/C;->s(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/C;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/MimeTypes;->getCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v5, p0, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v5, p0, Landroidx/media3/common/Format;->roleFlags:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    iget v6, p0, Landroidx/media3/common/Format;->averageBitrate:I

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    goto :goto_2

    :cond_3
    move p2, v5

    :goto_2
    invoke-virtual {v4, p2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v1, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {p2, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p2, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    :cond_5
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    if-eq v1, v5, :cond_6

    if-ne v0, v2, :cond_6

    invoke-virtual {p2, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    :cond_6
    iget-object p0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz p0, :cond_8

    iget-object p1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p0

    :cond_7
    invoke-virtual {p2, p0}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    :cond_8
    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static x(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Lv0/w;->y:LE0/s;

    invoke-virtual {v0}, LE0/s;->a()V

    iget-object v0, p0, Lv0/w;->s:Lv0/k;

    iget-object v1, v0, Lv0/k;->n:Landroidx/media3/exoplayer/source/b;

    if-nez v1, :cond_2

    iget-object v1, v0, Lv0/k;->o:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lv0/k;->s:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lv0/k;->g:Lw0/c;

    iget-object v0, v0, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/b;

    iget-object v1, v0, Lw0/b;->q:LE0/s;

    invoke-virtual {v1}, LE0/s;->a()V

    iget-object v0, v0, Lw0/b;->y:Ljava/io/IOException;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    throw v1
.end method

.method public final varargs B([Landroidx/media3/common/TrackGroup;[I)V
    .locals 5

    invoke-virtual {p0, p1}, Lv0/w;->t([Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/source/t0;

    move-result-object p1

    iput-object p1, p0, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lv0/w;->Y:Ljava/util/Set;

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Lv0/w;->Y:Ljava/util/Set;

    iget-object v4, p0, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lv0/w;->a0:I

    new-instance p1, Lv0/t;

    const/4 p2, 0x0

    iget-object v0, p0, Lv0/w;->r:Lv0/f;

    invoke-direct {p1, p2, v0}, Lv0/t;-><init>(ILjava/lang/Object;)V

    iget-object p2, p0, Lv0/w;->G:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/w;->S:Z

    return-void
.end method

.method public final C()V
    .locals 6

    iget-object v0, p0, Lv0/w;->K:[Lv0/v;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lv0/w;->g0:Z

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/e0;->reset(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lv0/w;->g0:Z

    return-void
.end method

.method public final D(JZ)Z
    .locals 8

    iput-wide p1, p0, Lv0/w;->e0:J

    invoke-virtual {p0}, Lv0/w;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lv0/w;->f0:J

    return v1

    :cond_0
    iget-object v0, p0, Lv0/w;->s:Lv0/k;

    iget-boolean v0, v0, Lv0/k;->p:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lv0/w;->C:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv0/o;

    iget-wide v6, v5, LB0/f;->v:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_1
    iget-boolean v0, p0, Lv0/w;->R:Z

    if-eqz v0, :cond_7

    if-nez p3, :cond_7

    iget-object p3, p0, Lv0/w;->K:[Lv0/v;

    array-length p3, p3

    move v0, v4

    :goto_2
    if-ge v0, p3, :cond_6

    iget-object v6, p0, Lv0/w;->K:[Lv0/v;

    aget-object v6, v6, v0

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Lv0/o;->f(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/e0;->seekTo(I)Z

    move-result v6

    goto :goto_3

    :cond_3
    invoke-virtual {v6, p1, p2, v4}, Landroidx/media3/exoplayer/source/e0;->seekTo(JZ)Z

    move-result v6

    :goto_3
    if-nez v6, :cond_5

    iget-object v6, p0, Lv0/w;->d0:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lv0/w;->b0:Z

    if-nez v6, :cond_5

    :cond_4
    move p3, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move p3, v1

    :goto_4
    if-eqz p3, :cond_7

    return v4

    :cond_7
    iput-wide p1, p0, Lv0/w;->f0:J

    iput-boolean v4, p0, Lv0/w;->i0:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lv0/w;->y:LE0/s;

    invoke-virtual {p1}, LE0/s;->d()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lv0/w;->R:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lv0/w;->K:[Lv0/v;

    array-length p3, p2

    :goto_5
    if-ge v4, p3, :cond_8

    aget-object v0, p2, v4

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->discardToEnd()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, LE0/s;->b()V

    return v1

    :cond_9
    iput-object v2, p1, LE0/s;->r:Ljava/io/IOException;

    invoke-virtual {p0}, Lv0/w;->C()V

    return v1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lv0/w;->G:Landroid/os/Handler;

    iget-object v1, p0, Lv0/w;->E:Lv0/s;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lv0/w;->K:[Lv0/v;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 58

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lv0/w;->i0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lv0/w;->y:LE0/s;

    invoke-virtual {v1}, LE0/s;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, LE0/s;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move/from16 v23, v2

    goto/16 :goto_33

    :cond_1
    invoke-virtual {v0}, Lv0/w;->y()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-wide v4, v0, Lv0/w;->f0:J

    iget-object v6, v0, Lv0/w;->K:[Lv0/v;

    array-length v7, v6

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    iget-wide v10, v0, Lv0/w;->f0:J

    invoke-virtual {v9, v10, v11}, Landroidx/media3/exoplayer/source/e0;->setStartTimeUs(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v13, v3

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Lv0/w;->w()Lv0/o;

    move-result-object v3

    iget-boolean v4, v3, Lv0/o;->W:Z

    if-eqz v4, :cond_4

    iget-wide v3, v3, LB0/f;->w:J

    :goto_2
    move-wide v4, v3

    goto :goto_3

    :cond_4
    iget-wide v4, v0, Lv0/w;->e0:J

    iget-wide v6, v3, LB0/f;->v:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lv0/w;->D:Ljava/util/List;

    goto :goto_1

    :goto_4
    iget-object v15, v0, Lv0/w;->B:Lcom/bumptech/glide/manager/r;

    const/4 v3, 0x0

    iput-object v3, v15, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    iput-boolean v2, v15, Lcom/bumptech/glide/manager/r;->q:Z

    iput-object v3, v15, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    iget-boolean v6, v0, Lv0/w;->S:Z

    if-nez v6, :cond_6

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v16, v2

    :goto_5
    move-object/from16 v17, v3

    goto :goto_7

    :cond_6
    :goto_6
    const/16 v16, 0x1

    goto :goto_5

    :goto_7
    iget-object v3, v0, Lv0/w;->s:Lv0/k;

    iget-object v6, v3, Lv0/k;->j:Lv0/f;

    iget-object v8, v3, Lv0/k;->e:[Landroid/net/Uri;

    iget-object v9, v3, Lv0/k;->g:Lw0/c;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v10, v17

    goto :goto_8

    :cond_7
    invoke-static {v13}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv0/o;

    :goto_8
    if-nez v10, :cond_8

    const/4 v12, -0x1

    :goto_9
    move-object/from16 v14, p1

    move-object/from16 v19, v8

    goto :goto_a

    :cond_8
    iget-object v12, v3, Lv0/k;->h:Landroidx/media3/common/TrackGroup;

    iget-object v14, v10, LB0/f;->s:Landroidx/media3/common/Format;

    invoke-virtual {v12, v14}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v12

    goto :goto_9

    :goto_a
    iget-wide v7, v14, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    sub-long v20, v4, v7

    move/from16 v22, v12

    iget-wide v11, v3, Lv0/k;->r:J

    move-object/from16 v24, v3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v25, v11, v2

    if-eqz v25, :cond_9

    sub-long/2addr v11, v7

    goto :goto_b

    :cond_9
    move-wide v11, v2

    :goto_b
    move-wide/from16 v25, v2

    move-object/from16 v2, v24

    if-eqz v10, :cond_a

    iget-boolean v3, v2, Lv0/k;->p:Z

    if-nez v3, :cond_a

    move-object/from16 v24, v15

    iget-wide v14, v10, LB0/f;->w:J

    move-object v3, v6

    move-wide/from16 v27, v7

    iget-wide v6, v10, LB0/f;->v:J

    sub-long/2addr v14, v6

    sub-long v6, v20, v14

    move-object/from16 v29, v9

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    cmp-long v6, v11, v25

    if-eqz v6, :cond_b

    sub-long/2addr v11, v14

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_c

    :cond_a
    move-object v3, v6

    move-wide/from16 v27, v7

    move-object/from16 v29, v9

    move-object/from16 v24, v15

    :cond_b
    :goto_c
    invoke-virtual {v2, v10, v4, v5}, Lv0/k;->a(Lv0/o;J)[LB0/p;

    move-result-object v14

    iget-object v6, v2, Lv0/k;->q:LD0/v;

    move-wide v7, v4

    move-object v4, v10

    move-wide/from16 v9, v20

    move-wide/from16 v20, v7

    move-object/from16 p1, v3

    move/from16 v3, v22

    move-wide/from16 v7, v27

    move-object/from16 v15, v29

    const/4 v5, -0x1

    invoke-interface/range {v6 .. v14}, LD0/v;->a(JJJLjava/util/List;[LB0/p;)V

    iget-object v6, v2, Lv0/k;->q:LD0/v;

    invoke-interface {v6}, LD0/v;->l()I

    move-result v12

    if-eq v3, v12, :cond_c

    const/4 v7, 0x1

    goto :goto_d

    :cond_c
    const/4 v7, 0x0

    :goto_d
    aget-object v11, v19, v12

    invoke-virtual {v15, v11}, Lw0/c;->c(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v13, v24

    iput-object v11, v13, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    iget-boolean v3, v2, Lv0/k;->s:Z

    iget-object v4, v2, Lv0/k;->o:Landroid/net/Uri;

    invoke-virtual {v11, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, v2, Lv0/k;->s:Z

    iput-object v11, v2, Lv0/k;->o:Landroid/net/Uri;

    :goto_e
    move-object/from16 v24, v1

    move-object v1, v13

    goto/16 :goto_30

    :cond_d
    move-object/from16 v13, v24

    const/4 v6, 0x1

    invoke-virtual {v15, v11, v6}, Lw0/c;->a(Landroid/net/Uri;Z)Lw0/i;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v9, v8, Lw0/i;->h:J

    iget-boolean v6, v8, Lw0/m;->c:Z

    iput-boolean v6, v2, Lv0/k;->p:Z

    iget-boolean v6, v8, Lw0/i;->o:Z

    if-eqz v6, :cond_e

    move/from16 v22, v3

    move-object/from16 v24, v4

    move-wide/from16 v5, v25

    goto :goto_f

    :cond_e
    iget-wide v5, v8, Lw0/i;->u:J

    add-long/2addr v5, v9

    move/from16 v22, v3

    move-object/from16 v24, v4

    iget-wide v3, v15, Lw0/c;->C:J

    sub-long/2addr v5, v3

    :goto_f
    iput-wide v5, v2, Lv0/k;->r:J

    iget-wide v3, v15, Lw0/c;->C:J

    sub-long/2addr v9, v3

    move-object v3, v2

    move v5, v7

    move-object v6, v8

    move-wide v7, v9

    move-wide/from16 v9, v20

    move/from16 v14, v22

    move-object/from16 v4, v24

    const/4 v2, -0x1

    move-object/from16 v20, v11

    move/from16 v21, v12

    invoke-virtual/range {v3 .. v10}, Lv0/k;->c(Lv0/o;ZLw0/i;JJ)Landroid/util/Pair;

    move-result-object v11

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v24, v3

    iget-wide v2, v6, Lw0/i;->k:J

    cmp-long v2, v27, v2

    if-gez v2, :cond_f

    if-eqz v4, :cond_f

    if-eqz v5, :cond_f

    aget-object v11, v19, v14

    const/4 v6, 0x1

    invoke-virtual {v15, v11, v6}, Lw0/c;->a(Landroid/net/Uri;Z)Lw0/i;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v2, Lw0/i;->h:J

    iget-wide v7, v15, Lw0/c;->C:J

    sub-long v7, v5, v7

    const/4 v5, 0x0

    move-object v6, v2

    move-object/from16 v3, v24

    invoke-virtual/range {v3 .. v10}, Lv0/k;->c(Lv0/o;ZLw0/i;JJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    move v2, v14

    :goto_10
    move-wide v9, v7

    move-object v8, v6

    move-wide/from16 v6, v27

    goto :goto_11

    :cond_f
    move-object/from16 v3, v24

    move v5, v11

    move-object/from16 v11, v20

    move/from16 v2, v21

    goto :goto_10

    :goto_11
    iget-object v12, v8, Lw0/i;->r:Lp3/H;

    move-wide/from16 v21, v9

    iget-wide v9, v8, Lw0/i;->k:J

    move-wide/from16 v27, v9

    iget-object v9, v8, Lw0/m;->a:Ljava/lang/String;

    iget-boolean v10, v8, Lw0/m;->c:Z

    move/from16 v24, v10

    if-eq v2, v14, :cond_10

    const/4 v10, -0x1

    if-eq v14, v10, :cond_10

    aget-object v10, v19, v14

    iget-object v14, v15, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw0/b;

    if-eqz v10, :cond_10

    const/4 v14, 0x0

    iput-boolean v14, v10, Lw0/b;->z:Z

    :cond_10
    cmp-long v10, v6, v27

    if-gez v10, :cond_11

    new-instance v2, Landroidx/media3/exoplayer/source/b;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    iput-object v2, v3, Lv0/k;->n:Landroidx/media3/exoplayer/source/b;

    goto/16 :goto_e

    :cond_11
    iget-object v10, v8, Lw0/i;->s:Lp3/H;

    sub-long v14, v6, v27

    long-to-int v14, v14

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const-wide/16 v29, 0x1

    if-ne v14, v15, :cond_13

    const/4 v15, -0x1

    if-eq v5, v15, :cond_12

    goto :goto_12

    :cond_12
    const/4 v5, 0x0

    :goto_12
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_17

    new-instance v14, Lv0/j;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw0/g;

    invoke-direct {v14, v10, v6, v7, v5}, Lv0/j;-><init>(Lw0/g;JI)V

    move-object v5, v14

    goto :goto_13

    :cond_13
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lw0/f;

    move/from16 v19, v14

    const/4 v14, -0x1

    if-ne v5, v14, :cond_14

    new-instance v5, Lv0/j;

    invoke-direct {v5, v15, v6, v7, v14}, Lv0/j;-><init>(Lw0/g;JI)V

    goto :goto_13

    :cond_14
    iget-object v14, v15, Lw0/f;->B:Lp3/H;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_15

    new-instance v10, Lv0/j;

    iget-object v14, v15, Lw0/f;->B:Lp3/H;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lw0/g;

    invoke-direct {v10, v14, v6, v7, v5}, Lv0/j;-><init>(Lw0/g;JI)V

    move-object v5, v10

    goto :goto_13

    :cond_15
    const/16 v18, 0x1

    add-int/lit8 v14, v19, 0x1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_16

    new-instance v5, Lv0/j;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw0/g;

    add-long v6, v6, v29

    const/4 v14, -0x1

    invoke-direct {v5, v10, v6, v7, v14}, Lv0/j;-><init>(Lw0/g;JI)V

    goto :goto_13

    :cond_16
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    new-instance v5, Lv0/j;

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw0/g;

    add-long v6, v6, v29

    invoke-direct {v5, v10, v6, v7, v15}, Lv0/j;-><init>(Lw0/g;JI)V

    goto :goto_13

    :cond_17
    const/4 v5, 0x0

    :goto_13
    if-nez v5, :cond_1b

    iget-boolean v5, v8, Lw0/i;->o:Z

    if-nez v5, :cond_18

    iput-object v11, v13, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    iget-boolean v2, v3, Lv0/k;->s:Z

    iget-object v4, v3, Lv0/k;->o:Landroid/net/Uri;

    invoke-virtual {v11, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v2, v4

    iput-boolean v2, v3, Lv0/k;->s:Z

    iput-object v11, v3, Lv0/k;->o:Landroid/net/Uri;

    goto/16 :goto_e

    :cond_18
    if-nez v16, :cond_19

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    const/4 v6, 0x1

    goto :goto_14

    :cond_1a
    new-instance v5, Lv0/j;

    invoke-static {v12}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw0/g;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v14, v7

    add-long v14, v27, v14

    sub-long v14, v14, v29

    const/4 v12, -0x1

    invoke-direct {v5, v6, v14, v15, v12}, Lv0/j;-><init>(Lw0/g;JI)V

    goto :goto_15

    :goto_14
    iput-boolean v6, v13, Lcom/bumptech/glide/manager/r;->q:Z

    goto/16 :goto_e

    :cond_1b
    :goto_15
    iget-boolean v6, v5, Lv0/j;->d:Z

    iget-object v7, v5, Lv0/j;->a:Lw0/g;

    const/4 v14, 0x0

    iput-boolean v14, v3, Lv0/k;->s:Z

    const/4 v10, 0x0

    iput-object v10, v3, Lv0/k;->o:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v10, v7, Lw0/g;->q:Lw0/f;

    iget-wide v14, v7, Lw0/g;->t:J

    if-eqz v10, :cond_1d

    iget-object v10, v10, Lw0/g;->v:Ljava/lang/String;

    if-nez v10, :cond_1c

    goto :goto_17

    :cond_1c
    invoke-static {v9, v10}, Lk0/c;->y(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_16
    move/from16 v16, v6

    const/4 v12, 0x1

    goto :goto_18

    :cond_1d
    :goto_17
    const/4 v10, 0x0

    goto :goto_16

    :goto_18
    invoke-virtual {v3, v10, v2, v12}, Lv0/k;->d(Landroid/net/Uri;IZ)Lv0/g;

    move-result-object v6

    iput-object v6, v13, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    if-eqz v6, :cond_1e

    goto :goto_1f

    :cond_1e
    iget-object v6, v7, Lw0/g;->v:Ljava/lang/String;

    if-nez v6, :cond_1f

    const/4 v6, 0x0

    :goto_19
    move-wide/from16 v19, v14

    const/4 v12, 0x0

    goto :goto_1a

    :cond_1f
    invoke-static {v9, v6}, Lk0/c;->y(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_19

    :goto_1a
    invoke-virtual {v3, v6, v2, v12}, Lv0/k;->d(Landroid/net/Uri;IZ)Lv0/g;

    move-result-object v14

    iput-object v14, v13, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    if-eqz v14, :cond_20

    goto :goto_1f

    :cond_20
    if-nez v4, :cond_22

    sget-object v12, Lv0/o;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_21
    :goto_1b
    const/16 v56, 0x0

    goto :goto_1e

    :cond_22
    iget-object v12, v4, Lv0/o;->B:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    iget-boolean v12, v4, Lv0/o;->W:Z

    if-eqz v12, :cond_23

    goto :goto_1b

    :cond_23
    add-long v14, v21, v19

    instance-of v12, v7, Lw0/d;

    if-eqz v12, :cond_26

    move-object v12, v7

    check-cast v12, Lw0/d;

    iget-boolean v12, v12, Lw0/d;->A:Z

    if-nez v12, :cond_25

    iget v12, v5, Lv0/j;->c:I

    if-nez v12, :cond_24

    if-eqz v24, :cond_24

    goto :goto_1c

    :cond_24
    const/16 v24, 0x0

    goto :goto_1d

    :cond_25
    :goto_1c
    const/16 v24, 0x1

    :cond_26
    :goto_1d
    if-eqz v24, :cond_27

    move-wide/from16 v27, v14

    iget-wide v14, v4, LB0/f;->w:J

    cmp-long v12, v27, v14

    if-gez v12, :cond_21

    :cond_27
    const/16 v56, 0x1

    :goto_1e
    if-eqz v56, :cond_28

    if-eqz v16, :cond_28

    :goto_1f
    goto/16 :goto_e

    :cond_28
    iget-object v12, v3, Lv0/k;->a:Lv0/m;

    iget-object v14, v3, Lv0/k;->b:Landroidx/media3/datasource/DataSource;

    iget-object v15, v3, Lv0/k;->f:[Landroidx/media3/common/Format;

    aget-object v31, v15, v2

    iget-object v2, v3, Lv0/k;->i:Ljava/util/List;

    iget-object v15, v3, Lv0/k;->q:LD0/v;

    invoke-interface {v15}, LD0/v;->n()I

    move-result v38

    iget-object v15, v3, Lv0/k;->q:LD0/v;

    invoke-interface {v15}, LD0/v;->q()Ljava/lang/Object;

    move-result-object v39

    iget-boolean v15, v3, Lv0/k;->l:Z

    move-object/from16 v37, v2

    iget-object v2, v3, Lv0/k;->d:Lv0/f;

    if-nez v6, :cond_29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v28, v12

    move/from16 v50, v15

    const/4 v6, 0x0

    move-object/from16 v12, p1

    goto :goto_20

    :cond_29
    move-object/from16 v28, v12

    move/from16 v50, v15

    move-object/from16 v12, p1

    iget-object v15, v12, Lv0/f;->b:Ljava/lang/Object;

    check-cast v15, Lv0/e;

    invoke-virtual {v15, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    :goto_20
    if-nez v10, :cond_2a

    const/4 v10, 0x0

    goto :goto_21

    :cond_2a
    iget-object v12, v12, Lv0/f;->b:Ljava/lang/Object;

    check-cast v12, Lv0/e;

    invoke-virtual {v12, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    :goto_21
    iget-object v3, v3, Lv0/k;->k:Lq0/q;

    sget-object v12, Lv0/o;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v12, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v12}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v15, v7, Lw0/g;->b:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-wide v0, v7, Lw0/g;->r:J

    invoke-static {v9, v15}, Lk0/c;->y(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v12

    move-wide/from16 v29, v0

    iget-wide v0, v7, Lw0/g;->x:J

    invoke-virtual {v12, v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    move-object v1, v13

    iget-wide v12, v7, Lw0/g;->y:J

    invoke-virtual {v0, v12, v13}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    if-eqz v16, :cond_2b

    const/16 v12, 0x8

    goto :goto_22

    :cond_2b
    const/4 v12, 0x0

    :goto_22
    invoke-virtual {v0, v12}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    if-eqz v6, :cond_2c

    const/16 v32, 0x1

    goto :goto_23

    :cond_2c
    const/16 v32, 0x0

    :goto_23
    if-eqz v32, :cond_2d

    iget-object v12, v7, Lw0/g;->w:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lv0/o;->d(Ljava/lang/String;)[B

    move-result-object v12

    goto :goto_24

    :cond_2d
    const/4 v12, 0x0

    :goto_24
    if-eqz v6, :cond_2e

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lv0/a;

    invoke-direct {v13, v14, v6, v12}, Lv0/a;-><init>(Landroidx/media3/datasource/DataSource;[B[B)V

    goto :goto_25

    :cond_2e
    move-object v13, v14

    :goto_25
    iget-object v6, v7, Lw0/g;->q:Lw0/f;

    if-eqz v6, :cond_32

    if-eqz v10, :cond_2f

    const/4 v12, 0x1

    goto :goto_26

    :cond_2f
    const/4 v12, 0x0

    :goto_26
    if-eqz v12, :cond_30

    iget-object v15, v6, Lw0/g;->w:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lv0/o;->d(Ljava/lang/String;)[B

    move-result-object v15

    :goto_27
    move-object/from16 p1, v0

    goto :goto_28

    :cond_30
    const/4 v15, 0x0

    goto :goto_27

    :goto_28
    iget-object v0, v6, Lw0/g;->b:Ljava/lang/String;

    invoke-static {v9, v0}, Lk0/c;->y(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v9, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v9}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v9, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    move/from16 v27, v12

    move-object v9, v13

    iget-wide v12, v6, Lw0/g;->x:J

    invoke-virtual {v0, v12, v13}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    iget-wide v12, v6, Lw0/g;->y:J

    invoke-virtual {v0, v12, v13}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    if-eqz v10, :cond_31

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lv0/a;

    invoke-direct {v6, v14, v10, v15}, Lv0/a;-><init>(Landroidx/media3/datasource/DataSource;[B[B)V

    move-object v14, v6

    :cond_31
    move-object/from16 v33, v14

    move/from16 v35, v27

    goto :goto_29

    :cond_32
    move-object/from16 p1, v0

    move-object v9, v13

    const/4 v0, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    :goto_29
    add-long v40, v21, v19

    add-long v42, v40, v29

    iget v6, v8, Lw0/i;->j:I

    iget v8, v7, Lw0/g;->s:I

    add-int/2addr v6, v8

    if-eqz v4, :cond_37

    iget-object v8, v4, Lv0/o;->F:Landroidx/media3/datasource/DataSpec;

    if-eq v0, v8, :cond_34

    if-eqz v0, :cond_33

    if-eqz v8, :cond_33

    iget-object v10, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v12, v8, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v10, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    iget-wide v12, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v14, v8, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v8, v12, v14

    if-nez v8, :cond_33

    goto :goto_2a

    :cond_33
    const/4 v8, 0x0

    goto :goto_2b

    :cond_34
    :goto_2a
    const/4 v8, 0x1

    :goto_2b
    iget-object v10, v4, Lv0/o;->B:Landroid/net/Uri;

    invoke-virtual {v11, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    iget-boolean v10, v4, Lv0/o;->W:Z

    if-eqz v10, :cond_35

    const/4 v10, 0x1

    goto :goto_2c

    :cond_35
    const/4 v10, 0x0

    :goto_2c
    iget-object v12, v4, Lv0/o;->N:LW0/i;

    iget-object v13, v4, Lv0/o;->O:Lk0/u;

    if-eqz v8, :cond_36

    if-eqz v10, :cond_36

    iget-boolean v8, v4, Lv0/o;->Y:Z

    if-nez v8, :cond_36

    iget v8, v4, Lv0/o;->A:I

    if-ne v8, v6, :cond_36

    iget-object v4, v4, Lv0/o;->R:Lv0/b;

    move-object/from16 v17, v4

    goto :goto_2d

    :cond_36
    const/16 v17, 0x0

    :goto_2d
    move-object/from16 v53, v17

    :goto_2e
    move-object/from16 v54, v12

    move-object/from16 v55, v13

    goto :goto_2f

    :cond_37
    new-instance v12, LW0/i;

    const/4 v10, 0x0

    invoke-direct {v12, v10}, LW0/i;-><init>(LW0/g;)V

    new-instance v13, Lk0/u;

    const/16 v4, 0xa

    invoke-direct {v13, v4}, Lk0/u;-><init>(I)V

    move-object/from16 v53, v10

    goto :goto_2e

    :goto_2f
    new-instance v27, Lv0/o;

    iget-wide v12, v5, Lv0/j;->b:J

    iget v4, v5, Lv0/j;->c:I

    const/16 v18, 0x1

    xor-int/lit8 v47, v16, 0x1

    iget-boolean v5, v7, Lw0/g;->z:Z

    iget-object v2, v2, Lv0/f;->b:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk0/z;

    if-nez v8, :cond_38

    new-instance v8, Lk0/z;

    const-wide v14, 0x7ffffffffffffffeL

    invoke-direct {v8, v14, v15}, Lk0/z;-><init>(J)V

    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_38
    move-object/from16 v51, v8

    iget-object v2, v7, Lw0/g;->u:Landroidx/media3/common/DrmInitData;

    move-object/from16 v30, p1

    move-object/from16 v34, v0

    move-object/from16 v52, v2

    move-object/from16 v57, v3

    move/from16 v46, v4

    move/from16 v49, v5

    move/from16 v48, v6

    move-object/from16 v29, v9

    move-object/from16 v36, v11

    move-wide/from16 v44, v12

    invoke-direct/range {v27 .. v57}, Lv0/o;-><init>(Lv0/m;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ZLandroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLk0/z;Landroidx/media3/common/DrmInitData;Lv0/b;LW0/i;Lk0/u;ZLq0/q;)V

    move-object/from16 v0, v27

    iput-object v0, v1, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    :goto_30
    iget-boolean v0, v1, Lcom/bumptech/glide/manager/r;->q:Z

    iget-object v2, v1, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v2, LB0/f;

    iget-object v1, v1, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    if-eqz v0, :cond_39

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v3, v0, Lv0/w;->f0:J

    const/4 v6, 0x1

    iput-boolean v6, v0, Lv0/w;->i0:Z

    return v6

    :cond_39
    move-object/from16 v0, p0

    const/4 v6, 0x1

    if-nez v2, :cond_3b

    if-eqz v1, :cond_3a

    iget-object v2, v0, Lv0/w;->r:Lv0/f;

    iget-object v2, v2, Lv0/f;->b:Ljava/lang/Object;

    check-cast v2, Lv0/p;

    iget-object v2, v2, Lv0/p;->q:Lw0/c;

    iget-object v2, v2, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/b;

    invoke-virtual {v1, v6}, Lw0/b;->c(Z)V

    const/16 v23, 0x0

    return v23

    :cond_3a
    const/16 v23, 0x0

    goto/16 :goto_33

    :cond_3b
    instance-of v1, v2, Lv0/o;

    if-eqz v1, :cond_3e

    move-object v1, v2

    check-cast v1, Lv0/o;

    iput-object v1, v0, Lv0/w;->m0:Lv0/o;

    iget-object v3, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iput-object v3, v0, Lv0/w;->U:Landroidx/media3/common/Format;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, v0, Lv0/w;->f0:J

    iget-object v3, v0, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v3

    iget-object v4, v0, Lv0/w;->K:[Lv0/v;

    array-length v5, v4

    const/4 v14, 0x0

    :goto_31
    if-ge v14, v5, :cond_3c

    aget-object v6, v4, v14

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/e0;->getWriteIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_31

    :cond_3c
    invoke-virtual {v3}, Lp3/E;->i()Lp3/Y;

    move-result-object v3

    iput-object v0, v1, Lv0/o;->S:Lv0/w;

    iput-object v3, v1, Lv0/o;->X:Lp3/H;

    iget-object v3, v0, Lv0/w;->K:[Lv0/v;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v4, :cond_3e

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v1, Lv0/o;->z:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/source/e0;->sourceId(J)V

    iget-boolean v7, v1, Lv0/o;->C:Z

    if-eqz v7, :cond_3d

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/e0;->splice()V

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_3e
    iput-object v2, v0, Lv0/w;->J:LB0/f;

    iget v1, v2, LB0/f;->r:I

    iget-object v3, v0, Lv0/w;->x:LE0/m;

    check-cast v3, LE0/j;

    invoke-virtual {v3, v1}, LE0/j;->b(I)I

    move-result v1

    move-object/from16 v3, v24

    invoke-virtual {v3, v2, v0, v1}, LE0/s;->f(LE0/p;LE0/n;I)J

    new-instance v5, Landroidx/media3/exoplayer/source/v;

    iget-object v1, v2, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v5, v1}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    iget v6, v2, LB0/f;->r:I

    iget-object v8, v2, LB0/f;->s:Landroidx/media3/common/Format;

    iget v9, v2, LB0/f;->t:I

    iget-object v10, v2, LB0/f;->u:Ljava/lang/Object;

    iget-wide v11, v2, LB0/f;->v:J

    iget-wide v13, v2, LB0/f;->w:J

    iget-object v4, v0, Lv0/w;->z:LA/d;

    iget v7, v0, Lv0/w;->q:I

    invoke-virtual/range {v4 .. v14}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    const/16 v18, 0x1

    return v18

    :goto_33
    return v23
.end method

.method public final d()J
    .locals 2

    invoke-virtual {p0}, Lv0/w;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lv0/w;->f0:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lv0/w;->i0:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lv0/w;->w()Lv0/o;

    move-result-object v0

    iget-wide v0, v0, LB0/f;->w:J

    return-wide v0
.end method

.method public final endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv0/w;->j0:Z

    iget-object v0, p0, Lv0/w;->G:Landroid/os/Handler;

    iget-object v1, p0, Lv0/w;->F:Lv0/s;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(LE0/p;JJLjava/io/IOException;I)LE0/l;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move-object/from16 v1, p1

    check-cast v1, LB0/f;

    instance-of v2, v1, Lv0/o;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lv0/o;

    iget-boolean v3, v3, Lv0/o;->Z:Z

    if-nez v3, :cond_1

    instance-of v3, v12, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, v12

    check-cast v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    :cond_0
    sget-object v1, LE0/s;->s:LE0/l;

    return-object v1

    :cond_1
    iget-object v3, v1, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v4

    move v6, v2

    new-instance v2, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-wide/from16 v7, p4

    invoke-direct {v2, v7, v8}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-wide v7, v1, LB0/f;->v:J

    invoke-static {v7, v8}, Lk0/C;->c0(J)J

    iget-wide v7, v1, LB0/f;->w:J

    invoke-static {v7, v8}, Lk0/C;->c0(J)J

    new-instance v3, LE1/t;

    const/4 v7, 0x3

    move/from16 v8, p7

    invoke-direct {v3, v8, v7, v12}, LE1/t;-><init>(IILjava/lang/Object;)V

    iget-object v7, v0, Lv0/w;->s:Lv0/k;

    iget-object v8, v7, Lv0/k;->q:LD0/v;

    invoke-static {v8}, LD0/A;->a(LD0/v;)LE0/k;

    move-result-object v8

    iget-object v14, v0, Lv0/w;->x:LE0/m;

    move-object v9, v14

    check-cast v9, LE0/j;

    invoke-virtual {v9, v8, v3}, LE0/j;->a(LE0/k;LE1/t;)LE0/l;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v11, v8, LE0/l;->a:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    iget-wide v10, v8, LE0/l;->b:J

    iget-object v8, v7, Lv0/k;->q:LD0/v;

    iget-object v7, v7, Lv0/k;->h:Landroidx/media3/common/TrackGroup;

    iget-object v13, v1, LB0/f;->s:Landroidx/media3/common/Format;

    invoke-virtual {v7, v13}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v7

    invoke-interface {v8, v7}, LD0/v;->t(I)I

    move-result v7

    invoke-interface {v8, v7, v10, v11}, LD0/v;->o(IJ)Z

    move-result v7

    move v15, v7

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_6

    if-eqz v6, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    iget-object v3, v0, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/o;

    if-ne v4, v1, :cond_3

    move v10, v5

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    invoke-static {v10}, Lk0/c;->j(Z)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v3, v0, Lv0/w;->e0:J

    iput-wide v3, v0, Lv0/w;->f0:J

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/o;

    iput-boolean v5, v3, Lv0/o;->Y:Z

    :cond_5
    :goto_2
    sget-object v3, LE0/s;->t:LE0/l;

    :goto_3
    move-object/from16 v16, v3

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v3}, LE0/j;->c(LE1/t;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_7

    new-instance v5, LE0/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v3, v4}, LE0/l;-><init>(IZJ)V

    move-object v3, v5

    goto :goto_3

    :cond_7
    sget-object v3, LE0/s;->u:LE0/l;

    goto :goto_3

    :goto_4
    invoke-virtual/range {v16 .. v16}, LE0/l;->a()Z

    move-result v17

    xor-int/lit8 v13, v17, 0x1

    iget v3, v1, LB0/f;->r:I

    iget-object v5, v1, LB0/f;->s:Landroidx/media3/common/Format;

    iget v6, v1, LB0/f;->t:I

    iget-object v7, v1, LB0/f;->u:Ljava/lang/Object;

    iget-wide v8, v1, LB0/f;->v:J

    iget-wide v10, v1, LB0/f;->w:J

    iget-object v1, v0, Lv0/w;->z:LA/d;

    iget v4, v0, Lv0/w;->q:I

    invoke-virtual/range {v1 .. v13}, LA/d;->l(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v17, :cond_8

    const/4 v1, 0x0

    iput-object v1, v0, Lv0/w;->J:LB0/f;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    if-eqz v15, :cond_a

    iget-boolean v1, v0, Lv0/w;->S:Z

    if-nez v1, :cond_9

    new-instance v1, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, v0, Lv0/w;->e0:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv0/w;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    return-object v16

    :cond_9
    iget-object v1, v0, Lv0/w;->r:Lv0/f;

    invoke-virtual {v1, v0}, Lv0/f;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    :cond_a
    return-object v16
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Lv0/w;->y:LE0/s;

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lv0/w;->S:Z

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lv0/w;->Y:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final l(LE0/p;JJZ)V
    .locals 12

    check-cast p1, LB0/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/w;->J:LB0/f;

    new-instance v2, Landroidx/media3/exoplayer/source/v;

    iget-wide v0, p1, LB0/f;->b:J

    iget-object v0, p1, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v0, p0, Lv0/w;->x:LE0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, LB0/f;->r:I

    iget-object v5, p1, LB0/f;->s:Landroidx/media3/common/Format;

    iget v6, p1, LB0/f;->t:I

    iget-object v7, p1, LB0/f;->u:Ljava/lang/Object;

    iget-wide v8, p1, LB0/f;->v:J

    iget-wide v10, p1, LB0/f;->w:J

    iget-object v1, p0, Lv0/w;->z:LA/d;

    iget v4, p0, Lv0/w;->q:I

    invoke-virtual/range {v1 .. v11}, LA/d;->i(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lv0/w;->y()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lv0/w;->T:I

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lv0/w;->C()V

    :cond_1
    iget p1, p0, Lv0/w;->T:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lv0/w;->r:Lv0/f;

    invoke-virtual {p1, p0}, Lv0/f;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    :cond_2
    return-void
.end method

.method public final m(LE0/p;JJ)V
    .locals 12

    check-cast p1, LB0/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/w;->J:LB0/f;

    instance-of v0, p1, Lv0/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lv0/g;

    iget-object v1, v0, Lv0/g;->y:[B

    iget-object v2, p0, Lv0/w;->s:Lv0/k;

    iput-object v1, v2, Lv0/k;->m:[B

    iget-object v1, v2, Lv0/k;->j:Lv0/f;

    iget-object v2, v0, LB0/f;->q:Landroidx/media3/datasource/DataSpec;

    iget-object v2, v2, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v0, v0, Lv0/g;->A:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lv0/f;->b:Ljava/lang/Object;

    check-cast v1, Lv0/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/source/v;

    iget-wide v0, p1, LB0/f;->b:J

    iget-object v0, p1, LB0/f;->x:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v0, p0, Lv0/w;->x:LE0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, LB0/f;->r:I

    iget-object v5, p1, LB0/f;->s:Landroidx/media3/common/Format;

    iget v6, p1, LB0/f;->t:I

    iget-object v7, p1, LB0/f;->u:Ljava/lang/Object;

    iget-wide v8, p1, LB0/f;->v:J

    iget-wide v10, p1, LB0/f;->w:J

    iget-object v1, p0, Lv0/w;->z:LA/d;

    iget v4, p0, Lv0/w;->q:I

    invoke-virtual/range {v1 .. v11}, LA/d;->j(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-boolean p1, p0, Lv0/w;->S:Z

    if-nez p1, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v0, p0, Lv0/w;->e0:J

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv0/w;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lv0/w;->r:Lv0/f;

    invoke-virtual {p1, p0}, Lv0/f;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public final p()J
    .locals 7

    iget-boolean v0, p0, Lv0/w;->i0:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lv0/w;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lv0/w;->f0:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lv0/w;->e0:J

    invoke-virtual {p0}, Lv0/w;->w()Lv0/o;

    move-result-object v2

    iget-boolean v3, v2, Lv0/o;->W:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv0/o;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, LB0/f;->w:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean v2, p0, Lv0/w;->R:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lv0/w;->K:[Lv0/v;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public final s(J)V
    .locals 5

    iget-object v0, p0, Lv0/w;->y:LE0/s;

    invoke-virtual {v0}, LE0/s;->c()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lv0/w;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v1

    iget-object v2, p0, Lv0/w;->s:Lv0/k;

    iget-object v3, p0, Lv0/w;->D:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv0/w;->J:LB0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lv0/w;->J:LB0/f;

    iget-object v4, v2, Lv0/k;->n:Landroidx/media3/exoplayer/source/b;

    if-eqz v4, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lv0/k;->q:LD0/v;

    invoke-interface {v2, p1, p2, v1, v3}, LD0/v;->f(JLB0/f;Ljava/util/List;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {v0}, LE0/s;->b()V

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    const/4 v1, 0x2

    if-lez v0, :cond_3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/o;

    invoke-virtual {v2, v4}, Lv0/k;->b(Lv0/o;)I

    move-result v4

    if-ne v4, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v0}, Lv0/w;->v(I)V

    :cond_4
    iget-object v0, v2, Lv0/k;->n:Landroidx/media3/exoplayer/source/b;

    if-nez v0, :cond_6

    iget-object v0, v2, Lv0/k;->q:LD0/v;

    invoke-interface {v0}, LD0/v;->length()I

    move-result v0

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v2, Lv0/k;->q:LD0/v;

    invoke-interface {v0, p1, p2, v3}, LD0/v;->k(JLjava/util/List;)I

    move-result p1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    iget-object p2, p0, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1}, Lv0/w;->v(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final seekMap(LI0/F;)V
    .locals 0

    return-void
.end method

.method public final t([Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/source/t0;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    iget v3, v2, Landroidx/media3/common/TrackGroup;->length:I

    new-array v3, v3, [Landroidx/media3/common/Format;

    move v4, v0

    :goto_1
    iget v5, v2, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v4}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v6, p0, Lv0/w;->v:Lu0/q;

    invoke-interface {v6, v5}, Lu0/q;->d(Landroidx/media3/common/Format;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format;->copyWithCryptoType(I)Landroidx/media3/common/Format;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Landroidx/media3/common/TrackGroup;

    iget-object v2, v2, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/source/t0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/t0;-><init>([Landroidx/media3/common/TrackGroup;)V

    return-object v0
.end method

.method public final track(II)LI0/L;
    .locals 10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lv0/w;->n0:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lv0/w;->M:Ljava/util/HashSet;

    iget-object v4, p0, Lv0/w;->N:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lk0/c;->d(Z)V

    const/4 v0, -0x1

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv0/w;->L:[I

    aput p1, v0, v1

    :cond_1
    iget-object v0, p0, Lv0/w;->L:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lv0/w;->K:[Lv0/v;

    aget-object v5, v0, v1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lv0/w;->q(II)LI0/o;

    move-result-object v5

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_0
    iget-object v1, p0, Lv0/w;->K:[Lv0/v;

    array-length v6, v1

    if-ge v0, v6, :cond_5

    iget-object v6, p0, Lv0/w;->L:[I

    aget v6, v6, v0

    if-ne v6, p1, :cond_4

    aget-object v5, v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v5, :cond_c

    iget-boolean v0, p0, Lv0/w;->j0:Z

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lv0/w;->q(II)LI0/o;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v0, p0, Lv0/w;->K:[Lv0/v;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v5, 0x2

    if-ne p2, v5, :cond_8

    :cond_7
    move v2, v1

    :cond_8
    new-instance v5, Lv0/v;

    iget-object v6, p0, Lv0/w;->w:Lu0/m;

    iget-object v7, p0, Lv0/w;->I:Ljava/util/Map;

    iget-object v8, p0, Lv0/w;->t:LE0/b;

    iget-object v9, p0, Lv0/w;->v:Lu0/q;

    invoke-direct {v5, v8, v9, v6, v7}, Lv0/v;-><init>(LE0/b;Lu0/q;Lu0/m;Ljava/util/Map;)V

    iget-wide v6, p0, Lv0/w;->e0:J

    invoke-virtual {v5, v6, v7}, Landroidx/media3/exoplayer/source/e0;->setStartTimeUs(J)V

    if-eqz v2, :cond_9

    iget-object v6, p0, Lv0/w;->l0:Landroidx/media3/common/DrmInitData;

    iput-object v6, v5, Lv0/v;->b:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->invalidateUpstreamFormatAdjustment()V

    :cond_9
    iget-wide v6, p0, Lv0/w;->k0:J

    invoke-virtual {v5, v6, v7}, Landroidx/media3/exoplayer/source/e0;->setSampleOffsetUs(J)V

    iget-object v6, p0, Lv0/w;->m0:Lv0/o;

    if-eqz v6, :cond_a

    iget v6, v6, Lv0/o;->z:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroidx/media3/exoplayer/source/e0;->sourceId(J)V

    :cond_a
    invoke-virtual {v5, p0}, Landroidx/media3/exoplayer/source/e0;->setUpstreamFormatChangeListener(Landroidx/media3/exoplayer/source/d0;)V

    iget-object v6, p0, Lv0/w;->L:[I

    add-int/lit8 v7, v0, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lv0/w;->L:[I

    aput p1, v6, v0

    iget-object p1, p0, Lv0/w;->K:[Lv0/v;

    sget v6, Lk0/C;->a:I

    array-length v6, p1

    add-int/2addr v6, v1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length p1, p1

    aput-object v5, v1, p1

    check-cast v1, [Lv0/v;

    iput-object v1, p0, Lv0/w;->K:[Lv0/v;

    iget-object p1, p0, Lv0/w;->d0:[Z

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lv0/w;->d0:[Z

    aput-boolean v2, p1, v0

    iget-boolean p1, p0, Lv0/w;->b0:Z

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lv0/w;->b0:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    invoke-static {p2}, Lv0/w;->x(I)I

    move-result p1

    iget v1, p0, Lv0/w;->P:I

    invoke-static {v1}, Lv0/w;->x(I)I

    move-result v1

    if-le p1, v1, :cond_b

    iput v0, p0, Lv0/w;->Q:I

    iput p2, p0, Lv0/w;->P:I

    :cond_b
    iget-object p1, p0, Lv0/w;->c0:[Z

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lv0/w;->c0:[Z

    :cond_c
    const/4 p1, 0x5

    if-ne p2, p1, :cond_e

    iget-object p1, p0, Lv0/w;->O:Lv0/u;

    if-nez p1, :cond_d

    new-instance p1, Lv0/u;

    iget p2, p0, Lv0/w;->A:I

    invoke-direct {p1, v5, p2}, Lv0/u;-><init>(LI0/L;I)V

    iput-object p1, p0, Lv0/w;->O:Lv0/u;

    :cond_d
    iget-object p1, p0, Lv0/w;->O:Lv0/u;

    return-object p1

    :cond_e
    return-object v5
.end method

.method public final v(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lv0/w;->y:LE0/s;

    invoke-virtual {v1}, LE0/s;->d()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lk0/c;->j(Z)V

    move/from16 v1, p1

    :goto_0
    iget-object v3, v0, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ge v1, v4, :cond_3

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv0/o;

    iget-boolean v7, v7, Lv0/o;->C:Z

    if-eqz v7, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/o;

    move v7, v5

    :goto_2
    iget-object v8, v0, Lv0/w;->K:[Lv0/v;

    array-length v8, v8

    if-ge v7, v8, :cond_4

    invoke-virtual {v4, v7}, Lv0/o;->f(I)I

    move-result v8

    iget-object v9, v0, Lv0/w;->K:[Lv0/v;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/e0;->getReadIndex()I

    move-result v9

    if-le v9, v8, :cond_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v1, v6

    :cond_4
    if-ne v1, v6, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lv0/w;->w()Lv0/o;

    move-result-object v4

    iget-wide v6, v4, LB0/f;->w:J

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/o;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v1, v8, v3}, Lk0/C;->V(IILjava/util/List;)V

    move v1, v5

    :goto_4
    iget-object v8, v0, Lv0/w;->K:[Lv0/v;

    array-length v8, v8

    if-ge v1, v8, :cond_6

    invoke-virtual {v4, v1}, Lv0/o;->f(I)I

    move-result v8

    iget-object v9, v0, Lv0/w;->K:[Lv0/v;

    aget-object v9, v9, v1

    invoke-virtual {v9, v8}, Landroidx/media3/exoplayer/source/e0;->discardUpstreamSamples(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v1, v0, Lv0/w;->e0:J

    iput-wide v1, v0, Lv0/w;->f0:J

    goto :goto_5

    :cond_7
    invoke-static {v3}, Lp3/q;->j(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0/o;

    iput-boolean v2, v1, Lv0/o;->Y:Z

    :goto_5
    iput-boolean v5, v0, Lv0/w;->i0:Z

    iget v10, v0, Lv0/w;->P:I

    iget-wide v1, v4, LB0/f;->v:J

    new-instance v8, Landroidx/media3/exoplayer/source/A;

    invoke-static {v1, v2}, Lk0/C;->c0(J)J

    move-result-wide v14

    invoke-static {v6, v7}, Lk0/C;->c0(J)J

    move-result-wide v16

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v17}, Landroidx/media3/exoplayer/source/A;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lv0/w;->z:LA/d;

    iget-object v2, v1, LA/d;->r:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/E;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LF3/a;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v8, v4}, LF3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, LA/d;->f(Lk0/h;)V

    return-void
.end method

.method public final w()Lv0/o;
    .locals 2

    iget-object v0, p0, Lv0/w;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/o;

    return-object v0
.end method

.method public final y()Z
    .locals 4

    iget-wide v0, p0, Lv0/w;->f0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lv0/w;->W:Z

    if-nez v1, :cond_1a

    iget-object v1, v0, Lv0/w;->Z:[I

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Lv0/w;->R:Z

    if-nez v1, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v1, v0, Lv0/w;->K:[Lv0/v;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_12

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    const/4 v2, 0x3

    const/4 v4, -0x1

    if-eqz v1, :cond_a

    iget v1, v1, Landroidx/media3/exoplayer/source/t0;->a:I

    new-array v5, v1, [I

    iput-object v5, v0, Lv0/w;->Z:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_9

    move v5, v3

    :goto_2
    iget-object v6, v0, Lv0/w;->K:[Lv0/v;

    array-length v7, v6

    if-ge v5, v7, :cond_8

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/e0;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v6

    invoke-static {v6}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v7, v0, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {v7, v4}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    iget-object v8, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v9, v7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v2, :cond_3

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_7

    goto :goto_3

    :cond_3
    sget v10, Lk0/C;->a:I

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    iget v6, v6, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v7, v7, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    iget-object v6, v0, Lv0/w;->Z:[I

    aput v5, v6, v4

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lv0/w;->H:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-ge v3, v2, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lv0/r;

    invoke-virtual {v4}, Lv0/r;->b()V

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lv0/w;->K:[Lv0/v;

    array-length v1, v1

    const/4 v5, -0x2

    move v6, v3

    move v8, v4

    move v7, v5

    :goto_7
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ge v6, v1, :cond_10

    iget-object v11, v0, Lv0/w;->K:[Lv0/v;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/e0;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v11

    invoke-static {v11}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v11, v11, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v9, v10

    goto :goto_8

    :cond_b
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    move v9, v2

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    invoke-static {v9}, Lv0/w;->x(I)I

    move-result v10

    invoke-static {v7}, Lv0/w;->x(I)I

    move-result v11

    if-le v10, v11, :cond_e

    move v8, v6

    move v7, v9

    goto :goto_9

    :cond_e
    if-ne v9, v7, :cond_f

    if-eq v8, v4, :cond_f

    move v8, v4

    :cond_f
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    iget-object v2, v0, Lv0/w;->s:Lv0/k;

    iget-object v2, v2, Lv0/k;->h:Landroidx/media3/common/TrackGroup;

    iget v5, v2, Landroidx/media3/common/TrackGroup;->length:I

    iput v4, v0, Lv0/w;->a0:I

    new-array v4, v1, [I

    iput-object v4, v0, Lv0/w;->Z:[I

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_11

    iget-object v6, v0, Lv0/w;->Z:[I

    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    new-array v4, v1, [Landroidx/media3/common/TrackGroup;

    move v6, v3

    :goto_b
    if-ge v6, v1, :cond_18

    iget-object v11, v0, Lv0/w;->K:[Lv0/v;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/e0;->getUpstreamFormat()Landroidx/media3/common/Format;

    move-result-object v11

    invoke-static {v11}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v12, v0, Lv0/w;->b:Ljava/lang/String;

    iget-object v13, v0, Lv0/w;->u:Landroidx/media3/common/Format;

    if-ne v6, v8, :cond_15

    new-array v14, v5, [Landroidx/media3/common/Format;

    move v15, v3

    :goto_c
    if-ge v15, v5, :cond_14

    invoke-virtual {v2, v15}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v3

    if-ne v7, v9, :cond_12

    if-eqz v13, :cond_12

    invoke-virtual {v3, v13}, Landroidx/media3/common/Format;->withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v3

    :cond_12
    if-ne v5, v9, :cond_13

    invoke-virtual {v11, v3}, Landroidx/media3/common/Format;->withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v3

    goto :goto_d

    :cond_13
    invoke-static {v3, v11, v9}, Lv0/w;->u(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v3

    :goto_d
    aput-object v3, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_c

    :cond_14
    new-instance v3, Landroidx/media3/common/TrackGroup;

    invoke-direct {v3, v12, v14}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v3, v4, v6

    iput v6, v0, Lv0/w;->a0:I

    const/4 v14, 0x0

    goto :goto_10

    :cond_15
    if-ne v7, v10, :cond_16

    iget-object v3, v11, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_e

    :cond_16
    const/4 v13, 0x0

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":muxed:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v6, v8, :cond_17

    move v12, v6

    goto :goto_f

    :cond_17
    add-int/lit8 v12, v6, -0x1

    :goto_f
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Landroidx/media3/common/TrackGroup;

    const/4 v14, 0x0

    invoke-static {v13, v11, v14}, Lv0/w;->u(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v11

    filled-new-array {v11}, [Landroidx/media3/common/Format;

    move-result-object v11

    invoke-direct {v12, v3, v11}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v12, v4, v6

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move v3, v14

    goto :goto_b

    :cond_18
    move v14, v3

    invoke-virtual {v0, v4}, Lv0/w;->t([Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/source/t0;

    move-result-object v1

    iput-object v1, v0, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    iget-object v1, v0, Lv0/w;->Y:Ljava/util/Set;

    if-nez v1, :cond_19

    move v3, v9

    goto :goto_11

    :cond_19
    move v3, v14

    :goto_11
    invoke-static {v3}, Lk0/c;->j(Z)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, v0, Lv0/w;->Y:Ljava/util/Set;

    iput-boolean v9, v0, Lv0/w;->S:Z

    iget-object v1, v0, Lv0/w;->r:Lv0/f;

    invoke-virtual {v1}, Lv0/f;->i()V

    :cond_1a
    :goto_12
    return-void
.end method
