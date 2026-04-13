.class public abstract Lp0/i;
.super Ljava/lang/Object;

# interfaces
.implements Lp0/c;


# instance fields
.field public final a:Lp0/h;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:[Lp0/f;

.field public final f:[Lp0/g;

.field public g:I

.field public h:I

.field public i:Lp0/f;

.field public j:Lp0/d;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>([Lp0/f;[Lp0/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lp0/i;->n:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lp0/i;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lp0/i;->e:[Lp0/f;

    array-length p1, p1

    iput p1, p0, Lp0/i;->g:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lp0/i;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lp0/i;->e:[Lp0/f;

    invoke-virtual {p0}, Lp0/i;->f()Lp0/f;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lp0/i;->f:[Lp0/g;

    array-length p2, p2

    iput p2, p0, Lp0/i;->h:I

    :goto_1
    iget p2, p0, Lp0/i;->h:I

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lp0/i;->f:[Lp0/g;

    invoke-virtual {p0}, Lp0/i;->g()Lp0/g;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lp0/h;

    invoke-direct {p1, p0}, Lp0/h;-><init>(Lp0/i;)V

    iput-object p1, p0, Lp0/i;->a:Lp0/h;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lp0/i;->g:I

    iget-object v2, p0, Lp0/i;->e:[Lp0/f;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lp0/i;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lk0/c;->j(Z)V

    iput-wide p1, p0, Lp0/i;->n:J

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp0/i;->k()Lp0/g;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp0/i;->j:Lp0/d;

    if-nez v1, :cond_2

    iget-object v1, p0, Lp0/i;->i:Lp0/f;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lk0/c;->j(Z)V

    iget v1, p0, Lp0/i;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lp0/i;->e:[Lp0/f;

    sub-int/2addr v1, v2

    iput v1, p0, Lp0/i;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lp0/i;->i:Lp0/f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    throw v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic e(Lf1/i;)V
    .locals 0

    invoke-virtual {p0, p1}, Lp0/i;->l(Lp0/f;)V

    return-void
.end method

.method public abstract f()Lp0/f;
.end method

.method public final flush()V
    .locals 5

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lp0/i;->k:Z

    const/4 v1, 0x0

    iput v1, p0, Lp0/i;->m:I

    iget-object v1, p0, Lp0/i;->i:Lp0/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lp0/f;->k()V

    iget-object v2, p0, Lp0/i;->e:[Lp0/f;

    iget v3, p0, Lp0/i;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lp0/i;->g:I

    aput-object v1, v2, v3

    const/4 v1, 0x0

    iput-object v1, p0, Lp0/i;->i:Lp0/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/f;

    invoke-virtual {v1}, Lp0/f;->k()V

    iget-object v2, p0, Lp0/i;->e:[Lp0/f;

    iget v3, p0, Lp0/i;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lp0/i;->g:I

    aput-object v1, v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lp0/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lp0/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/g;

    invoke-virtual {v1}, Lp0/g;->l()V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract g()Lp0/g;
.end method

.method public abstract h(Ljava/lang/Throwable;)Lp0/d;
.end method

.method public abstract i(Lp0/f;Lp0/g;Z)Lp0/d;
.end method

.method public final j()Z
    .locals 13

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lp0/i;->l:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lp0/i;->h:I

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_1

    iget-object v1, p0, Lp0/i;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :cond_1
    iget-boolean v1, p0, Lp0/i;->l:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return v3

    :cond_2
    iget-object v1, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/f;

    iget-object v4, p0, Lp0/i;->f:[Lp0/g;

    iget v5, p0, Lp0/i;->h:I

    sub-int/2addr v5, v2

    iput v5, p0, Lp0/i;->h:I

    aget-object v4, v4, v5

    iget-boolean v5, p0, Lp0/i;->k:Z

    iput-boolean v3, p0, Lp0/i;->k:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, LU2/e;->c(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v0}, LU2/e;->a(I)V

    goto :goto_5

    :cond_3
    iget-wide v6, v1, Lp0/f;->v:J

    iput-wide v6, v4, Lp0/g;->r:J

    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, LU2/e;->c(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v0}, LU2/e;->a(I)V

    :cond_4
    iget-wide v6, v1, Lp0/f;->v:J

    iget-object v8, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-wide v9, p0, Lp0/i;->n:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v9, v11

    if-eqz v0, :cond_6

    cmp-long v0, v6, v9

    if-ltz v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v2

    :goto_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v0, :cond_7

    iput-boolean v2, v4, Lp0/g;->t:Z

    :cond_7
    :try_start_2
    invoke-virtual {p0, v1, v4, v5}, Lp0/i;->i(Lp0/f;Lp0/g;Z)Lp0/d;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lp0/i;->h(Ljava/lang/Throwable;)Lp0/d;

    move-result-object v0

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lp0/i;->h(Ljava/lang/Throwable;)Lp0/d;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_8

    iget-object v5, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iput-object v0, p0, Lp0/i;->j:Lp0/d;

    monitor-exit v5

    return v3

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    :goto_5
    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-boolean v5, p0, Lp0/i;->k:Z

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lp0/g;->l()V

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_7

    :cond_9
    iget-boolean v5, v4, Lp0/g;->t:Z

    if-eqz v5, :cond_a

    iget v3, p0, Lp0/i;->m:I

    add-int/2addr v3, v2

    iput v3, p0, Lp0/i;->m:I

    invoke-virtual {v4}, Lp0/g;->l()V

    goto :goto_6

    :cond_a
    iget v5, p0, Lp0/i;->m:I

    iput v5, v4, Lp0/g;->s:I

    iput v3, p0, Lp0/i;->m:I

    iget-object v3, p0, Lp0/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v1}, Lp0/f;->k()V

    iget-object v3, p0, Lp0/i;->e:[Lp0/f;

    iget v4, p0, Lp0/i;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lp0/i;->g:I

    aput-object v1, v3, v4

    monitor-exit v0

    return v2

    :goto_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :goto_8
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public final k()Lp0/g;
    .locals 2

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp0/i;->j:Lp0/d;

    if-nez v1, :cond_1

    iget-object v1, p0, Lp0/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lp0/i;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/g;

    monitor-exit v0

    return-object v1

    :cond_1
    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(Lp0/f;)V
    .locals 2

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp0/i;->j:Lp0/d;

    if-nez v1, :cond_2

    iget-object v1, p0, Lp0/i;->i:Lp0/f;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lk0/c;->d(Z)V

    iget-object v1, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lp0/i;->h:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lp0/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lp0/i;->i:Lp0/f;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m(Lp0/g;)V
    .locals 4

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lp0/g;->k()V

    iget-object v1, p0, Lp0/i;->f:[Lp0/g;

    iget v2, p0, Lp0/i;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lp0/i;->h:I

    aput-object p1, v1, v2

    iget-object p1, p0, Lp0/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lp0/i;->h:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lp0/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lp0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lp0/i;->l:Z

    iget-object v1, p0, Lp0/i;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lp0/i;->a:Lp0/h;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
