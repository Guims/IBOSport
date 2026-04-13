.class public final Ln0/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Ln0/u;

.field public E:Z

.field public F:Z

.field public G:J

.field public final b:Ln0/b;

.field public final q:Landroidx/media3/datasource/DataSource;

.field public final r:Landroidx/media3/datasource/TeeDataSource;

.field public final s:Landroidx/media3/datasource/DataSource;

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public w:Landroid/net/Uri;

.field public x:Landroidx/media3/datasource/DataSpec;

.field public y:Landroidx/media3/datasource/DataSpec;

.field public z:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Ln0/b;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Ln0/i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/f;->b:Ln0/b;

    iput-object p3, p0, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ln0/f;->t:Z

    and-int/lit8 p3, p6, 0x2

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, Ln0/f;->u:Z

    iput-boolean p1, p0, Ln0/f;->v:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iput-object p2, p0, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    if-eqz p4, :cond_1

    new-instance p1, Landroidx/media3/datasource/TeeDataSource;

    invoke-direct {p1, p2, p4}, Landroidx/media3/datasource/TeeDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;)V

    :cond_1
    iput-object p1, p0, Ln0/f;->r:Landroidx/media3/datasource/TeeDataSource;

    return-void

    :cond_2
    sget-object p2, Landroidx/media3/datasource/PlaceholderDataSource;->INSTANCE:Landroidx/media3/datasource/PlaceholderDataSource;

    iput-object p2, p0, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    iput-object p1, p0, Ln0/f;->r:Landroidx/media3/datasource/TeeDataSource;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Ln0/f;->b:Ln0/b;

    iget-object v1, p0, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Ln0/f;->y:Landroidx/media3/datasource/DataSpec;

    iput-object v2, p0, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Ln0/f;->D:Ln0/u;

    if-eqz v1, :cond_1

    check-cast v0, Ln0/t;

    invoke-virtual {v0, v1}, Ln0/t;->j(Ln0/u;)V

    iput-object v2, p0, Ln0/f;->D:Ln0/u;

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    iput-object v2, p0, Ln0/f;->y:Landroidx/media3/datasource/DataSpec;

    iput-object v2, p0, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v3, p0, Ln0/f;->D:Ln0/u;

    if-eqz v3, :cond_2

    check-cast v0, Ln0/t;

    invoke-virtual {v0, v3}, Ln0/t;->j(Ln0/u;)V

    iput-object v2, p0, Ln0/f;->D:Ln0/u;

    :cond_2
    throw v1
.end method

.method public final addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Ln0/f;->x:Landroidx/media3/datasource/DataSpec;

    iput-object v0, p0, Ln0/f;->w:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln0/f;->B:J

    :try_start_0
    invoke-virtual {p0}, Ln0/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v2, p0, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    if-eq v1, v2, :cond_0

    instance-of v1, v0, Ln0/a;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ln0/f;->E:Z

    :cond_1
    throw v0
.end method

.method public final g(Landroidx/media3/datasource/DataSpec;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v7, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    sget v2, Lk0/C;->a:I

    iget-boolean v2, v1, Ln0/f;->F:Z

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    move-object v9, v8

    goto :goto_1

    :cond_0
    iget-boolean v2, v1, Ln0/f;->t:Z

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, v1, Ln0/f;->b:Ln0/b;

    iget-wide v3, v1, Ln0/f;->B:J

    iget-wide v5, v1, Ln0/f;->C:J

    check-cast v2, Ln0/t;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ln0/t;->d()V

    :goto_0
    invoke-virtual/range {v2 .. v7}, Ln0/t;->l(JJLjava/lang/String;)Ln0/u;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_2
    iget-object v2, v1, Ln0/f;->b:Ln0/b;

    iget-wide v3, v1, Ln0/f;->B:J

    iget-wide v5, v1, Ln0/f;->C:J

    check-cast v2, Ln0/t;

    invoke-virtual/range {v2 .. v7}, Ln0/t;->l(JJLjava/lang/String;)Ln0/u;

    move-result-object v9

    :goto_1
    const-wide/16 v2, -0x1

    if-nez v9, :cond_3

    iget-object v4, v1, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v5

    iget-wide v10, v1, Ln0/f;->B:J

    invoke-virtual {v5, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v5

    iget-wide v10, v1, Ln0/f;->C:J

    invoke-virtual {v5, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    goto :goto_3

    :cond_3
    iget-boolean v4, v9, Ln0/j;->s:Z

    if-eqz v4, :cond_5

    iget-object v4, v9, Ln0/j;->t:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-wide v5, v9, Ln0/j;->q:J

    iget-wide v10, v1, Ln0/f;->B:J

    sub-long/2addr v10, v5

    iget-wide v12, v9, Ln0/j;->r:J

    sub-long/2addr v12, v10

    iget-wide v14, v1, Ln0/f;->C:J

    cmp-long v16, v14, v2

    if-eqz v16, :cond_4

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroidx/media3/datasource/DataSpec$Builder;->setUriPositionOffset(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    iget-object v4, v1, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    goto :goto_3

    :cond_5
    iget-wide v4, v9, Ln0/j;->r:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_6

    iget-wide v4, v1, Ln0/f;->C:J

    goto :goto_2

    :cond_6
    iget-wide v10, v1, Ln0/f;->C:J

    cmp-long v6, v10, v2

    if-eqz v6, :cond_7

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    iget-wide v10, v1, Ln0/f;->B:J

    invoke-virtual {v6, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v5

    iget-object v4, v1, Ln0/f;->r:Landroidx/media3/datasource/TeeDataSource;

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, v1, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    iget-object v6, v1, Ln0/f;->b:Ln0/b;

    check-cast v6, Ln0/t;

    invoke-virtual {v6, v9}, Ln0/t;->j(Ln0/u;)V

    move-object v9, v8

    :goto_3
    iget-boolean v6, v1, Ln0/f;->F:Z

    if-nez v6, :cond_9

    iget-object v6, v1, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    if-ne v4, v6, :cond_9

    iget-wide v10, v1, Ln0/f;->B:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_4

    :cond_9
    const-wide v10, 0x7fffffffffffffffL

    :goto_4
    iput-wide v10, v1, Ln0/f;->G:J

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_d

    iget-object v11, v1, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v12, v1, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    if-ne v11, v12, :cond_a

    move v11, v10

    goto :goto_5

    :cond_a
    move v11, v6

    :goto_5
    invoke-static {v11}, Lk0/c;->j(Z)V

    iget-object v11, v1, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    if-ne v4, v11, :cond_b

    return-void

    :cond_b
    :try_start_5
    invoke-virtual {v1}, Ln0/f;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    iget-boolean v2, v9, Ln0/j;->s:Z

    if-nez v2, :cond_c

    iget-object v2, v1, Ln0/f;->b:Ln0/b;

    check-cast v2, Ln0/t;

    invoke-virtual {v2, v9}, Ln0/t;->j(Ln0/u;)V

    :cond_c
    throw v0

    :cond_d
    :goto_6
    if-eqz v9, :cond_e

    iget-boolean v11, v9, Ln0/j;->s:Z

    if-nez v11, :cond_e

    iput-object v9, v1, Ln0/f;->D:Ln0/u;

    :cond_e
    iput-object v4, v1, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iput-object v5, v1, Ln0/f;->y:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v11, 0x0

    iput-wide v11, v1, Ln0/f;->A:J

    invoke-interface {v4, v5}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v11

    new-instance v9, Ln0/h;

    invoke-direct {v9}, Ln0/h;-><init>()V

    iget-wide v13, v5, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v5, v13, v2

    if-nez v5, :cond_f

    cmp-long v2, v11, v2

    if-eqz v2, :cond_f

    iput-wide v11, v1, Ln0/f;->C:J

    iget-wide v2, v1, Ln0/f;->B:J

    add-long/2addr v2, v11

    const-string v5, "exo_len"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2, v5}, Ln0/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    iget-object v2, v1, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v3, v1, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    if-ne v2, v3, :cond_10

    move v6, v10

    :cond_10
    if-nez v6, :cond_13

    invoke-interface {v4}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Ln0/f;->w:Landroid/net/Uri;

    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v8, v1, Ln0/f;->w:Landroid/net/Uri;

    :cond_11
    const-string v0, "exo_redir"

    if-nez v8, :cond_12

    iget-object v2, v9, Ln0/h;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Ln0/h;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_12
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Ln0/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    :goto_7
    iget-object v0, v1, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v2, v1, Ln0/f;->r:Landroidx/media3/datasource/TeeDataSource;

    if-ne v0, v2, :cond_14

    iget-object v0, v1, Ln0/f;->b:Ln0/b;

    check-cast v0, Ln0/t;

    invoke-virtual {v0, v7, v9}, Ln0/t;->c(Ljava/lang/String;Ln0/h;)V

    :cond_14
    return-void
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Ln0/f;->s:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ln0/f;->w:Landroid/net/Uri;

    return-object v0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 14

    iget-object v0, p0, Ln0/f;->b:Ln0/b;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/media3/datasource/DataSpec$Builder;->setKey(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v3

    iput-object v3, p0, Ln0/f;->x:Landroidx/media3/datasource/DataSpec;

    iget-object v4, v3, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    move-object v5, v0

    check-cast v5, Ln0/t;

    invoke-virtual {v5, v2}, Ln0/t;->g(Ljava/lang/String;)Ln0/p;

    move-result-object v5

    const-string v6, "exo_redir"

    iget-object v5, v5, Ln0/p;->b:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_3

    move-object v4, v6

    :cond_3
    iput-object v4, p0, Ln0/f;->w:Landroid/net/Uri;

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v4, p0, Ln0/f;->B:J

    iget-boolean v4, p0, Ln0/f;->u:Z

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Ln0/f;->E:Z

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Ln0/f;->v:Z

    if-eqz v4, :cond_5

    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_5

    :goto_3
    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    iput-boolean v4, p0, Ln0/f;->F:Z

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_6

    iput-wide v6, p0, Ln0/f;->C:J

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_6
    check-cast v0, Ln0/t;

    invoke-virtual {v0, v2}, Ln0/t;->g(Ljava/lang/String;)Ln0/p;

    move-result-object v0

    invoke-static {v0}, Ln0/o;->a(Ln0/o;)J

    move-result-wide v10

    iput-wide v10, p0, Ln0/f;->C:J

    cmp-long v0, v10, v6

    if-eqz v0, :cond_8

    iget-wide v12, p1, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Ln0/f;->C:J

    cmp-long v0, v10, v8

    if-ltz v0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p1

    :cond_8
    :goto_5
    iget-wide v10, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v10, v6

    if-eqz v0, :cond_a

    iget-wide v12, p0, Ln0/f;->C:J

    cmp-long v0, v12, v6

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :goto_6
    iput-wide v10, p0, Ln0/f;->C:J

    :cond_a
    iget-wide v10, p0, Ln0/f;->C:J

    cmp-long v0, v10, v8

    if-gtz v0, :cond_b

    cmp-long v0, v10, v6

    if-nez v0, :cond_c

    :cond_b
    invoke-virtual {p0, v3, v5}, Ln0/f;->g(Landroidx/media3/datasource/DataSpec;Z)V

    :cond_c
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long p1, v2, v6

    if-eqz p1, :cond_d

    return-wide v2

    :cond_d
    iget-wide v0, p0, Ln0/f;->C:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :goto_7
    iget-object v0, p0, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    iget-object v2, p0, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    if-eq v0, v2, :cond_e

    instance-of v0, p1, Ln0/a;

    if-eqz v0, :cond_f

    :cond_e
    iput-boolean v1, p0, Ln0/f;->E:Z

    :cond_f
    throw p1
.end method

.method public final read([BII)I
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p3

    iget-object v2, v1, Ln0/f;->q:Landroidx/media3/datasource/DataSource;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-wide v4, v1, Ln0/f;->C:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, -0x1

    if-nez v4, :cond_1

    return v5

    :cond_1
    iget-object v4, v1, Ln0/f;->x:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Ln0/f;->y:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    :try_start_0
    iget-wide v10, v1, Ln0/f;->B:J

    iget-wide v12, v1, Ln0/f;->G:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_2

    invoke-virtual {v1, v4, v9}, Ln0/f;->g(Landroidx/media3/datasource/DataSpec;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object v10, v1, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-interface {v10, v11, v12, v0}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v10

    const-wide/16 v13, -0x1

    if-eq v10, v5, :cond_4

    iget-wide v3, v1, Ln0/f;->B:J

    int-to-long v5, v10

    add-long/2addr v3, v5

    iput-wide v3, v1, Ln0/f;->B:J

    iget-wide v3, v1, Ln0/f;->A:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Ln0/f;->A:J

    iget-wide v3, v1, Ln0/f;->C:J

    cmp-long v0, v3, v13

    if-eqz v0, :cond_3

    sub-long/2addr v3, v5

    iput-wide v3, v1, Ln0/f;->C:J

    return v10

    :cond_3
    move/from16 v17, v10

    goto :goto_3

    :cond_4
    iget-object v5, v1, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    if-ne v5, v2, :cond_5

    move v15, v9

    goto :goto_1

    :cond_5
    move v15, v3

    :goto_1
    if-nez v15, :cond_8

    move-wide v15, v13

    iget-wide v13, v8, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v8, v13, v15

    if-eqz v8, :cond_6

    move/from16 v17, v10

    iget-wide v9, v1, Ln0/f;->A:J

    cmp-long v9, v9, v13

    if-gez v9, :cond_9

    goto :goto_2

    :cond_6
    move/from16 v17, v10

    :goto_2
    iget-object v0, v4, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    sget v4, Lk0/C;->a:I

    iput-wide v6, v1, Ln0/f;->C:J

    iget-object v4, v1, Ln0/f;->r:Landroidx/media3/datasource/TeeDataSource;

    if-ne v5, v4, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_a

    new-instance v3, Ln0/h;

    invoke-direct {v3}, Ln0/h;-><init>()V

    iget-wide v4, v1, Ln0/f;->B:J

    const-string v6, "exo_len"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ln0/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Ln0/f;->b:Ln0/b;

    check-cast v4, Ln0/t;

    invoke-virtual {v4, v0, v3}, Ln0/t;->c(Ljava/lang/String;Ln0/h;)V

    return v17

    :cond_8
    move/from16 v17, v10

    move-wide v15, v13

    :cond_9
    iget-wide v9, v1, Ln0/f;->C:J

    cmp-long v5, v9, v6

    if-gtz v5, :cond_b

    cmp-long v5, v9, v15

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    return v17

    :cond_b
    :goto_4
    invoke-virtual {v1}, Ln0/f;->a()V

    invoke-virtual {v1, v4, v3}, Ln0/f;->g(Landroidx/media3/datasource/DataSpec;Z)V

    invoke-virtual/range {p0 .. p3}, Ln0/f;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_5
    iget-object v3, v1, Ln0/f;->z:Landroidx/media3/datasource/DataSource;

    if-eq v3, v2, :cond_c

    instance-of v2, v0, Ln0/a;

    if-eqz v2, :cond_d

    :cond_c
    const/4 v8, 0x1

    iput-boolean v8, v1, Ln0/f;->E:Z

    :cond_d
    throw v0
.end method
