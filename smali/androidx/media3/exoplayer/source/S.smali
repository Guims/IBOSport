.class public final Landroidx/media3/exoplayer/source/S;
.super Ljava/lang/Object;

# interfaces
.implements LE0/p;


# instance fields
.field public A:Z

.field public final synthetic B:Landroidx/media3/exoplayer/source/V;

.field public final b:Landroid/net/Uri;

.field public final q:Landroidx/media3/datasource/StatsDataSource;

.field public final r:LJ/l;

.field public final s:Landroidx/media3/exoplayer/source/V;

.field public final t:Lk0/g;

.field public final u:LI0/D;

.field public volatile v:Z

.field public w:Z

.field public x:J

.field public y:Landroidx/media3/datasource/DataSpec;

.field public z:LI0/L;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/V;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;LJ/l;Landroidx/media3/exoplayer/source/V;Lk0/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/S;->b:Landroid/net/Uri;

    new-instance p1, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {p1, p3}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/S;->s:Landroidx/media3/exoplayer/source/V;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/S;->t:Lk0/g;

    new-instance p1, LI0/D;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/S;->w:Z

    sget-object p1, Landroidx/media3/exoplayer/source/v;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/S;->a(J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/S;->y:Landroidx/media3/datasource/DataSpec;

    return-void
.end method


# virtual methods
.method public final a(J)Landroidx/media3/datasource/DataSpec;
    .locals 2

    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/S;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iget-object p2, p2, Landroidx/media3/exoplayer/source/V;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setKey(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    sget-object p2, Landroidx/media3/exoplayer/source/V;->f0:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_c

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/S;->v:Z

    if-nez v2, :cond_c

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    iget-wide v10, v5, LI0/D;->a:J

    invoke-virtual {p0, v10, v11}, Landroidx/media3/exoplayer/source/S;->a(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/exoplayer/source/S;->y:Landroidx/media3/datasource/DataSpec;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v6, v5}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v5

    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/S;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    invoke-virtual {v0}, LJ/l;->I()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    invoke-virtual {v1}, LJ/l;->I()J

    move-result-wide v1

    iput-wide v1, v0, LI0/D;->a:J

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :cond_2
    cmp-long v7, v5, v2

    if-eqz v7, :cond_3

    add-long/2addr v5, v10

    :try_start_1
    iget-object v7, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iget-object v8, v7, Landroidx/media3/exoplayer/source/V;->G:Landroid/os/Handler;

    new-instance v9, Landroidx/media3/exoplayer/source/P;

    const/4 v12, 0x0

    invoke-direct {v9, v7, v12}, Landroidx/media3/exoplayer/source/P;-><init>(Landroidx/media3/exoplayer/source/V;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    move-wide v12, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :goto_2
    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v6}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, LV0/b;->a(Ljava/util/Map;)LV0/b;

    move-result-object v6

    iput-object v6, v5, Landroidx/media3/exoplayer/source/V;->I:LV0/b;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/V;->I:LV0/b;

    if-eqz v6, :cond_4

    iget v6, v6, LV0/b;->u:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    new-instance v7, Landroidx/media3/exoplayer/source/u;

    invoke-direct {v7, v5, v6, p0}, Landroidx/media3/exoplayer/source/u;-><init>(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/source/S;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    new-instance v6, Landroidx/media3/exoplayer/source/U;

    invoke-direct {v6, v0, v4}, Landroidx/media3/exoplayer/source/U;-><init>(IZ)V

    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/source/V;->y(Landroidx/media3/exoplayer/source/U;)LI0/L;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/exoplayer/source/S;->z:LI0/L;

    sget-object v6, Landroidx/media3/exoplayer/source/V;->g0:Landroidx/media3/common/Format;

    invoke-interface {v5, v6}, LI0/L;->format(Landroidx/media3/common/Format;)V

    goto :goto_3

    :cond_4
    move-object v7, v5

    :goto_3
    iget-object v6, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    iget-object v8, p0, Landroidx/media3/exoplayer/source/S;->b:Landroid/net/Uri;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v5}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    iget-object v14, p0, Landroidx/media3/exoplayer/source/S;->s:Landroidx/media3/exoplayer/source/V;

    invoke-virtual/range {v6 .. v14}, LJ/l;->R(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/exoplayer/source/V;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/V;->I:LV0/b;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    iget-object v5, v5, LJ/l;->s:Ljava/lang/Object;

    check-cast v5, LI0/q;

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    instance-of v6, v5, Lb1/d;

    if-eqz v6, :cond_6

    check-cast v5, Lb1/d;

    iput-boolean v4, v5, Lb1/d;->r:Z

    :cond_6
    :goto_4
    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/S;->w:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/S;->x:J

    iget-object v5, v5, LJ/l;->s:Ljava/lang/Object;

    check-cast v5, LI0/q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v10, v11, v6, v7}, LI0/q;->f(JJ)V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/S;->w:Z

    :cond_7
    :goto_5
    if-nez v1, :cond_8

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/S;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_8

    :try_start_2
    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->t:Lk0/g;

    invoke-virtual {v5}, Lk0/g;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    iget-object v7, v5, LJ/l;->s:Ljava/lang/Object;

    check-cast v7, LI0/q;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, LJ/l;->q:Ljava/lang/Object;

    check-cast v5, LI0/m;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7, v5, v6}, LI0/q;->e(LI0/r;LI0/D;)I

    move-result v1

    iget-object v5, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    invoke-virtual {v5}, LJ/l;->I()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iget-wide v7, v7, Landroidx/media3/exoplayer/source/V;->y:J

    add-long/2addr v7, v10

    cmp-long v7, v5, v7

    if-lez v7, :cond_7

    iget-object v7, p0, Landroidx/media3/exoplayer/source/S;->t:Lk0/g;

    invoke-virtual {v7}, Lk0/g;->d()V

    iget-object v7, p0, Landroidx/media3/exoplayer/source/S;->B:Landroidx/media3/exoplayer/source/V;

    iget-object v8, v7, Landroidx/media3/exoplayer/source/V;->G:Landroid/os/Handler;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/V;->F:Landroidx/media3/exoplayer/source/P;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v10, v5

    goto :goto_5

    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    if-ne v1, v4, :cond_9

    move v1, v0

    goto :goto_6

    :cond_9
    iget-object v4, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    invoke-virtual {v4}, LJ/l;->I()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    invoke-virtual {v3}, LJ/l;->I()J

    move-result-wide v3

    iput-wide v3, v2, LI0/D;->a:J

    :cond_a
    :goto_6
    iget-object v2, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    goto/16 :goto_0

    :goto_7
    if-eq v1, v4, :cond_b

    iget-object v1, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    invoke-virtual {v1}, LJ/l;->I()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/media3/exoplayer/source/S;->u:LI0/D;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/S;->r:LJ/l;

    invoke-virtual {v2}, LJ/l;->I()J

    move-result-wide v2

    iput-wide v2, v1, LI0/D;->a:J

    :cond_b
    iget-object v1, p0, Landroidx/media3/exoplayer/source/S;->q:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    throw v0

    :cond_c
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/S;->v:Z

    return-void
.end method
