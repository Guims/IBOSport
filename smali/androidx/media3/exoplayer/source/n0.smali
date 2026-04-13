.class public final Landroidx/media3/exoplayer/source/n0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/C;
.implements LE0/n;


# instance fields
.field public A:Z

.field public B:[B

.field public C:I

.field public final b:Landroidx/media3/datasource/DataSpec;

.field public final q:Landroidx/media3/datasource/DataSource$Factory;

.field public final r:Landroidx/media3/datasource/TransferListener;

.field public final s:LE0/m;

.field public final t:LA/d;

.field public final u:Landroidx/media3/exoplayer/source/t0;

.field public final v:Ljava/util/ArrayList;

.field public final w:J

.field public final x:LE0/s;

.field public final y:Landroidx/media3/common/Format;

.field public final z:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/common/Format;JLE0/m;LA/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/n0;->b:Landroidx/media3/datasource/DataSpec;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/n0;->q:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/n0;->r:Landroidx/media3/datasource/TransferListener;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/n0;->y:Landroidx/media3/common/Format;

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/n0;->w:J

    iput-object p7, p0, Landroidx/media3/exoplayer/source/n0;->s:LE0/m;

    iput-object p8, p0, Landroidx/media3/exoplayer/source/n0;->t:LA/d;

    iput-boolean p9, p0, Landroidx/media3/exoplayer/source/n0;->z:Z

    new-instance p1, Landroidx/media3/exoplayer/source/t0;

    new-instance p2, Landroidx/media3/common/TrackGroup;

    filled-new-array {p4}, [Landroidx/media3/common/Format;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/media3/common/TrackGroup;-><init>([Landroidx/media3/common/Format;)V

    filled-new-array {p2}, [Landroidx/media3/common/TrackGroup;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/t0;-><init>([Landroidx/media3/common/TrackGroup;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/n0;->u:Landroidx/media3/exoplayer/source/t0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/n0;->v:Ljava/util/ArrayList;

    new-instance p1, LE0/s;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, LE0/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/n0;->x:LE0/s;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 14

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/n0;->A:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/n0;->x:LE0/s;

    invoke-virtual {p1}, LE0/s;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, LE0/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/n0;->q:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/n0;->r:Landroidx/media3/datasource/TransferListener;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/source/m0;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/n0;->b:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/source/m0;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/n0;->s:LE0/m;

    check-cast v0, LE0/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, p0, v0}, LE0/s;->f(LE0/p;LE0/n;I)J

    new-instance v4, Landroidx/media3/exoplayer/source/v;

    invoke-direct {v4, v2}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    const-wide/16 v10, 0x0

    iget-wide v12, p0, Landroidx/media3/exoplayer/source/n0;->w:J

    iget-object v3, p0, Landroidx/media3/exoplayer/source/n0;->t:LA/d;

    const/4 v5, 0x1

    const/4 v6, -0x1

    iget-object v7, p0, Landroidx/media3/exoplayer/source/n0;->y:Landroidx/media3/common/Format;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v13}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/n0;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/n0;->x:LE0/s;

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/n0;->v:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    aput-object v1, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/source/l0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/l0;-><init>(Landroidx/media3/exoplayer/source/n0;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g(LE0/p;JJLjava/io/IOException;I)LE0/l;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move/from16 v1, p7

    move-object/from16 v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/m0;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/m0;->q:Landroidx/media3/datasource/StatsDataSource;

    move-object v3, v2

    new-instance v2, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide/from16 v3, p4

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    sget v3, Lk0/C;->a:I

    iget-object v14, v0, Landroidx/media3/exoplayer/source/n0;->s:LE0/m;

    move-object v3, v14

    check-cast v3, LE0/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v12, Landroidx/media3/common/ParserException;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_1

    instance-of v3, v12, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_1

    instance-of v3, v12, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v3, :cond_1

    instance-of v3, v12, LE0/r;

    if-nez v3, :cond_1

    invoke-static {v12}, Landroidx/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v6, 0x1388

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v6, v4

    :goto_1
    cmp-long v3, v6, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const/4 v8, 0x3

    if-lt v1, v8, :cond_2

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v4

    :goto_3
    iget-boolean v8, v0, Landroidx/media3/exoplayer/source/n0;->z:Z

    if-eqz v8, :cond_4

    if-eqz v1, :cond_4

    const-string v1, "SingleSampleMediaPeriod"

    const-string v3, "Loading failed, treating as end-of-stream."

    invoke-static {v1, v3, v12}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v4, v0, Landroidx/media3/exoplayer/source/n0;->A:Z

    sget-object v1, LE0/s;->t:LE0/l;

    :goto_4
    move-object v15, v1

    goto :goto_5

    :cond_4
    if-eqz v3, :cond_5

    new-instance v1, LE0/l;

    invoke-direct {v1, v5, v5, v6, v7}, LE0/l;-><init>(IZJ)V

    goto :goto_4

    :cond_5
    sget-object v1, LE0/s;->u:LE0/l;

    goto :goto_4

    :goto_5
    invoke-virtual {v15}, LE0/l;->a()Z

    move-result v16

    xor-int/lit8 v13, v16, 0x1

    const-wide/16 v8, 0x0

    iget-wide v10, v0, Landroidx/media3/exoplayer/source/n0;->w:J

    iget-object v1, v0, Landroidx/media3/exoplayer/source/n0;->t:LA/d;

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v5, v0, Landroidx/media3/exoplayer/source/n0;->y:Landroidx/media3/common/Format;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v13}, LA/d;->l(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_6

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    return-object v15
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public final i(J)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/n0;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/l0;

    iget v2, v1, Landroidx/media3/exoplayer/source/l0;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/source/l0;->b:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/n0;->x:LE0/s;

    invoke-virtual {v0}, LE0/s;->d()Z

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final l(LE0/p;JJZ)V
    .locals 11

    check-cast p1, Landroidx/media3/exoplayer/source/m0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/m0;->q:Landroidx/media3/datasource/StatsDataSource;

    new-instance v1, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-wide p1, p4

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/n0;->s:LE0/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x0

    iget-wide v9, p0, Landroidx/media3/exoplayer/source/n0;->w:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/n0;->t:LA/d;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, LA/d;->i(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final m(LE0/p;JJ)V
    .locals 11

    check-cast p1, Landroidx/media3/exoplayer/source/m0;

    iget-object p2, p1, Landroidx/media3/exoplayer/source/m0;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {p2}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide p2

    long-to-int p2, p2

    iput p2, p0, Landroidx/media3/exoplayer/source/n0;->C:I

    iget-object p2, p1, Landroidx/media3/exoplayer/source/m0;->r:[B

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/n0;->B:[B

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/n0;->A:Z

    iget-object p1, p1, Landroidx/media3/exoplayer/source/m0;->q:Landroidx/media3/datasource/StatsDataSource;

    new-instance v1, Landroidx/media3/exoplayer/source/v;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-wide p1, p4

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/n0;->s:LE0/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x0

    iget-wide v9, p0, Landroidx/media3/exoplayer/source/n0;->w:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/n0;->t:LA/d;

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v4, p0, Landroidx/media3/exoplayer/source/n0;->y:Landroidx/media3/common/Format;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, LA/d;->j(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final n(Landroidx/media3/exoplayer/source/B;J)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/B;->onPrepared(Landroidx/media3/exoplayer/source/C;)V

    return-void
.end method

.method public final o()Landroidx/media3/exoplayer/source/t0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/n0;->u:Landroidx/media3/exoplayer/source/t0;

    return-object v0
.end method

.method public final p()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/n0;->A:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final r(JZ)V
    .locals 0

    return-void
.end method

.method public final s(J)V
    .locals 0

    return-void
.end method
