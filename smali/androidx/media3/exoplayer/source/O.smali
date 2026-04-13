.class public final Landroidx/media3/exoplayer/source/O;
.super Landroidx/media3/exoplayer/source/k;


# static fields
.field public static final s:Landroidx/media3/common/MediaItem;


# instance fields
.field public final k:[Landroidx/media3/exoplayer/source/G;

.field public final l:Ljava/util/ArrayList;

.field public final m:[Landroidx/media3/common/Timeline;

.field public final n:Ljava/util/ArrayList;

.field public final o:Lh3/e;

.field public p:I

.field public q:[[J

.field public r:LI1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/O;->s:Landroidx/media3/common/MediaItem;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/G;)V
    .locals 4

    new-instance v0, Lh3/e;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lh3/e;-><init>(I)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/k;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/O;->o:Lh3/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/O;->n:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/O;->p:I

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/O;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/O;->l:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    new-array p1, p1, [Landroidx/media3/common/Timeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/O;->m:[Landroidx/media3/common/Timeline;

    new-array p1, v0, [[J

    iput-object p1, p0, Landroidx/media3/exoplayer/source/O;->q:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p1, "expectedKeys"

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lp3/q;->c(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "expectedValuesPerKey"

    invoke-static {p1, v1}, Lp3/q;->c(ILjava/lang/String;)V

    invoke-static {v0}, Lp3/u;->a(I)Lp3/u;

    move-result-object p1

    new-instance v0, Lp3/U;

    invoke-direct {v0}, Lp3/U;-><init>()V

    new-instance v1, Lp3/V;

    invoke-direct {v1, p1}, Lp3/V;-><init>(Ljava/util/Map;)V

    iput-object v0, v1, Lp3/V;->u:Lp3/U;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/MediaItem;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/G;->a(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final b()Landroidx/media3/common/MediaItem;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/G;->b()Landroidx/media3/common/MediaItem;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/source/O;->s:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method public final c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    array-length v1, v0

    new-array v2, v1, [Landroidx/media3/exoplayer/source/C;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/O;->m:[Landroidx/media3/common/Timeline;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget-object v6, p1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/media3/exoplayer/source/E;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/E;

    move-result-object v6

    aget-object v7, v0, v4

    iget-object v8, p0, Landroidx/media3/exoplayer/source/O;->q:[[J

    aget-object v8, v8, v5

    aget-wide v9, v8, v4

    sub-long v8, p3, v9

    invoke-interface {v7, v6, p2, v8, v9}, Landroidx/media3/exoplayer/source/G;->c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Landroidx/media3/exoplayer/source/O;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Landroidx/media3/exoplayer/source/N;

    aget-object v9, v2, v4

    invoke-direct {v8, v6, v9}, Landroidx/media3/exoplayer/source/N;-><init>(Landroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/C;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/source/M;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/O;->q:[[J

    aget-object p2, p2, v5

    iget-object p3, p0, Landroidx/media3/exoplayer/source/O;->o:Lh3/e;

    invoke-direct {p1, p3, p2, v2}, Landroidx/media3/exoplayer/source/M;-><init>(Lh3/e;[J[Landroidx/media3/exoplayer/source/C;)V

    return-object p1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->r:LI1/c;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/k;->d()V

    return-void

    :cond_0
    throw v0
.end method

.method public final g(Landroidx/media3/common/MediaItem;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/G;->g(Landroidx/media3/common/MediaItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final h(Landroidx/media3/exoplayer/source/C;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/M;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/O;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/source/N;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/N;->b:Landroidx/media3/exoplayer/source/C;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    aget-object v3, v3, v2

    iget-object v4, v0, Landroidx/media3/exoplayer/source/M;->b:[Landroidx/media3/exoplayer/source/C;

    aget-object v4, v4, v2

    instance-of v5, v4, Landroidx/media3/exoplayer/source/r0;

    if-eqz v5, :cond_2

    check-cast v4, Landroidx/media3/exoplayer/source/r0;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    :cond_2
    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/source/G;->h(Landroidx/media3/exoplayer/source/C;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final o(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->j:Landroidx/media3/datasource/TransferListener;

    const/4 p1, 0x0

    invoke-static {p1}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k;->i:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/source/k;->y(Ljava/lang/Object;Landroidx/media3/exoplayer/source/G;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/exoplayer/source/k;->r()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->m:[Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/O;->p:I

    iput-object v1, p0, Landroidx/media3/exoplayer/source/O;->r:LI1/c;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/O;->k:[Landroidx/media3/exoplayer/source/G;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final u(Ljava/lang/Object;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/N;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/N;->a:Landroidx/media3/exoplayer/source/E;

    invoke-virtual {v3, p2}, Landroidx/media3/exoplayer/source/E;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/N;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/N;->a:Landroidx/media3/exoplayer/source/E;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x(Ljava/lang/Object;Landroidx/media3/exoplayer/source/a;Landroidx/media3/common/Timeline;)V
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->r:LI1/c;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/O;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/O;->p:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/O;->p:I

    if-eq v0, v1, :cond_2

    new-instance p1, LI1/c;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/O;->r:LI1/c;

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->q:[[J

    array-length v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/O;->m:[Landroidx/media3/common/Timeline;

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/source/O;->p:I

    array-length v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/O;->q:[[J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/O;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v2, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, v2, v1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/common/Timeline;)V

    :cond_4
    :goto_1
    return-void
.end method
