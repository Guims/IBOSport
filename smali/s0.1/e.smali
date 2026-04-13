.class public final Ls0/e;
.super Ljava/lang/Object;

# interfaces
.implements LE0/n;
.implements LE0/t;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ls0/h;


# direct methods
.method public synthetic constructor <init>(Ls0/h;I)V
    .locals 0

    iput p2, p0, Ls0/e;->b:I

    iput-object p1, p0, Ls0/e;->q:Ls0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ls0/e;->q:Ls0/h;

    iget-object v1, v0, Ls0/h;->A:LE0/s;

    invoke-virtual {v1}, LE0/s;->a()V

    iget-object v0, v0, Ls0/h;->C:LI1/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Ls0/e;->q:Ls0/h;

    sget-object v1, LF0/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, LF0/b;->c:Z

    if-eqz v2, :cond_0

    sget-wide v2, LF0/b;->d:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v2, v0, Ls0/h;->L:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ls0/h;->y(Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(LE0/p;JJLjava/io/IOException;I)LE0/l;
    .locals 4

    iget p2, p0, Ls0/e;->b:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, LE0/v;

    iget-object p2, p0, Ls0/e;->q:Ls0/h;

    iget-object p3, p2, Ls0/h;->q:LA/d;

    new-instance p7, Landroidx/media3/exoplayer/source/v;

    iget-wide v0, p1, LE0/v;->b:J

    iget-object v0, p1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    invoke-direct {p7, p4, p5}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget p1, p1, LE0/v;->r:I

    const/4 p4, 0x1

    invoke-virtual {p3, p7, p1, p6, p4}, LA/d;->m(Landroidx/media3/exoplayer/source/v;ILjava/io/IOException;Z)V

    iget-object p1, p2, Ls0/h;->m:LE0/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p6}, Ls0/h;->x(Ljava/io/IOException;)V

    sget-object p1, LE0/s;->t:LE0/l;

    return-object p1

    :pswitch_0
    check-cast p1, LE0/v;

    new-instance p2, Landroidx/media3/exoplayer/source/v;

    iget-wide v0, p1, LE0/v;->b:J

    iget-object p3, p1, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {p3}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    invoke-virtual {p3}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    invoke-virtual {p3}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    invoke-direct {p2, p4, p5}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget p1, p1, LE0/v;->r:I

    iget-object p3, p0, Ls0/e;->q:Ls0/h;

    iget-object p4, p3, Ls0/h;->m:LE0/m;

    move-object p5, p4

    check-cast p5, LE0/j;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p5, p6, Landroidx/media3/common/ParserException;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p5, :cond_1

    instance-of p5, p6, Ljava/io/FileNotFoundException;

    if-nez p5, :cond_1

    instance-of p5, p6, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez p5, :cond_1

    instance-of p5, p6, LE0/r;

    if-nez p5, :cond_1

    invoke-static {p6}, Landroidx/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p7, p7, -0x1

    mul-int/lit16 p7, p7, 0x3e8

    const/16 p5, 0x1388

    invoke-static {p7, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    int-to-long v2, p5

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v2, v0

    :goto_1
    cmp-long p5, v2, v0

    if-nez p5, :cond_2

    sget-object p5, LE0/s;->u:LE0/l;

    goto :goto_2

    :cond_2
    new-instance p5, LE0/l;

    const/4 p7, 0x0

    const/4 v0, 0x0

    invoke-direct {p5, v0, p7, v2, v3}, LE0/l;-><init>(IZJ)V

    :goto_2
    invoke-virtual {p5}, LE0/l;->a()Z

    move-result p7

    xor-int/lit8 v0, p7, 0x1

    iget-object p3, p3, Ls0/h;->q:LA/d;

    invoke-virtual {p3, p2, p1, p6, v0}, LA/d;->m(Landroidx/media3/exoplayer/source/v;ILjava/io/IOException;Z)V

    if-nez p7, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-object p5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public l(LE0/p;JJZ)V
    .locals 0

    iget p2, p0, Ls0/e;->b:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, LE0/v;

    iget-object p2, p0, Ls0/e;->q:Ls0/h;

    invoke-virtual {p2, p1, p4, p5}, Ls0/h;->w(LE0/v;J)V

    return-void

    :pswitch_0
    check-cast p1, LE0/v;

    iget-object p2, p0, Ls0/e;->q:Ls0/h;

    invoke-virtual {p2, p1, p4, p5}, Ls0/h;->w(LE0/v;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public m(LE0/p;JJ)V
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    iget v0, v1, Ls0/e;->b:I

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, LE0/v;

    iget-object v7, v1, Ls0/e;->q:Ls0/h;

    new-instance v9, Landroidx/media3/exoplayer/source/v;

    iget-wide v10, v0, LE0/v;->b:J

    iget-object v8, v0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v8}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    iget-object v8, v0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v8}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    iget-object v8, v0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v8}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    invoke-direct {v9, v4, v5}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v4, v7, Ls0/h;->m:LE0/m;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Ls0/h;->q:LA/d;

    iget v10, v0, LE0/v;->r:I

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v18}, LA/d;->j(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-object v0, v0, LE0/v;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v7, Ls0/h;->L:J

    invoke-virtual {v7, v6}, Ls0/h;->y(Z)V

    return-void

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, LE0/v;

    iget-object v7, v1, Ls0/e;->q:Ls0/h;

    new-instance v9, Landroidx/media3/exoplayer/source/v;

    iget-wide v10, v0, LE0/v;->b:J

    iget-object v8, v0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v8}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    iget-object v8, v0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v8}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    iget-object v8, v0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v8}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    invoke-direct {v9, v4, v5}, Landroidx/media3/exoplayer/source/v;-><init>(J)V

    iget-object v8, v7, Ls0/h;->m:LE0/m;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Ls0/h;->q:LA/d;

    iget v10, v0, LE0/v;->r:I

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v18}, LA/d;->j(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-object v8, v0, LE0/v;->u:Ljava/lang/Object;

    check-cast v8, Lt0/c;

    iget-object v9, v7, Ls0/h;->H:Lt0/c;

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    iget-object v9, v9, Lt0/c;->m:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    invoke-virtual {v8, v10}, Lt0/c;->b(I)Lt0/h;

    move-result-object v11

    iget-wide v11, v11, Lt0/h;->b:J

    move v13, v10

    :goto_1
    if-ge v13, v9, :cond_1

    iget-object v14, v7, Ls0/h;->H:Lt0/c;

    invoke-virtual {v14, v13}, Lt0/c;->b(I)Lt0/h;

    move-result-object v14

    iget-wide v14, v14, Lt0/h;->b:J

    cmp-long v14, v14, v11

    if-gez v14, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v11, v8, Lt0/c;->d:Z

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v11, :cond_5

    sub-int/2addr v9, v13

    iget-object v11, v8, Lt0/c;->m:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v9, v11, :cond_2

    const-string v2, "DashMediaSource"

    const-string v3, "Loaded out of sync manifest"

    invoke-static {v2, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-wide v11, v7, Ls0/h;->N:J

    cmp-long v9, v11, v14

    move-wide/from16 v16, v14

    if-eqz v9, :cond_4

    iget-wide v14, v8, Lt0/c;->h:J

    const-wide/16 v18, 0x3e8

    mul-long v14, v14, v18

    cmp-long v9, v14, v11

    if-gtz v9, :cond_4

    const-string v2, "DashMediaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loaded stale dynamic manifest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v8, Lt0/c;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v7, Ls0/h;->N:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget v2, v7, Ls0/h;->M:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v7, Ls0/h;->M:I

    iget-object v3, v7, Ls0/h;->m:LE0/m;

    iget v0, v0, LE0/v;->r:I

    check-cast v3, LE0/j;

    invoke-virtual {v3, v0}, LE0/j;->b(I)I

    move-result v0

    if-ge v2, v0, :cond_3

    iget v0, v7, Ls0/h;->M:I

    sub-int/2addr v0, v6

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v2, v0

    iget-object v0, v7, Ls0/h;->D:Landroid/os/Handler;

    iget-object v4, v7, Ls0/h;->v:Ls0/d;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    :cond_3
    new-instance v0, LI1/c;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    iput-object v0, v7, Ls0/h;->C:LI1/c;

    goto/16 :goto_a

    :cond_4
    iput v10, v7, Ls0/h;->M:I

    goto :goto_3

    :cond_5
    move-wide/from16 v16, v14

    :goto_3
    iput-object v8, v7, Ls0/h;->H:Lt0/c;

    iget-boolean v9, v7, Ls0/h;->I:Z

    iget-boolean v8, v8, Lt0/c;->d:Z

    and-int/2addr v8, v9

    iput-boolean v8, v7, Ls0/h;->I:Z

    sub-long v4, v2, v4

    iput-wide v4, v7, Ls0/h;->J:J

    iput-wide v2, v7, Ls0/h;->K:J

    iget v2, v7, Ls0/h;->O:I

    add-int/2addr v2, v13

    iput v2, v7, Ls0/h;->O:I

    iget-object v2, v7, Ls0/h;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, LE0/v;->q:Landroidx/media3/datasource/DataSpec;

    iget-object v3, v3, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, v7, Ls0/h;->F:Landroid/net/Uri;

    if-ne v3, v4, :cond_7

    iget-object v3, v7, Ls0/h;->H:Lt0/c;

    iget-object v3, v3, Lt0/c;->k:Landroid/net/Uri;

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, v0, LE0/v;->s:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v3

    :goto_4
    iput-object v3, v7, Ls0/h;->F:Landroid/net/Uri;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_7
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v7, Ls0/h;->H:Lt0/c;

    iget-boolean v2, v0, Lt0/c;->d:Z

    if-eqz v2, :cond_11

    iget-wide v2, v7, Ls0/h;->L:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_11

    iget-object v0, v0, Lt0/c;->i:LB3/c;

    if-eqz v0, :cond_10

    iget-object v2, v0, LB3/c;->b:Ljava/lang/String;

    const-string v3, "urn:mpeg:dash:utc:direct:2014"

    sget v4, Lk0/C;->a:I

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_9

    :cond_8
    const-string v3, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-nez v3, :cond_e

    const-string v3, "urn:mpeg:dash:utc:http-iso:2012"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    const-string v0, "urn:mpeg:dash:utc:ntp:2014"

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "urn:mpeg:dash:utc:ntp:2012"

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unsupported UTC timing scheme"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ls0/h;->x(Ljava/io/IOException;)V

    goto/16 :goto_a

    :cond_c
    :goto_6
    invoke-virtual {v7}, Ls0/h;->v()V

    goto/16 :goto_a

    :cond_d
    :goto_7
    new-instance v2, Lx2/f;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lx2/f;-><init>(I)V

    new-instance v3, LE0/v;

    iget-object v8, v7, Ls0/h;->z:Landroidx/media3/datasource/DataSource;

    iget-object v0, v0, LB3/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v8, v0, v5, v2}, LE0/v;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILE0/u;)V

    new-instance v0, Ls0/e;

    invoke-direct {v0, v7, v4}, Ls0/e;-><init>(Ls0/h;I)V

    iget-object v2, v7, Ls0/h;->A:LE0/s;

    invoke-virtual {v2, v3, v0, v6}, LE0/s;->f(LE0/p;LE0/n;I)J

    iget-object v8, v7, Ls0/h;->q:LA/d;

    new-instance v9, Landroidx/media3/exoplayer/source/v;

    iget-object v0, v3, LE0/v;->q:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v9, v0}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    iget v10, v3, LE0/v;->r:I

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v18}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    goto :goto_a

    :cond_e
    :goto_8
    new-instance v2, Ls0/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, LE0/v;

    iget-object v8, v7, Ls0/h;->z:Landroidx/media3/datasource/DataSource;

    iget-object v0, v0, LB3/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v8, v0, v5, v2}, LE0/v;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILE0/u;)V

    new-instance v0, Ls0/e;

    invoke-direct {v0, v7, v4}, Ls0/e;-><init>(Ls0/h;I)V

    iget-object v2, v7, Ls0/h;->A:LE0/s;

    invoke-virtual {v2, v3, v0, v6}, LE0/s;->f(LE0/p;LE0/n;I)J

    iget-object v8, v7, Ls0/h;->q:LA/d;

    new-instance v9, Landroidx/media3/exoplayer/source/v;

    iget-object v0, v3, LE0/v;->q:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v9, v0}, Landroidx/media3/exoplayer/source/v;-><init>(Landroidx/media3/datasource/DataSpec;)V

    iget v10, v3, LE0/v;->r:I

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v18}, LA/d;->o(Landroidx/media3/exoplayer/source/v;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    goto :goto_a

    :cond_f
    :goto_9
    :try_start_1
    iget-object v0, v0, LB3/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lk0/C;->T(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, v7, Ls0/h;->K:J

    sub-long/2addr v2, v4

    iput-wide v2, v7, Ls0/h;->L:J

    invoke-virtual {v7, v6}, Ls0/h;->y(Z)V
    :try_end_1
    .catch Landroidx/media3/common/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v7, v0}, Ls0/h;->x(Ljava/io/IOException;)V

    goto :goto_a

    :cond_10
    invoke-virtual {v7}, Ls0/h;->v()V

    goto :goto_a

    :cond_11
    invoke-virtual {v7, v6}, Ls0/h;->y(Z)V

    :goto_a
    return-void

    :goto_b
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
