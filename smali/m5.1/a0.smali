.class public Lm5/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lm5/Q;
.implements Lm5/e0;


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state"

    const-class v1, Lm5/a0;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/a0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lm5/w;->i:Lm5/F;

    goto :goto_0

    :cond_0
    sget-object p1, Lm5/w;->h:Lm5/F;

    :goto_0
    iput-object p1, p0, Lm5/a0;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static I(Lr5/k;)Lm5/j;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lr5/k;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lr5/k;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0}, Lr5/k;->h()Lr5/k;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr5/k;

    :goto_1
    invoke-virtual {p0}, Lr5/k;->l()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr5/k;

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lr5/k;->k()Lr5/k;

    move-result-object p0

    invoke-virtual {p0}, Lr5/k;->l()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lm5/j;

    if-eqz v0, :cond_3

    check-cast p0, Lm5/j;

    return-object p0

    :cond_3
    instance-of v0, p0, Lm5/b0;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static O(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lm5/Y;

    if-eqz v0, :cond_1

    check-cast p0, Lm5/Y;

    invoke-virtual {p0}, Lm5/Y;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm5/Y;->f()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Completing"

    return-object p0

    :cond_1
    instance-of v0, p0, Lm5/M;

    if-eqz v0, :cond_4

    check-cast p0, Lm5/M;

    invoke-interface {p0}, Lm5/M;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "Active"

    return-object p0

    :cond_3
    const-string p0, "New"

    return-object p0

    :cond_4
    instance-of p0, p0, Lm5/n;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    return-object p0

    :cond_5
    const-string p0, "Completed"

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 2

    :goto_0
    sget-object v0, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lr5/p;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lr5/p;

    invoke-virtual {v0, p0}, Lr5/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public B(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public C(LR1/G;)V
    .locals 0

    throw p1
.end method

.method public final D(Lm5/Q;)V
    .locals 4

    sget-object v0, Lm5/a0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lm5/c0;->b:Lm5/c0;

    if-nez p1, :cond_0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p1, Lm5/a0;

    :goto_0
    invoke-virtual {p1}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lm5/a0;->N(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lm5/j;

    invoke-direct {v2, p0}, Lm5/j;-><init>(Lm5/a0;)V

    const/4 v3, 0x2

    invoke-static {p1, v2, v3}, Lm5/w;->f(Lm5/Q;Lm5/V;I)Lm5/D;

    move-result-object p1

    check-cast p1, Lm5/i;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lm5/M;

    if-nez v2, :cond_2

    invoke-interface {p1}, Lm5/D;->f()V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final E(ZZLd5/l;)Lm5/D;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p3, Lm5/T;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lm5/T;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, Lm5/O;

    invoke-direct {v1, p3}, Lm5/O;-><init>(Ld5/l;)V

    goto :goto_2

    :cond_1
    instance-of v1, p3, Lm5/V;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Lm5/V;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lm5/P;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p3}, Lm5/P;-><init>(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    iput-object p0, v1, Lm5/V;->s:Lm5/a0;

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lm5/F;

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, Lm5/F;

    iget-boolean v4, v3, Lm5/F;->b:Z

    if-eqz v4, :cond_8

    sget-object v4, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_6

    goto :goto_3

    :cond_8
    new-instance v2, Lm5/b0;

    invoke-direct {v2}, Lr5/k;-><init>()V

    iget-boolean v4, v3, Lm5/F;->b:Z

    if-eqz v4, :cond_9

    move-object v4, v2

    goto :goto_4

    :cond_9
    new-instance v4, Lm5/L;

    invoke-direct {v4, v2}, Lm5/L;-><init>(Lm5/b0;)V

    :goto_4
    sget-object v5, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v5, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_a

    goto :goto_3

    :cond_c
    instance-of v3, v2, Lm5/M;

    if-eqz v3, :cond_15

    move-object v3, v2

    check-cast v3, Lm5/M;

    invoke-interface {v3}, Lm5/M;->e()Lm5/b0;

    move-result-object v4

    if-nez v4, :cond_d

    check-cast v2, Lm5/V;

    invoke-virtual {p0, v2}, Lm5/a0;->M(Lm5/V;)V

    goto :goto_3

    :cond_d
    sget-object v5, Lm5/c0;->b:Lm5/c0;

    if-eqz p1, :cond_12

    instance-of v6, v2, Lm5/Y;

    if-eqz v6, :cond_12

    monitor-enter v2

    :try_start_0
    move-object v6, v2

    check-cast v6, Lm5/Y;

    invoke-virtual {v6}, Lm5/Y;->c()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_e

    instance-of v7, p3, Lm5/j;

    if-eqz v7, :cond_11

    move-object v7, v2

    check-cast v7, Lm5/Y;

    invoke-virtual {v7}, Lm5/Y;->f()Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_e
    :goto_5
    move-object v5, v2

    check-cast v5, Lm5/M;

    invoke-virtual {p0, v5, v4, v1}, Lm5/a0;->g(Lm5/M;Lm5/b0;Lm5/V;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_f

    monitor-exit v2

    goto :goto_3

    :cond_f
    if-nez v6, :cond_10

    monitor-exit v2

    return-object v1

    :cond_10
    move-object v5, v1

    :cond_11
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2

    throw p1

    :cond_12
    move-object v6, v0

    :goto_7
    if-eqz v6, :cond_14

    if-eqz p2, :cond_13

    invoke-interface {p3, v6}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v5

    :cond_14
    invoke-virtual {p0, v3, v4, v1}, Lm5/a0;->g(Lm5/M;Lm5/b0;Lm5/V;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_8
    return-object v1

    :cond_15
    if-eqz p2, :cond_18

    instance-of p1, v2, Lm5/n;

    if-eqz p1, :cond_16

    check-cast v2, Lm5/n;

    goto :goto_9

    :cond_16
    move-object v2, v0

    :goto_9
    if-eqz v2, :cond_17

    iget-object v0, v2, Lm5/n;->a:Ljava/lang/Throwable;

    :cond_17
    invoke-interface {p3, v0}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object p1, Lm5/c0;->b:Lm5/c0;

    return-object p1
.end method

.method public F()Z
    .locals 1

    instance-of v0, p0, Lm5/c;

    return v0
.end method

.method public final G(Ljava/lang/Object;)Z
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lm5/a0;->P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm5/w;->c:LE1/a;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-object v1, Lm5/w;->d:LE1/a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Lm5/w;->e:LE1/a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lm5/a0;->k(Ljava/lang/Object;)V

    return v2
.end method

.method public final H(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lm5/a0;->P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm5/w;->c:LE1/a;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lm5/n;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast p1, Lm5/n;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lm5/n;->a:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lm5/w;->e:LE1/a;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public final J(Lm5/b0;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lr5/k;->j()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lr5/k;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lm5/T;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lm5/V;

    :try_start_0
    invoke-virtual {v2, p2}, Lm5/V;->n(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, LR1/G;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lr5/k;->k()Lr5/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lm5/a0;->C(LR1/G;)V

    :cond_3
    invoke-virtual {p0, p2}, Lm5/a0;->o(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public L()V
    .locals 0

    return-void
.end method

.method public final M(Lm5/V;)V
    .locals 3

    new-instance v0, Lm5/b0;

    invoke-direct {v0}, Lr5/k;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lr5/k;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lr5/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lr5/k;->j()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lr5/k;->i(Lr5/k;)V

    :goto_1
    invoke-virtual {p1}, Lr5/k;->k()Lr5/k;

    move-result-object v2

    :cond_1
    sget-object v0, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return-void

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0
.end method

.method public final N(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Lm5/F;

    const/4 v1, 0x1

    sget-object v2, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lm5/F;

    iget-boolean v0, v0, Lm5/F;->b:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lm5/w;->i:Lm5/F;

    :cond_1
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lm5/L;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lm5/L;

    iget-object v0, v0, Lm5/L;->b:Lm5/b0;

    :cond_4
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_4

    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lm5/M;

    if-nez v0, :cond_0

    sget-object p1, Lm5/w;->c:LE1/a;

    return-object p1

    :cond_0
    instance-of v0, p1, Lm5/F;

    if-nez v0, :cond_1

    instance-of v0, p1, Lm5/V;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lm5/j;

    if-nez v0, :cond_5

    instance-of v0, p2, Lm5/n;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lm5/M;

    sget-object v1, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of p1, p2, Lm5/M;

    if-eqz p1, :cond_2

    new-instance p1, Lm5/N;

    move-object v2, p2

    check-cast v2, Lm5/M;

    invoke-direct {p1, v2}, Lm5/N;-><init>(Lm5/M;)V

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :cond_3
    :goto_0
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lm5/a0;->K(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lm5/a0;->t(Lm5/M;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_3

    sget-object p1, Lm5/w;->e:LE1/a;

    return-object p1

    :cond_5
    check-cast p1, Lm5/M;

    invoke-virtual {p0, p1}, Lm5/a0;->z(Lm5/M;)Lm5/b0;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p1, Lm5/w;->e:LE1/a;

    return-object p1

    :cond_6
    instance-of v1, p1, Lm5/Y;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lm5/Y;

    goto :goto_1

    :cond_7
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_8

    new-instance v1, Lm5/Y;

    invoke-direct {v1, v0, v2}, Lm5/Y;-><init>(Lm5/b0;Ljava/lang/Throwable;)V

    :cond_8
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lm5/Y;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object p1, Lm5/w;->c:LE1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_9
    :try_start_1
    sget-object v3, Lm5/Y;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eq v1, p1, :cond_c

    sget-object v3, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_a

    sget-object p1, Lm5/w;->e:LE1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_c
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lm5/Y;->d()Z

    move-result v3

    instance-of v5, p2, Lm5/n;

    if-eqz v5, :cond_d

    move-object v5, p2

    check-cast v5, Lm5/n;

    goto :goto_3

    :cond_d
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_e

    iget-object v5, v5, Lm5/n;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lm5/Y;->b(Ljava/lang/Throwable;)V

    :cond_e
    invoke-virtual {v1}, Lm5/Y;->c()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    move-object v5, v2

    :goto_4
    monitor-exit v1

    if-eqz v5, :cond_10

    invoke-virtual {p0, v0, v5}, Lm5/a0;->J(Lm5/b0;Ljava/lang/Throwable;)V

    :cond_10
    instance-of v0, p1, Lm5/j;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lm5/j;

    goto :goto_5

    :cond_11
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_12

    invoke-interface {p1}, Lm5/M;->e()Lm5/b0;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, Lm5/a0;->I(Lr5/k;)Lm5/j;

    move-result-object v2

    goto :goto_6

    :cond_12
    move-object v2, v0

    :cond_13
    :goto_6
    if-eqz v2, :cond_16

    :cond_14
    iget-object p1, v2, Lm5/j;->t:Lm5/a0;

    new-instance v0, Lm5/X;

    invoke-direct {v0, p0, v1, v2, p2}, Lm5/X;-><init>(Lm5/a0;Lm5/Y;Lm5/j;Ljava/lang/Object;)V

    invoke-static {p1, v0, v4}, Lm5/w;->f(Lm5/Q;Lm5/V;I)Lm5/D;

    move-result-object p1

    sget-object v0, Lm5/c0;->b:Lm5/c0;

    if-eq p1, v0, :cond_15

    sget-object p1, Lm5/w;->d:LE1/a;

    return-object p1

    :cond_15
    invoke-static {v2}, Lm5/a0;->I(Lr5/k;)Lm5/j;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_16
    invoke-virtual {p0, v1, p2}, Lm5/a0;->v(Lm5/Y;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_7
    monitor-exit v1

    throw p1
.end method

.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/M;

    if-eqz v1, :cond_0

    check-cast v0, Lm5/M;

    invoke-interface {v0}, Lm5/M;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lm5/S;

    invoke-virtual {p0}, Lm5/a0;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lm5/S;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm5/a0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lm5/a0;->n(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lm5/M;Lm5/b0;Lm5/V;)Z
    .locals 3

    new-instance v0, Lm5/Z;

    invoke-direct {v0, p3, p0, p1}, Lm5/Z;-><init>(Lm5/V;Lm5/a0;Lm5/M;)V

    :goto_0
    sget-object p1, Lr5/k;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2}, Lr5/k;->h()Lr5/k;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr5/k;

    :goto_1
    invoke-virtual {v1}, Lr5/k;->l()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr5/k;

    goto :goto_1

    :cond_1
    :goto_2
    sget-object p1, Lr5/k;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lr5/k;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, Lm5/Z;->c:Lm5/b0;

    :cond_2
    invoke-virtual {p1, v1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lr5/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_2

    goto :goto_0
.end method

.method public final getKey()LV4/h;
    .locals 1

    sget-object v0, Lm5/t;->q:Lm5/t;

    return-object v0
.end method

.method public final h(LV4/h;)LV4/g;
    .locals 0

    invoke-static {p0, p1}, LC2/b;->u(LV4/g;LV4/h;)LV4/g;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lm5/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 9

    sget-object v0, Lm5/w;->c:LE1/a;

    invoke-virtual {p0}, Lm5/a0;->y()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/M;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lm5/Y;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lm5/Y;

    invoke-virtual {v1}, Lm5/Y;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lm5/n;

    invoke-virtual {p0, p1}, Lm5/a0;->u(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, Lm5/a0;->P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm5/w;->e:LE1/a;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lm5/w;->c:LE1/a;

    :goto_1
    sget-object v1, Lm5/w;->d:LE1/a;

    if-ne v0, v1, :cond_3

    goto/16 :goto_7

    :cond_3
    sget-object v1, Lm5/w;->c:LE1/a;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lm5/Y;

    if-eqz v5, :cond_a

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Lm5/Y;

    sget-object v6, Lm5/Y;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lm5/w;->g:LE1/a;

    if-ne v5, v6, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    if-eqz v5, :cond_6

    sget-object p1, Lm5/w;->f:LE1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :goto_4
    move-object v0, p1

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_6
    :try_start_1
    move-object v5, v4

    check-cast v5, Lm5/Y;

    invoke-virtual {v5}, Lm5/Y;->d()Z

    move-result v5

    if-nez v1, :cond_7

    invoke-virtual {p0, p1}, Lm5/a0;->u(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_7
    move-object p1, v4

    check-cast p1, Lm5/Y;

    invoke-virtual {p1, v1}, Lm5/Y;->b(Ljava/lang/Throwable;)V

    move-object p1, v4

    check-cast p1, Lm5/Y;

    invoke-virtual {p1}, Lm5/Y;->c()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_8

    move-object v0, p1

    :cond_8
    monitor-exit v4

    if-eqz v0, :cond_9

    check-cast v4, Lm5/Y;

    iget-object p1, v4, Lm5/Y;->b:Lm5/b0;

    invoke-virtual {p0, p1, v0}, Lm5/a0;->J(Lm5/b0;Ljava/lang/Throwable;)V

    :cond_9
    sget-object p1, Lm5/w;->c:LE1/a;

    goto :goto_4

    :goto_5
    monitor-exit v4

    throw p1

    :cond_a
    instance-of v5, v4, Lm5/M;

    if-eqz v5, :cond_11

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, Lm5/a0;->u(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_b
    move-object v5, v4

    check-cast v5, Lm5/M;

    invoke-interface {v5}, Lm5/M;->a()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, v5}, Lm5/a0;->z(Lm5/M;)Lm5/b0;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    new-instance v7, Lm5/Y;

    invoke-direct {v7, v6, v1}, Lm5/Y;-><init>(Lm5/b0;Ljava/lang/Throwable;)V

    sget-object v8, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_d
    invoke-virtual {v8, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, v6, v1}, Lm5/a0;->J(Lm5/b0;Ljava/lang/Throwable;)V

    sget-object p1, Lm5/w;->c:LE1/a;

    goto :goto_4

    :cond_e
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v5, :cond_d

    goto/16 :goto_2

    :cond_f
    new-instance v5, Lm5/n;

    invoke-direct {v5, v1, v2}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v4, v5}, Lm5/a0;->P(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lm5/w;->c:LE1/a;

    if-eq v5, v6, :cond_10

    sget-object v4, Lm5/w;->e:LE1/a;

    if-eq v5, v4, :cond_4

    move-object v0, v5

    goto :goto_6

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot happen in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    sget-object p1, Lm5/w;->f:LE1/a;

    goto/16 :goto_4

    :cond_12
    :goto_6
    sget-object p1, Lm5/w;->c:LE1/a;

    if-ne v0, p1, :cond_13

    goto :goto_7

    :cond_13
    sget-object p1, Lm5/w;->d:LE1/a;

    if-ne v0, p1, :cond_14

    :goto_7
    return v3

    :cond_14
    sget-object p1, Lm5/w;->f:LE1/a;

    if-ne v0, p1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0, v0}, Lm5/a0;->k(Ljava/lang/Object;)V

    return v3
.end method

.method public n(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lm5/a0;->m(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Lm5/a0;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    sget-object v1, Lm5/a0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/i;

    if-eqz v1, :cond_4

    sget-object v2, Lm5/c0;->b:Lm5/c0;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1}, Lm5/i;->d(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public q(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lm5/a0;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lm5/a0;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final r(LV4/h;)LV4/i;
    .locals 0

    invoke-static {p0, p1}, LC2/b;->C(LV4/g;LV4/h;)LV4/i;

    move-result-object p1

    return-object p1
.end method

.method public final s(LV4/i;)LV4/i;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LV4/j;->b:LV4/j;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LV4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LV4/b;-><init>(I)V

    invoke-interface {p1, p0, v0}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV4/i;

    return-object p1
.end method

.method public final t(Lm5/M;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Lm5/a0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/i;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lm5/D;->f()V

    sget-object v1, Lm5/c0;->b:Lm5/c0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p2, Lm5/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lm5/n;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lm5/n;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lm5/V;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lm5/V;

    invoke-virtual {v0, p2}, Lm5/V;->n(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lm5/a0;->C(LR1/G;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lm5/M;->e()Lm5/b0;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lr5/k;->j()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v4}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lr5/k;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lm5/V;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lm5/V;

    :try_start_1
    invoke-virtual {v4, p2}, Lm5/V;->n(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, LR1/G;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lr5/k;->k()Lr5/k;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lm5/a0;->C(LR1/G;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lm5/a0;->O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm5/w;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 4

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_0
    check-cast p1, Lm5/e0;

    check-cast p1, Lm5/a0;

    invoke-virtual {p1}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/Y;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lm5/Y;

    invoke-virtual {v1}, Lm5/Y;->c()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lm5/n;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lm5/n;

    iget-object v1, v1, Lm5/n;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lm5/M;

    if-nez v1, :cond_5

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Lm5/S;

    invoke-static {v0}, Lm5/a0;->O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1}, Lm5/S;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm5/a0;)V

    :cond_4
    return-object v2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final v(Lm5/Y;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lm5/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lm5/n;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lm5/n;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lm5/Y;->d()Z

    invoke-virtual {p1, v0}, Lm5/Y;->g(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lm5/Y;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lm5/S;

    invoke-virtual {p0}, Lm5/a0;->p()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v1, p0}, Lm5/S;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm5/a0;)V

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :cond_3
    if-ge v5, v3, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_3

    move-object v1, v6

    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :cond_8
    :goto_3
    if-ge v7, v6, :cond_9

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/Throwable;

    if-eq v8, v1, :cond_8

    if-eq v8, v1, :cond_8

    instance-of v9, v8, Ljava/util/concurrent/CancellationException;

    if-nez v9, :cond_8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v1, v8}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_9
    :goto_4
    monitor-exit p1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne v1, v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p2, Lm5/n;

    invoke-direct {p2, v1, v4}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {p0, v1}, Lm5/a0;->o(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v1}, Lm5/a0;->B(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lm5/n;

    sget-object v1, Lm5/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_d
    invoke-virtual {p0, p2}, Lm5/a0;->K(Ljava/lang/Object;)V

    sget-object v0, Lm5/a0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lm5/M;

    if-eqz v1, :cond_e

    new-instance v1, Lm5/N;

    move-object v2, p2

    check-cast v2, Lm5/M;

    invoke-direct {v1, v2}, Lm5/N;-><init>(Lm5/M;)V

    goto :goto_6

    :cond_e
    move-object v1, p2

    :cond_f
    :goto_6
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_f

    :goto_7
    invoke-virtual {p0, p1, p2}, Lm5/a0;->t(Lm5/M;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final w()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/Y;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Lm5/Y;

    invoke-virtual {v0}, Lm5/Y;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v3, :cond_2

    new-instance v2, Lm5/S;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lm5/a0;->p()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lm5/S;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm5/a0;)V

    return-object v2

    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v1, v0, Lm5/M;

    if-nez v1, :cond_8

    instance-of v1, v0, Lm5/n;

    if-eqz v1, :cond_7

    check-cast v0, Lm5/n;

    iget-object v0, v0, Lm5/n;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_5
    if-nez v3, :cond_6

    new-instance v1, Lm5/S;

    invoke-virtual {p0}, Lm5/a0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lm5/S;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm5/a0;)V

    return-object v1

    :cond_6
    return-object v3

    :cond_7
    new-instance v0, Lm5/S;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lm5/S;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm5/a0;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()Z
    .locals 1

    instance-of v0, p0, Lm5/l;

    return v0
.end method

.method public final z(Lm5/M;)Lm5/b0;
    .locals 3

    invoke-interface {p1}, Lm5/M;->e()Lm5/b0;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lm5/F;

    if-eqz v0, :cond_0

    new-instance p1, Lm5/b0;

    invoke-direct {p1}, Lr5/k;-><init>()V

    return-object p1

    :cond_0
    instance-of v0, p1, Lm5/V;

    if-eqz v0, :cond_1

    check-cast p1, Lm5/V;

    invoke-virtual {p0, p1}, Lm5/a0;->M(Lm5/V;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State should have list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method
