.class public final LK1/k;
.super Ljava/lang/Object;

# interfaces
.implements LK1/g;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Le2/b;


# instance fields
.field public A:I

.field public B:I

.field public C:LK1/m;

.field public D:LI1/j;

.field public E:LK1/s;

.field public F:I

.field public G:J

.field public H:Ljava/lang/Object;

.field public I:Ljava/lang/Thread;

.field public J:LI1/f;

.field public K:LI1/f;

.field public L:Ljava/lang/Object;

.field public M:Lcom/bumptech/glide/load/data/e;

.field public volatile N:LK1/h;

.field public volatile O:Z

.field public volatile P:Z

.field public Q:Z

.field public R:I

.field public S:I

.field public T:I

.field public final b:LK1/i;

.field public final q:Ljava/util/ArrayList;

.field public final r:Le2/e;

.field public final s:LK1/n;

.field public final t:LI/b;

.field public final u:LJ/l;

.field public final v:LK1/j;

.field public w:Lcom/bumptech/glide/e;

.field public x:LI1/f;

.field public y:Lcom/bumptech/glide/g;

.field public z:LK1/u;


# direct methods
.method public constructor <init>(LK1/n;LJ/l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK1/i;

    invoke-direct {v0}, LK1/i;-><init>()V

    iput-object v0, p0, LK1/k;->b:LK1/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LK1/k;->q:Ljava/util/ArrayList;

    new-instance v0, Le2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LK1/k;->r:Le2/e;

    new-instance v0, LJ/l;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJ/l;-><init>(IZ)V

    iput-object v0, p0, LK1/k;->u:LJ/l;

    new-instance v0, LK1/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LK1/k;->v:LK1/j;

    iput-object p1, p0, LK1/k;->s:LK1/n;

    iput-object p2, p0, LK1/k;->t:LI/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;I)LK1/D;
    .locals 5

    const-string v0, "Decoded result "

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    return-object v1

    :cond_0
    :try_start_0
    sget v2, Ld2/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0, p3, p2}, LK1/k;->e(ILjava/lang/Object;)LK1/D;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v2, v3, p3, v1}, LK1/k;->i(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    return-object p2

    :goto_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    throw p2
.end method

.method public final b(LI1/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILI1/f;)V
    .locals 0

    iput-object p1, p0, LK1/k;->J:LI1/f;

    iput-object p2, p0, LK1/k;->L:Ljava/lang/Object;

    iput-object p3, p0, LK1/k;->M:Lcom/bumptech/glide/load/data/e;

    iput p4, p0, LK1/k;->T:I

    iput-object p5, p0, LK1/k;->K:LI1/f;

    iget-object p2, p0, LK1/k;->b:LK1/i;

    invoke-virtual {p2}, LK1/i;->a()Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, LK1/k;->Q:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, LK1/k;->I:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, LK1/k;->l(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, LK1/k;->f()V

    return-void
.end method

.method public final c(LI1/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V
    .locals 2

    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->b()V

    new-instance v0, LK1/y;

    const-string v1, "Fetching data failed"

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p2}, LK1/y;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object p2

    iput-object p1, v0, LK1/y;->q:LI1/f;

    iput p4, v0, LK1/y;->r:I

    iput-object p2, v0, LK1/y;->s:Ljava/lang/Class;

    iget-object p1, p0, LK1/k;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, LK1/k;->I:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, LK1/k;->l(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, LK1/k;->m()V

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, LK1/k;

    iget-object v0, p0, LK1/k;->y:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, LK1/k;->y:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, LK1/k;->F:I

    iget p1, p1, LK1/k;->F:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final d()Le2/e;
    .locals 1

    iget-object v0, p0, LK1/k;->r:Le2/e;

    return-object v0
.end method

.method public final e(ILjava/lang/Object;)LK1/D;
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LK1/k;->b:LK1/i;

    invoke-virtual {v1, v0}, LK1/i;->c(Ljava/lang/Class;)LK1/B;

    move-result-object v2

    iget-object v0, p0, LK1/k;->D:LI1/j;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    move-object v6, v0

    goto :goto_3

    :cond_1
    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    iget-boolean v1, v1, LK1/i;->r:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    sget-object v3, LR1/r;->i:LI1/i;

    invoke-virtual {v0, v3}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, LI1/j;

    invoke-direct {v0}, LI1/j;-><init>()V

    iget-object v4, p0, LK1/k;->D:LI1/j;

    iget-object v4, v4, LI1/j;->b:Ld2/c;

    iget-object v5, v0, LI1/j;->b:Ld2/c;

    invoke-virtual {v5, v4}, Ld2/c;->i(Ln/e;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Ld2/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_3
    iget-object v0, p0, LK1/k;->w:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/i;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    move-result-object v7

    :try_start_0
    iget v3, p0, LK1/k;->A:I

    iget v4, p0, LK1/k;->B:I

    new-instance v5, LE1/t;

    const/4 p2, 0x7

    invoke-direct {v5, p1, p2, p0}, LE1/t;-><init>(IILjava/lang/Object;)V

    invoke-virtual/range {v2 .. v7}, LK1/B;->a(IILE1/t;LI1/j;Lcom/bumptech/glide/load/data/g;)LK1/D;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Lcom/bumptech/glide/load/data/g;->b()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {v7}, Lcom/bumptech/glide/load/data/g;->b()V

    throw p1
.end method

.method public final f()V
    .locals 13

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v1, p0, LK1/k;->G:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LK1/k;->L:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LK1/k;->J:LI1/f;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LK1/k;->M:Lcom/bumptech/glide/load/data/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, LK1/k;->i(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, LK1/k;->M:Lcom/bumptech/glide/load/data/e;

    iget-object v2, p0, LK1/k;->L:Ljava/lang/Object;

    iget v3, p0, LK1/k;->T:I

    invoke-virtual {p0, v0, v2, v3}, LK1/k;->a(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;I)LK1/D;

    move-result-object v0
    :try_end_0
    .catch LK1/y; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, LK1/k;->K:LI1/f;

    iget v3, p0, LK1/k;->T:I

    iput-object v2, v0, LK1/y;->q:LI1/f;

    iput v3, v0, LK1/y;->r:I

    iput-object v1, v0, LK1/y;->s:Ljava/lang/Class;

    iget-object v2, p0, LK1/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_b

    iget v2, p0, LK1/k;->T:I

    iget-boolean v3, p0, LK1/k;->Q:Z

    instance-of v4, v0, LK1/z;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, LK1/z;

    invoke-interface {v4}, LK1/z;->initialize()V

    :cond_1
    iget-object v4, p0, LK1/k;->u:LJ/l;

    iget-object v4, v4, LJ/l;->q:Ljava/lang/Object;

    check-cast v4, LK1/C;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    sget-object v1, LK1/C;->t:LJ/l;

    invoke-virtual {v1}, LJ/l;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK1/C;

    iput-boolean v5, v1, LK1/C;->s:Z

    iput-boolean v6, v1, LK1/C;->r:Z

    iput-object v0, v1, LK1/C;->q:LK1/D;

    move-object v0, v1

    :cond_2
    invoke-virtual {p0}, LK1/k;->o()V

    iget-object v4, p0, LK1/k;->E:LK1/s;

    monitor-enter v4

    :try_start_1
    iput-object v0, v4, LK1/s;->C:LK1/D;

    iput v2, v4, LK1/s;->D:I

    iput-boolean v3, v4, LK1/s;->K:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-enter v4

    :try_start_2
    iget-object v0, v4, LK1/s;->q:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    iget-boolean v0, v4, LK1/s;->J:Z

    if-eqz v0, :cond_3

    iget-object v0, v4, LK1/s;->C:LK1/D;

    invoke-interface {v0}, LK1/D;->a()V

    invoke-virtual {v4}, LK1/s;->g()V

    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-object v0, v4, LK1/s;->b:LK1/r;

    iget-object v0, v0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, v4, LK1/s;->E:Z

    if-nez v0, :cond_9

    iget-object v0, v4, LK1/s;->t:LW3/e;

    iget-object v8, v4, LK1/s;->C:LK1/D;

    iget-boolean v9, v4, LK1/s;->A:Z

    iget-object v11, v4, LK1/s;->z:LK1/u;

    iget-object v12, v4, LK1/s;->r:LK1/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, LK1/w;

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, LK1/w;-><init>(LK1/D;ZZLI1/f;LK1/v;)V

    iput-object v7, v4, LK1/s;->H:LK1/w;

    iput-boolean v6, v4, LK1/s;->E:Z

    iget-object v0, v4, LK1/s;->b:LK1/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v4, v0}, LK1/s;->e(I)V

    iget-object v0, v4, LK1/s;->z:LK1/u;

    iget-object v3, v4, LK1/s;->H:LK1/w;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v7, v4, LK1/s;->u:LK1/t;

    check-cast v7, LK1/o;

    invoke-virtual {v7, v4, v0, v3}, LK1/o;->d(LK1/s;LI1/f;LK1/w;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v5

    :goto_1
    if-ge v3, v0, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, LK1/q;

    iget-object v8, v7, LK1/q;->b:Ljava/util/concurrent/Executor;

    new-instance v9, LK1/p;

    iget-object v7, v7, LK1/q;->a:LZ1/f;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v7, v10}, LK1/p;-><init>(LK1/s;LZ1/f;I)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, LK1/s;->c()V

    :goto_2
    const/4 v0, 0x5

    iput v0, p0, LK1/k;->R:I

    :try_start_3
    iget-object v2, p0, LK1/k;->u:LJ/l;

    iget-object v0, v2, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, LK1/C;

    if-eqz v0, :cond_5

    move v5, v6

    :cond_5
    if-eqz v5, :cond_6

    iget-object v0, p0, LK1/k;->s:LK1/n;

    iget-object v3, p0, LK1/k;->D:LI1/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, LK1/n;->a()LM1/a;

    move-result-object v0

    iget-object v4, v2, LJ/l;->r:Ljava/lang/Object;

    check-cast v4, LI1/f;

    new-instance v5, LJ/l;

    iget-object v7, v2, LJ/l;->s:Ljava/lang/Object;

    check-cast v7, LI1/m;

    iget-object v8, v2, LJ/l;->q:Ljava/lang/Object;

    check-cast v8, LK1/C;

    const/4 v9, 0x2

    invoke-direct {v5, v7, v8, v3, v9}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v4, v5}, LM1/a;->j(LI1/f;LJ/l;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v2, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, LK1/C;

    invoke-virtual {v0}, LK1/C;->e()V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v2, v2, LJ/l;->q:Ljava/lang/Object;

    check-cast v2, LK1/C;

    invoke-virtual {v2}, LK1/C;->e()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, LK1/C;->e()V

    :cond_7
    iget-object v2, p0, LK1/k;->v:LK1/j;

    monitor-enter v2

    :try_start_6
    iput-boolean v6, v2, LK1/j;->b:Z

    invoke-virtual {v2}, LK1/j;->b()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v2

    if-eqz v0, :cond_c

    invoke-virtual {p0}, LK1/k;->k()V

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, LK1/C;->e()V

    :cond_8
    throw v0

    :cond_9
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_b
    invoke-virtual {p0}, LK1/k;->m()V

    :cond_c
    :goto_6
    return-void
.end method

.method public final g()LK1/h;
    .locals 3

    iget v0, p0, LK1/k;->R:I

    invoke-static {v0}, Lp/e;->c(I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, LK1/k;->b:LK1/i;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, LK1/k;->R:I

    invoke-static {v1}, LB/f;->y(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, LK1/H;

    invoke-direct {v0, v2, p0}, LK1/H;-><init>(LK1/i;LK1/k;)V

    return-object v0

    :cond_2
    new-instance v0, LK1/e;

    invoke-virtual {v2}, LK1/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, LK1/e;-><init>(Ljava/util/List;LK1/i;LK1/g;)V

    return-object v0

    :cond_3
    new-instance v0, LK1/E;

    invoke-direct {v0, v2, p0}, LK1/E;-><init>(LK1/i;LK1/k;)V

    return-object v0
.end method

.method public final h(I)I
    .locals 4

    invoke-static {p1}, Lp/e;->c(I)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, LB/f;->y(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    iget-object p1, p0, LK1/k;->C:LK1/m;

    iget p1, p1, LK1/m;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0, v3}, LK1/k;->h(I)I

    move-result p1

    return p1

    :cond_5
    iget-object p1, p0, LK1/k;->C:LK1/m;

    iget p1, p1, LK1/m;->a:I

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x1

    goto :goto_2

    :pswitch_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, v1}, LK1/k;->h(I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final i(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ld2/h;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LK1/k;->z:LK1/u;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p1, ", "

    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j()V
    .locals 9

    invoke-virtual {p0}, LK1/k;->o()V

    new-instance v0, LK1/y;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LK1/k;->q:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, LK1/y;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, LK1/k;->E:LK1/s;

    monitor-enter v1

    :try_start_0
    iput-object v0, v1, LK1/s;->F:LK1/y;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, LK1/s;->q:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    iget-boolean v0, v1, LK1/s;->J:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, LK1/s;->g()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, v1, LK1/s;->b:LK1/r;

    iget-object v0, v0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, LK1/s;->G:Z

    if-nez v0, :cond_3

    iput-boolean v2, v1, LK1/s;->G:Z

    iget-object v0, v1, LK1/s;->z:LK1/u;

    iget-object v3, v1, LK1/s;->b:LK1/r;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, LK1/r;->q:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, LK1/s;->e(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, v1, LK1/s;->u:LK1/t;

    const/4 v5, 0x0

    check-cast v3, LK1/o;

    invoke-virtual {v3, v1, v0, v5}, LK1/o;->d(LK1/s;LI1/f;LK1/w;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, LK1/q;

    iget-object v6, v5, LK1/q;->b:Ljava/util/concurrent/Executor;

    new-instance v7, LK1/p;

    iget-object v5, v5, LK1/q;->a:LZ1/f;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v5, v8}, LK1/p;-><init>(LK1/s;LZ1/f;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LK1/s;->c()V

    :goto_1
    iget-object v0, p0, LK1/k;->v:LK1/j;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, LK1/j;->c:Z

    invoke-virtual {v0}, LK1/j;->b()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LK1/k;->k()V

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, LK1/k;->v:LK1/j;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, LK1/j;->b:Z

    iput-boolean v1, v0, LK1/j;->a:Z

    iput-boolean v1, v0, LK1/j;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, LK1/k;->u:LJ/l;

    const/4 v2, 0x0

    iput-object v2, v0, LJ/l;->r:Ljava/lang/Object;

    iput-object v2, v0, LJ/l;->s:Ljava/lang/Object;

    iput-object v2, v0, LJ/l;->q:Ljava/lang/Object;

    iget-object v0, p0, LK1/k;->b:LK1/i;

    iput-object v2, v0, LK1/i;->c:Lcom/bumptech/glide/e;

    iput-object v2, v0, LK1/i;->d:Ljava/lang/Object;

    iput-object v2, v0, LK1/i;->n:LI1/f;

    iput-object v2, v0, LK1/i;->g:Ljava/lang/Class;

    iput-object v2, v0, LK1/i;->k:Ljava/lang/Class;

    iput-object v2, v0, LK1/i;->i:LI1/j;

    iput-object v2, v0, LK1/i;->o:Lcom/bumptech/glide/g;

    iput-object v2, v0, LK1/i;->j:Ljava/util/Map;

    iput-object v2, v0, LK1/i;->p:LK1/m;

    iget-object v3, v0, LK1/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, LK1/i;->l:Z

    iget-object v3, v0, LK1/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, LK1/i;->m:Z

    iput-boolean v1, p0, LK1/k;->O:Z

    iput-object v2, p0, LK1/k;->w:Lcom/bumptech/glide/e;

    iput-object v2, p0, LK1/k;->x:LI1/f;

    iput-object v2, p0, LK1/k;->D:LI1/j;

    iput-object v2, p0, LK1/k;->y:Lcom/bumptech/glide/g;

    iput-object v2, p0, LK1/k;->z:LK1/u;

    iput-object v2, p0, LK1/k;->E:LK1/s;

    iput v1, p0, LK1/k;->R:I

    iput-object v2, p0, LK1/k;->N:LK1/h;

    iput-object v2, p0, LK1/k;->I:Ljava/lang/Thread;

    iput-object v2, p0, LK1/k;->J:LI1/f;

    iput-object v2, p0, LK1/k;->L:Ljava/lang/Object;

    iput v1, p0, LK1/k;->T:I

    iput-object v2, p0, LK1/k;->M:Lcom/bumptech/glide/load/data/e;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, LK1/k;->G:J

    iput-boolean v1, p0, LK1/k;->P:Z

    iput-object v2, p0, LK1/k;->H:Ljava/lang/Object;

    iget-object v0, p0, LK1/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LK1/k;->t:LI/b;

    invoke-interface {v0, p0}, LI/b;->f(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final l(I)V
    .locals 1

    iput p1, p0, LK1/k;->S:I

    iget-object p1, p0, LK1/k;->E:LK1/s;

    iget-boolean v0, p1, LK1/s;->B:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, LK1/s;->x:LN1/d;

    goto :goto_0

    :cond_0
    iget-object p1, p1, LK1/s;->w:LN1/d;

    :goto_0
    invoke-virtual {p1, p0}, LN1/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LK1/k;->I:Ljava/lang/Thread;

    sget v0, Ld2/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, LK1/k;->G:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, LK1/k;->P:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LK1/k;->N:LK1/h;

    if-eqz v1, :cond_1

    iget-object v0, p0, LK1/k;->N:LK1/h;

    invoke-interface {v0}, LK1/h;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v1, p0, LK1/k;->R:I

    invoke-virtual {p0, v1}, LK1/k;->h(I)I

    move-result v1

    iput v1, p0, LK1/k;->R:I

    invoke-virtual {p0}, LK1/k;->g()LK1/h;

    move-result-object v1

    iput-object v1, p0, LK1/k;->N:LK1/h;

    iget v1, p0, LK1/k;->R:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LK1/k;->l(I)V

    return-void

    :cond_1
    iget v1, p0, LK1/k;->R:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, LK1/k;->P:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, LK1/k;->j()V

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    iget v0, p0, LK1/k;->S:I

    invoke-static {v0}, Lp/e;->c(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LK1/k;->f()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, LK1/k;->S:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "null"

    goto :goto_0

    :cond_1
    const-string v1, "DECODE_DATA"

    goto :goto_0

    :cond_2
    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    goto :goto_0

    :cond_3
    const-string v1, "INITIALIZE"

    :goto_0
    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, LK1/k;->m()V

    return-void

    :cond_5
    invoke-virtual {p0, v1}, LK1/k;->h(I)I

    move-result v0

    iput v0, p0, LK1/k;->R:I

    invoke-virtual {p0}, LK1/k;->g()LK1/h;

    move-result-object v0

    iput-object v0, p0, LK1/k;->N:LK1/h;

    invoke-virtual {p0}, LK1/k;->m()V

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, LK1/k;->r:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    iget-boolean v0, p0, LK1/k;->O:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, LK1/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LK1/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iput-boolean v1, p0, LK1/k;->O:Z

    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "DecodeJob"

    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    iget-object v2, p0, LK1/k;->M:Lcom/bumptech/glide/load/data/e;

    :try_start_0
    iget-boolean v3, p0, LK1/k;->P:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, LK1/k;->j()V
    :try_end_0
    .catch LK1/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, LK1/k;->n()V
    :try_end_1
    .catch LK1/d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_1
    return-void

    :goto_0
    const/4 v4, 0x3

    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, LK1/k;->P:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stage: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LK1/k;->R:I

    invoke-static {v1}, LB/f;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    iget v0, p0, LK1/k;->R:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, LK1/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LK1/k;->j()V

    :cond_3
    iget-boolean v0, p0, LK1/k;->P:Z

    if-nez v0, :cond_4

    throw v3

    :cond_4
    throw v3

    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_5
    throw v0
.end method
