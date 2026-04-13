.class public final Lo1/A;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/F;


# instance fields
.field public b:Landroidx/media3/common/Format;

.field public q:Lk0/z;

.field public r:LI0/L;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lo1/A;->b:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final a(Lk0/z;LI0/s;Lo1/K;)V
    .locals 0

    iput-object p1, p0, Lo1/A;->q:Lk0/z;

    invoke-virtual {p3}, Lo1/K;->a()V

    invoke-virtual {p3}, Lo1/K;->b()V

    iget p1, p3, Lo1/K;->d:I

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, Lo1/A;->r:LI0/L;

    iget-object p2, p0, Lo1/A;->b:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 13

    iget-object v0, p0, Lo1/A;->q:Lk0/z;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v0, Lk0/C;->a:I

    iget-object v1, p0, Lo1/A;->q:Lk0/z;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v1, Lk0/z;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v6, v1, Lk0/z;->b:J

    add-long/2addr v2, v6

    :goto_0
    move-wide v7, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Lk0/z;->d()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v1

    iget-object v2, p0, Lo1/A;->q:Lk0/z;

    monitor-enter v2

    :try_start_1
    iget-wide v0, v2, Lk0/z;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    cmp-long v2, v7, v4

    if-eqz v2, :cond_3

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lo1/A;->b:Landroidx/media3/common/Format;

    iget-wide v3, v2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Lo1/A;->b:Landroidx/media3/common/Format;

    iget-object v1, p0, Lo1/A;->r:LI0/L;

    invoke-interface {v1, v0}, LI0/L;->format(Landroidx/media3/common/Format;)V

    :cond_2
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v10

    iget-object v0, p0, Lo1/A;->r:LI0/L;

    invoke-interface {v0, p1, v10}, LI0/L;->sampleData(Lk0/u;I)V

    iget-object v6, p0, Lo1/A;->r:LI0/L;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
