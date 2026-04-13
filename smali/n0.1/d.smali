.class public final Ln0/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/DataSink;


# instance fields
.field public final a:Ln0/b;

.field public final b:J

.field public final c:I

.field public d:Landroidx/media3/datasource/DataSpec;

.field public e:J

.field public f:Ljava/io/File;

.field public g:Ljava/io/OutputStream;

.field public h:J

.field public i:J

.field public j:Ln0/r;


# direct methods
.method public constructor <init>(Ln0/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ln0/d;->a:Ln0/b;

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Ln0/d;->b:J

    const/16 p1, 0x5000

    iput p1, p0, Ln0/d;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    iget-object v0, p0, Ln0/d;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Ln0/d;->g:Ljava/io/OutputStream;

    invoke-static {v0}, Lk0/C;->g(Ljava/io/Closeable;)V

    iput-object v1, p0, Ln0/d;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Ln0/d;->f:Ljava/io/File;

    iput-object v1, p0, Ln0/d;->f:Ljava/io/File;

    iget-object v0, p0, Ln0/d;->a:Ln0/b;

    iget-wide v3, p0, Ln0/d;->h:J

    move-object v8, v0

    check-cast v8, Ln0/t;

    monitor-enter v8

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v8

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_3
    iget-object v7, v8, Ln0/t;->c:LD5/g;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static/range {v2 .. v7}, Ln0/u;->a(Ljava/io/File;JJLD5/g;)Ln0/u;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Ln0/t;->c:LD5/g;

    iget-object v3, v0, Ln0/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, LD5/g;->p(Ljava/lang/String;)Ln0/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v0, Ln0/j;->q:J

    iget-wide v5, v0, Ln0/j;->r:J

    invoke-virtual {v1, v3, v4, v5, v6}, Ln0/l;->a(JJ)Z

    move-result v3

    invoke-static {v3}, Lk0/c;->j(Z)V

    iget-object v1, v1, Ln0/l;->e:Ln0/p;

    invoke-static {v1}, Ln0/o;->a(Ln0/o;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    iget-wide v5, v0, Ln0/j;->q:J

    iget-wide v9, v0, Ln0/j;->r:J

    add-long/2addr v5, v9

    cmp-long v1, v5, v3

    if-gtz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lk0/c;->j(Z)V

    :cond_4
    iget-object v1, v8, Ln0/t;->d:Ln0/h;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v9, v8, Ln0/t;->d:Ln0/h;

    iget-wide v10, v0, Ln0/j;->r:J

    iget-wide v12, v0, Ln0/j;->u:J

    invoke-virtual/range {v9 .. v14}, Ln0/h;->e(JJLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Ln0/a;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_1
    invoke-virtual {v8, v0}, Ln0/t;->b(Ln0/u;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, v8, Ln0/t;->c:LD5/g;

    invoke-virtual {v0}, LD5/g;->z()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v8

    return-void

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v1, Ln0/a;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Ln0/d;->g:Ljava/io/OutputStream;

    invoke-static {v2}, Lk0/C;->g(Ljava/io/Closeable;)V

    iput-object v1, p0, Ln0/d;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Ln0/d;->f:Ljava/io/File;

    iput-object v1, p0, Ln0/d;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public final b(Landroidx/media3/datasource/DataSpec;)V
    .locals 14

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Ln0/d;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Ln0/d;->e:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    iget-object v0, p0, Ln0/d;->a:Ln0/b;

    iget-object v1, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    sget v4, Lk0/C;->a:I

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v6, p0, Ln0/d;->i:J

    add-long v10, v4, v6

    move-object p1, v0

    check-cast p1, Ln0/t;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ln0/t;->d()V

    iget-object v0, p1, Ln0/t;->c:LD5/g;

    invoke-virtual {v0, v1}, LD5/g;->p(Ljava/lang/String;)Ln0/l;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v2, v3}, Ln0/l;->a(JJ)Z

    move-result v1

    invoke-static {v1}, Lk0/c;->j(Z)V

    iget-object v1, p1, Ln0/t;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Ln0/t;->a:Ljava/io/File;

    invoke-static {v1}, Ln0/t;->e(Ljava/io/File;)V

    invoke-virtual {p1}, Ln0/t;->k()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v1, p1, Ln0/t;->b:Ln0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/io/File;

    iget-object v1, p1, Ln0/t;->a:Ljava/io/File;

    iget-object v2, p1, Ln0/t;->f:Ljava/util/Random;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v8}, Ln0/t;->e(Ljava/io/File;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v9, v0, Ln0/l;->a:I

    invoke-static/range {v8 .. v13}, Ln0/u;->b(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iput-object v0, p0, Ln0/d;->f:Ljava/io/File;

    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Ln0/d;->f:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v0, p0, Ln0/d;->c:I

    if-lez v0, :cond_4

    iget-object v0, p0, Ln0/d;->j:Ln0/r;

    if-nez v0, :cond_3

    new-instance v0, Ln0/r;

    iget v1, p0, Ln0/d;->c:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Ln0/d;->j:Ln0/r;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ln0/r;->a(Ljava/io/OutputStream;)V

    :goto_2
    iget-object p1, p0, Ln0/d;->j:Ln0/r;

    iput-object p1, p0, Ln0/d;->g:Ljava/io/OutputStream;

    goto :goto_3

    :cond_4
    iput-object p1, p0, Ln0/d;->g:Ljava/io/OutputStream;

    :goto_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln0/d;->h:J

    return-void

    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Ln0/d;->d:Landroidx/media3/datasource/DataSpec;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ln0/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ln0/c;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)V
    .locals 4

    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ln0/d;->d:Landroidx/media3/datasource/DataSpec;

    return-void

    :cond_0
    iput-object p1, p0, Ln0/d;->d:Landroidx/media3/datasource/DataSpec;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ln0/d;->b:J

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Ln0/d;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln0/d;->i:J

    :try_start_0
    invoke-virtual {p0, p1}, Ln0/d;->b(Landroidx/media3/datasource/DataSpec;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ln0/c;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write([BII)V
    .locals 8

    iget-object v0, p0, Ln0/d;->d:Landroidx/media3/datasource/DataSpec;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    :try_start_0
    iget-wide v2, p0, Ln0/d;->h:J

    iget-wide v4, p0, Ln0/d;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ln0/d;->a()V

    invoke-virtual {p0, v0}, Ln0/d;->b(Landroidx/media3/datasource/DataSpec;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    sub-int v2, p3, v1

    int-to-long v2, v2

    iget-wide v4, p0, Ln0/d;->e:J

    iget-wide v6, p0, Ln0/d;->h:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Ln0/d;->g:Ljava/io/OutputStream;

    sget v4, Lk0/C;->a:I

    add-int v4, p2, v1

    invoke-virtual {v3, p1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v2

    iget-wide v3, p0, Ln0/d;->h:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Ln0/d;->h:J

    iget-wide v2, p0, Ln0/d;->i:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Ln0/d;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    new-instance p2, Ln0/c;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_3
    return-void
.end method
