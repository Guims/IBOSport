.class public final LD5/v;
.super Ljava/lang/Object;

# interfaces
.implements LK5/D;


# instance fields
.field public final b:LK5/g;

.field public q:Z

.field public final r:Z

.field public final synthetic s:LD5/y;


# direct methods
.method public constructor <init>(LD5/y;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/v;->s:LD5/y;

    iput-boolean p2, p0, LD5/v;->r:Z

    new-instance p1, LK5/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/v;->b:LK5/g;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    iget-object v1, p0, LD5/v;->s:LD5/y;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-object v0, v0, LD5/y;->j:LD5/x;

    invoke-virtual {v0}, LK5/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v2, p0, LD5/v;->s:LD5/y;

    iget-wide v3, v2, LD5/y;->c:J

    iget-wide v5, v2, LD5/y;->d:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    iget-boolean v0, p0, LD5/v;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LD5/v;->q:Z

    if-nez v0, :cond_0

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v0, v2, LD5/y;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2

    if-nez v0, :cond_0

    iget-object v0, p0, LD5/v;->s:LD5/y;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_0
    :try_start_8
    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-object v0, v0, LD5/y;->j:LD5/x;

    invoke-virtual {v0}, LD5/x;->k()V

    iget-object v0, p0, LD5/v;->s:LD5/y;

    invoke-virtual {v0}, LD5/y;->b()V

    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-wide v2, v0, LD5/y;->d:J

    iget-wide v4, v0, LD5/y;->c:J

    sub-long/2addr v2, v4

    iget-object v0, p0, LD5/v;->b:LK5/g;

    iget-wide v4, v0, LK5/g;->q:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-wide v2, v0, LD5/y;->c:J

    add-long/2addr v2, v10

    iput-wide v2, v0, LD5/y;->c:J

    if-eqz p1, :cond_1

    iget-object p1, p0, LD5/v;->b:LK5/g;

    iget-wide v2, p1, LK5/g;->q:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    cmp-long p1, v10, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v8, p1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    monitor-exit v1

    iget-object p1, v0, LD5/y;->j:LD5/x;

    invoke-virtual {p1}, LK5/d;->h()V

    :try_start_9
    iget-object p1, p0, LD5/v;->s:LD5/y;

    iget-object v6, p1, LD5/y;->n:LD5/q;

    iget v7, p1, LD5/y;->m:I

    iget-object v9, p0, LD5/v;->b:LK5/g;

    invoke-virtual/range {v6 .. v11}, LD5/q;->s(IZLK5/g;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iget-object p1, p0, LD5/v;->s:LD5/y;

    iget-object p1, p1, LD5/y;->j:LD5/x;

    invoke-virtual {p1}, LD5/x;->k()V

    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-object v0, v0, LD5/y;->j:LD5/x;

    invoke-virtual {v0}, LD5/x;->k()V

    throw p1

    :goto_3
    :try_start_a
    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-object v0, v0, LD5/y;->j:LD5/x;

    invoke-virtual {v0}, LD5/x;->k()V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_4
    monitor-exit v1

    throw p1
.end method

.method public final close()V
    .locals 13

    iget-object v1, p0, LD5/v;->s:LD5/y;

    sget-object v0, Lx5/b;->a:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, LD5/v;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, LD5/v;->s:LD5/y;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget v0, v2, LD5/y;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    iget-object v1, p0, LD5/v;->s:LD5/y;

    iget-object v3, v1, LD5/y;->h:LD5/v;

    iget-boolean v3, v3, LD5/v;->r:Z

    if-nez v3, :cond_3

    iget-object v3, p0, LD5/v;->b:LK5/g;

    iget-wide v3, v3, LK5/g;->q:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    :goto_1
    iget-object v0, p0, LD5/v;->b:LK5/g;

    iget-wide v0, v0, LK5/g;->q:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, LD5/v;->a(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v7, v1, LD5/y;->n:LD5/q;

    iget v8, v1, LD5/y;->m:I

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v7 .. v12}, LD5/q;->s(IZLK5/g;J)V

    :cond_3
    iget-object v1, p0, LD5/v;->s:LD5/y;

    monitor-enter v1

    :try_start_4
    iput-boolean v2, p0, LD5/v;->q:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-object v0, v0, LD5/y;->n:LD5/q;

    invoke-virtual {v0}, LD5/q;->flush()V

    iget-object v0, p0, LD5/v;->s:LD5/y;

    invoke-virtual {v0}, LD5/y;->a()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final flush()V
    .locals 4

    iget-object v0, p0, LD5/v;->s:LD5/y;

    sget-object v1, Lx5/b;->a:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD5/v;->s:LD5/y;

    invoke-virtual {v1}, LD5/y;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, LD5/v;->b:LK5/g;

    iget-wide v0, v0, LK5/g;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LD5/v;->a(Z)V

    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-object v0, v0, LD5/y;->n:LD5/q;

    invoke-virtual {v0}, LD5/q;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final q(LK5/g;J)V
    .locals 3

    sget-object v0, Lx5/b;->a:[B

    iget-object v0, p0, LD5/v;->b:LK5/g;

    invoke-virtual {v0, p1, p2, p3}, LK5/g;->q(LK5/g;J)V

    :goto_0
    iget-wide p1, v0, LK5/g;->q:J

    const-wide/16 v1, 0x4000

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LD5/v;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LD5/v;->s:LD5/y;

    iget-object v0, v0, LD5/y;->j:LD5/x;

    return-object v0
.end method
