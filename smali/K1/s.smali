.class public final LK1/s;
.super Ljava/lang/Object;

# interfaces
.implements Le2/b;


# static fields
.field public static final L:LW3/e;


# instance fields
.field public A:Z

.field public B:Z

.field public C:LK1/D;

.field public D:I

.field public E:Z

.field public F:LK1/y;

.field public G:Z

.field public H:LK1/w;

.field public I:LK1/k;

.field public volatile J:Z

.field public K:Z

.field public final b:LK1/r;

.field public final q:Le2/e;

.field public final r:LK1/v;

.field public final s:LI/b;

.field public final t:LW3/e;

.field public final u:LK1/t;

.field public final v:LN1/d;

.field public final w:LN1/d;

.field public final x:LN1/d;

.field public final y:Ljava/util/concurrent/atomic/AtomicInteger;

.field public z:LK1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW3/e;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LW3/e;-><init>(I)V

    sput-object v0, LK1/s;->L:LW3/e;

    return-void
.end method

.method public constructor <init>(LN1/d;LN1/d;LN1/d;LN1/d;LK1/o;LK1/o;LJ/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, LK1/r;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0}, LK1/r;-><init>(ILjava/lang/Object;)V

    iput-object p3, p0, LK1/s;->b:LK1/r;

    new-instance p3, Le2/e;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LK1/s;->q:Le2/e;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, LK1/s;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, LK1/s;->v:LN1/d;

    iput-object p2, p0, LK1/s;->w:LN1/d;

    iput-object p4, p0, LK1/s;->x:LN1/d;

    iput-object p5, p0, LK1/s;->u:LK1/t;

    iput-object p6, p0, LK1/s;->r:LK1/v;

    iput-object p7, p0, LK1/s;->s:LI/b;

    sget-object p1, LK1/s;->L:LW3/e;

    iput-object p1, p0, LK1/s;->t:LW3/e;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(LZ1/f;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/s;->q:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    iget-object v0, p0, LK1/s;->b:LK1/r;

    iget-object v0, v0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, LK1/q;

    invoke-direct {v1, p1, p2}, LK1/q;-><init>(LZ1/f;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, LK1/s;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, LK1/s;->e(I)V

    new-instance v0, LK1/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LK1/p;-><init>(LK1/s;LZ1/f;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, LK1/s;->G:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, LK1/s;->e(I)V

    new-instance v0, LK1/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LK1/p;-><init>(LK1/s;LZ1/f;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, LK1/s;->J:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p2, p1}, Ld2/f;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final b()V
    .locals 4

    invoke-virtual {p0}, LK1/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LK1/s;->J:Z

    iget-object v1, p0, LK1/s;->I:LK1/k;

    iput-boolean v0, v1, LK1/k;->P:Z

    iget-object v0, v1, LK1/k;->N:LK1/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LK1/h;->cancel()V

    :cond_1
    iget-object v0, p0, LK1/s;->u:LK1/t;

    iget-object v1, p0, LK1/s;->z:LK1/u;

    check-cast v0, LK1/o;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, LK1/o;->a:LK1/A;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LK1/A;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/s;->q:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    invoke-virtual {p0}, LK1/s;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Ld2/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, LK1/s;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v2, v1}, Ld2/f;->a(Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, LK1/s;->H:LK1/w;

    invoke-virtual {p0}, LK1/s;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LK1/w;->e()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Le2/e;
    .locals 1

    iget-object v0, p0, LK1/s;->q:Le2/e;

    return-object v0
.end method

.method public final declared-synchronized e(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LK1/s;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Ld2/f;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, LK1/s;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LK1/s;->H:LK1/w;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LK1/w;->d()V
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

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, LK1/s;->G:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LK1/s;->E:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LK1/s;->J:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized g()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/s;->z:LK1/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, LK1/s;->b:LK1/r;

    iget-object v0, v0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, LK1/s;->z:LK1/u;

    iput-object v0, p0, LK1/s;->H:LK1/w;

    iput-object v0, p0, LK1/s;->C:LK1/D;

    const/4 v1, 0x0

    iput-boolean v1, p0, LK1/s;->G:Z

    iput-boolean v1, p0, LK1/s;->J:Z

    iput-boolean v1, p0, LK1/s;->E:Z

    iput-boolean v1, p0, LK1/s;->K:Z

    iget-object v2, p0, LK1/s;->I:LK1/k;

    iget-object v3, v2, LK1/k;->v:LK1/j;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, v3, LK1/j;->a:Z

    invoke-virtual {v3}, LK1/j;->b()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3

    if-eqz v4, :cond_0

    invoke-virtual {v2}, LK1/k;->k()V

    :cond_0
    iput-object v0, p0, LK1/s;->I:LK1/k;

    iput-object v0, p0, LK1/s;->F:LK1/y;

    iput v1, p0, LK1/s;->D:I

    iget-object v0, p0, LK1/s;->s:LI/b;

    invoke-interface {v0, p0}, LI/b;->f(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized h(LZ1/f;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/s;->q:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()V

    iget-object v0, p0, LK1/s;->b:LK1/r;

    iget-object v0, v0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, LK1/q;

    sget-object v2, Ld2/f;->b:LL2/p;

    invoke-direct {v1, p1, v2}, LK1/q;-><init>(LZ1/f;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LK1/s;->b:LK1/r;

    iget-object p1, p1, LK1/r;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LK1/s;->b()V

    iget-boolean p1, p0, LK1/s;->E:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, LK1/s;->G:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, LK1/s;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LK1/s;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
