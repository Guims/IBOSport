.class public final LK5/k;
.super Ljava/lang/Object;

# interfaces
.implements LK5/D;


# instance fields
.field public final b:LK5/s;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(LK5/s;)V
    .locals 2

    const-string v0, "fileHandle"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/k;->b:LK5/s;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LK5/k;->q:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, LK5/k;->b:LK5/s;

    iget-boolean v1, p0, LK5/k;->r:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LK5/k;->r:Z

    iget-object v1, v0, LK5/s;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v2, v0, LK5/s;->r:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, LK5/s;->r:I

    if-nez v2, :cond_2

    iget-boolean v2, v0, LK5/s;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, LK5/s;->t:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final flush()V
    .locals 2

    iget-boolean v0, p0, LK5/k;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/k;->b:LK5/s;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LK5/s;->t:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const-string v0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final q(LK5/g;J)V
    .locals 12

    iget-boolean v0, p0, LK5/k;->r:Z

    if-nez v0, :cond_2

    iget-object v1, p0, LK5/k;->b:LK5/s;

    iget-wide v2, p0, LK5/k;->q:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p1, LK5/g;->q:J

    const-wide/16 v6, 0x0

    move-wide v8, p2

    invoke-static/range {v4 .. v9}, Lcom/bumptech/glide/d;->i(JJJ)V

    add-long p2, v2, v8

    :cond_0
    :goto_0
    cmp-long v0, v2, p2

    if-gez v0, :cond_1

    iget-object v0, p1, LK5/g;->b:LK5/A;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    sub-long v4, p2, v2

    iget v6, v0, LK5/A;->c:I

    iget v7, v0, LK5/A;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, LK5/A;->a:[B

    iget v6, v0, LK5/A;->b:I

    monitor-enter v1

    :try_start_0
    const-string v7, "array"

    invoke-static {v5, v7}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, LK5/s;->t:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, v1, LK5/s;->t:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v5, v6, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget v5, v0, LK5/A;->b:I

    add-int/2addr v5, v4

    iput v5, v0, LK5/A;->b:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    iget-wide v10, p1, LK5/g;->q:J

    sub-long/2addr v10, v6

    iput-wide v10, p1, LK5/g;->q:J

    iget v4, v0, LK5/A;->c:I

    if-ne v5, v4, :cond_0

    invoke-virtual {v0}, LK5/A;->a()LK5/A;

    move-result-object v4

    iput-object v4, p1, LK5/g;->b:LK5/A;

    invoke-static {v0}, LK5/B;->a(LK5/A;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-wide p1, p0, LK5/k;->q:J

    add-long/2addr p1, v8

    iput-wide p1, p0, LK5/k;->q:J

    return-void

    :cond_2
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final timeout()LK5/H;
    .locals 1

    sget-object v0, LK5/H;->d:LK5/G;

    return-object v0
.end method
