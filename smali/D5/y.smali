.class public final LD5/y;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public final e:Ljava/util/ArrayDeque;

.field public f:Z

.field public final g:LD5/w;

.field public final h:LD5/v;

.field public final i:LD5/x;

.field public final j:LD5/x;

.field public k:I

.field public l:Ljava/io/IOException;

.field public final m:I

.field public final n:LD5/q;


# direct methods
.method public constructor <init>(ILD5/q;ZZLw5/p;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LD5/y;->m:I

    iput-object p2, p0, LD5/y;->n:LD5/q;

    iget-object p1, p2, LD5/q;->F:LD5/D;

    invoke-virtual {p1}, LD5/D;->a()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, LD5/y;->d:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LD5/y;->e:Ljava/util/ArrayDeque;

    new-instance v0, LD5/w;

    iget-object p2, p2, LD5/q;->E:LD5/D;

    invoke-virtual {p2}, LD5/D;->a()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, LD5/w;-><init>(LD5/y;JZ)V

    iput-object v0, p0, LD5/y;->g:LD5/w;

    new-instance p2, LD5/v;

    invoke-direct {p2, p0, p3}, LD5/v;-><init>(LD5/y;Z)V

    iput-object p2, p0, LD5/y;->h:LD5/v;

    new-instance p2, LD5/x;

    invoke-direct {p2, p0}, LD5/x;-><init>(LD5/y;)V

    iput-object p2, p0, LD5/y;->i:LD5/x;

    new-instance p2, LD5/x;

    invoke-direct {p2, p0}, LD5/x;-><init>(LD5/y;)V

    iput-object p2, p0, LD5/y;->j:LD5/x;

    if-eqz p5, :cond_1

    invoke-virtual {p0}, LD5/y;->g()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, LD5/y;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lx5/b;->a:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LD5/y;->g:LD5/w;

    iget-boolean v1, v0, LD5/w;->t:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, LD5/w;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LD5/y;->h:LD5/v;

    iget-boolean v1, v0, LD5/v;->r:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, LD5/v;->q:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, LD5/y;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LD5/y;->c(Ljava/io/IOException;I)V

    return-void

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, LD5/y;->n:LD5/q;

    iget v1, p0, LD5/y;->m:I

    invoke-virtual {v0, v1}, LD5/q;->f(I)LD5/y;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LD5/y;->h:LD5/v;

    iget-boolean v1, v0, LD5/v;->q:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, LD5/v;->r:Z

    if-nez v0, :cond_2

    iget v0, p0, LD5/y;->k:I

    if-eqz v0, :cond_1

    iget-object v0, p0, LD5/y;->l:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LD5/E;

    iget v1, p0, LD5/y;->k:I

    invoke-static {v1}, Lcom/google/android/material/datepicker/e;->i(I)V

    invoke-direct {v0, v1}, LD5/E;-><init>(I)V

    :goto_0
    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/io/IOException;I)V
    .locals 1

    const-string v0, "rstStatusCode"

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LD5/y;->d(Ljava/io/IOException;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LD5/y;->n:LD5/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    iget-object p1, p1, LD5/q;->L:LD5/z;

    iget v0, p0, LD5/y;->m:I

    invoke-virtual {p1, v0, p2}, LD5/z;->x(II)V

    return-void
.end method

.method public final d(Ljava/io/IOException;I)Z
    .locals 2

    sget-object v0, Lx5/b;->a:[B

    monitor-enter p0

    :try_start_0
    iget v0, p0, LD5/y;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, LD5/y;->g:LD5/w;

    iget-boolean v0, v0, LD5/w;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LD5/y;->h:LD5/v;

    iget-boolean v0, v0, LD5/v;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    iput p2, p0, LD5/y;->k:I

    iput-object p1, p0, LD5/y;->l:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iget-object p1, p0, LD5/y;->n:LD5/q;

    iget p2, p0, LD5/y;->m:I

    invoke-virtual {p1, p2}, LD5/q;->f(I)LD5/y;

    const/4 p1, 0x1

    return p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final e(I)V
    .locals 2

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, LD5/y;->d(Ljava/io/IOException;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LD5/y;->n:LD5/q;

    iget v1, p0, LD5/y;->m:I

    invoke-virtual {v0, v1, p1}, LD5/q;->x(II)V

    return-void
.end method

.method public final f()LD5/v;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LD5/y;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LD5/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reply before requesting the sink"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    iget-object v0, p0, LD5/y;->h:LD5/v;

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 4

    iget v0, p0, LD5/y;->m:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, LD5/y;->n:LD5/q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final declared-synchronized h()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, LD5/y;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, LD5/y;->g:LD5/w;

    iget-boolean v2, v0, LD5/w;->t:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, LD5/w;->r:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, LD5/y;->h:LD5/v;

    iget-boolean v2, v0, LD5/v;->r:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, LD5/v;->q:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, LD5/y;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final i(Lw5/p;Z)V
    .locals 2

    const-string v0, "headers"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx5/b;->a:[B

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LD5/y;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LD5/y;->g:LD5/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iput-boolean v1, p0, LD5/y;->f:Z

    iget-object v0, p0, LD5/y;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    iget-object p1, p0, LD5/y;->g:LD5/w;

    iput-boolean v1, p1, LD5/w;->t:Z

    :cond_2
    invoke-virtual {p0}, LD5/y;->h()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_3

    iget-object p1, p0, LD5/y;->n:LD5/q;

    iget p2, p0, LD5/y;->m:I

    invoke-virtual {p1, p2}, LD5/q;->f(I)LD5/y;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    iget v0, p0, LD5/y;->k:I

    if-nez v0, :cond_0

    iput p1, p0, LD5/y;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
