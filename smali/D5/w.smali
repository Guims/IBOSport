.class public final LD5/w;
.super Ljava/lang/Object;

# interfaces
.implements LK5/F;


# instance fields
.field public final b:LK5/g;

.field public final q:LK5/g;

.field public r:Z

.field public final s:J

.field public t:Z

.field public final synthetic u:LD5/y;


# direct methods
.method public constructor <init>(LD5/y;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/w;->u:LD5/y;

    iput-wide p2, p0, LD5/w;->s:J

    iput-boolean p4, p0, LD5/w;->t:Z

    new-instance p1, LK5/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/w;->b:LK5/g;

    new-instance p1, LK5/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/w;->q:LK5/g;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    sget-object v0, Lx5/b;->a:[B

    iget-object v0, p0, LD5/w;->u:LD5/y;

    iget-object v0, v0, LD5/y;->n:LD5/q;

    invoke-virtual {v0, p1, p2}, LD5/q;->r(J)V

    return-void
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, LD5/w;->u:LD5/y;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LD5/w;->r:Z

    iget-object v1, p0, LD5/w;->q:LK5/g;

    iget-wide v2, v1, LK5/g;->q:J

    invoke-virtual {v1}, LK5/g;->a()V

    iget-object v1, p0, LD5/w;->u:LD5/y;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2, v3}, LD5/w;->a(J)V

    :cond_0
    iget-object v0, p0, LD5/w;->u:LD5/y;

    invoke-virtual {v0}, LD5/y;->a()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public final read(LK5/g;J)J
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_9

    :goto_0
    iget-object v6, v1, LD5/w;->u:LD5/y;

    monitor-enter v6

    :try_start_0
    iget-object v7, v1, LD5/w;->u:LD5/y;

    iget-object v7, v7, LD5/y;->i:LD5/x;

    invoke-virtual {v7}, LK5/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v7, v1, LD5/w;->u:LD5/y;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v8, v7, LD5/y;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    monitor-exit v7

    if-eqz v8, :cond_1

    iget-boolean v7, v1, LD5/w;->t:Z

    if-nez v7, :cond_1

    iget-object v7, v1, LD5/w;->u:LD5/y;

    iget-object v7, v7, LD5/y;->l:Ljava/io/IOException;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, LD5/E;

    iget-object v8, v1, LD5/w;->u:LD5/y;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v9, v8, LD5/y;->k:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v8

    invoke-static {v9}, Lcom/google/android/material/datepicker/e;->i(I)V

    invoke-direct {v7, v9}, LD5/E;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-boolean v8, v1, LD5/w;->r:Z

    if-nez v8, :cond_8

    iget-object v8, v1, LD5/w;->q:LK5/g;

    iget-wide v9, v8, LK5/g;->q:J

    cmp-long v11, v9, v4

    if-lez v11, :cond_3

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v0, v9, v10}, LK5/g;->read(LK5/g;J)J

    move-result-wide v8

    iget-object v10, v1, LD5/w;->u:LD5/y;

    iget-wide v4, v10, LD5/y;->a:J

    add-long/2addr v4, v8

    iput-wide v4, v10, LD5/y;->a:J

    const-wide/16 v14, -0x1

    iget-wide v12, v10, LD5/y;->b:J

    sub-long/2addr v4, v12

    if-nez v7, :cond_2

    iget-object v10, v10, LD5/y;->n:LD5/q;

    iget-object v10, v10, LD5/q;->E:LD5/D;

    invoke-virtual {v10}, LD5/D;->a()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-long v12, v10

    cmp-long v10, v4, v12

    if-ltz v10, :cond_2

    iget-object v10, v1, LD5/w;->u:LD5/y;

    iget-object v12, v10, LD5/y;->n:LD5/q;

    iget v10, v10, LD5/y;->m:I

    invoke-virtual {v12, v10, v4, v5}, LD5/q;->y(IJ)V

    iget-object v4, v1, LD5/w;->u:LD5/y;

    iget-wide v12, v4, LD5/y;->a:J

    iput-wide v12, v4, LD5/y;->b:J

    :cond_2
    :goto_2
    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    const-wide/16 v14, -0x1

    iget-boolean v4, v1, LD5/w;->t:Z

    if-nez v4, :cond_4

    if-nez v7, :cond_4

    iget-object v4, v1, LD5/w;->u:LD5/y;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v12, 0x1

    move-wide v8, v14

    goto :goto_3

    :catch_0
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_4
    move-wide v8, v14

    goto :goto_2

    :goto_3
    :try_start_a
    iget-object v4, v1, LD5/w;->u:LD5/y;

    iget-object v4, v4, LD5/y;->i:LD5/x;

    invoke-virtual {v4}, LD5/x;->k()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v6

    if-eqz v12, :cond_5

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_5
    cmp-long v0, v8, v14

    if-eqz v0, :cond_6

    invoke-virtual {v1, v8, v9}, LD5/w;->a(J)V

    return-wide v8

    :cond_6
    if-nez v7, :cond_7

    return-wide v14

    :cond_7
    throw v7

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_8
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_4
    :try_start_e
    iget-object v2, v1, LD5/w;->u:LD5/y;

    iget-object v2, v2, LD5/y;->i:LD5/x;

    invoke-virtual {v2}, LD5/x;->k()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :goto_5
    monitor-exit v6

    throw v0

    :cond_9
    const-string v0, "byteCount < 0: "

    invoke-static {v2, v3, v0}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LD5/w;->u:LD5/y;

    iget-object v0, v0, LD5/y;->i:LD5/x;

    return-object v0
.end method
