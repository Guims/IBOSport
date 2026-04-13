.class public abstract Lm5/H;
.super Lm5/I;

# interfaces
.implements Lm5/z;


# static fields
.field public static final v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, Lm5/H;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/H;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/H;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/H;->x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm5/s;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm5/H;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final C()J
    .locals 9

    invoke-virtual {p0}, Lm5/I;->D()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lm5/H;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/G;

    sget-object v0, Lm5/H;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v5, v3, Lr5/n;

    if-eqz v5, :cond_5

    move-object v4, v3

    check-cast v4, Lr5/n;

    invoke-virtual {v4}, Lr5/n;->d()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lr5/n;->g:LE1/a;

    if-eq v5, v6, :cond_2

    move-object v4, v5

    check-cast v4, Ljava/lang/Runnable;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lr5/n;->c()Lr5/n;

    move-result-object v5

    :cond_3
    invoke-virtual {v0, p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_3

    goto :goto_0

    :cond_5
    sget-object v5, Lm5/w;->b:LE1/a;

    if-ne v3, v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v4, v3

    check-cast v4, Ljava/lang/Runnable;

    :goto_1
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_7
    iget-object v0, p0, Lm5/I;->t:LT4/e;

    const-wide v3, 0x7fffffffffffffffL

    if-nez v0, :cond_8

    :goto_2
    move-wide v5, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, LT4/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move-wide v5, v1

    :goto_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    sget-object v0, Lm5/H;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v5, v0, Lr5/n;

    if-eqz v5, :cond_c

    check-cast v0, Lr5/n;

    sget-object v5, Lr5/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide/32 v7, 0x3fffffff

    and-long/2addr v7, v5

    long-to-int v0, v7

    const-wide v7, 0xfffffffc0000000L

    and-long/2addr v5, v7

    const/16 v7, 0x1e

    shr-long/2addr v5, v7

    long-to-int v5, v5

    if-ne v0, v5, :cond_b

    goto :goto_5

    :cond_b
    return-wide v1

    :cond_c
    sget-object v5, Lm5/w;->b:LE1/a;

    if-ne v0, v5, :cond_d

    goto :goto_6

    :cond_d
    :goto_4
    return-wide v1

    :cond_e
    :goto_5
    sget-object v0, Lm5/H;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/G;

    :goto_6
    return-wide v3

    :cond_f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_6

    goto/16 :goto_0
.end method

.method public E(Ljava/lang/Runnable;)V
    .locals 5

    :goto_0
    sget-object v0, Lm5/H;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lm5/H;->x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lr5/n;

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lr5/n;

    invoke-virtual {v2, p1}, Lr5/n;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_b

    if-eq v4, v3, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_8

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lr5/n;->c()Lr5/n;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0

    :cond_7
    sget-object v2, Lm5/w;->b:LE1/a;

    if-ne v1, v2, :cond_9

    :cond_8
    :goto_1
    sget-object v0, Lm5/x;->y:Lm5/x;

    invoke-virtual {v0, p1}, Lm5/x;->E(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    new-instance v2, Lr5/n;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3}, Lr5/n;-><init>(IZ)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lr5/n;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lr5/n;->a(Ljava/lang/Object;)I

    :cond_a
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    :goto_2
    invoke-virtual {p0}, Lm5/I;->A()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p1, :cond_c

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_c
    return-void

    :cond_d
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_a

    goto :goto_0
.end method

.method public final F()Z
    .locals 7

    iget-object v0, p0, Lm5/I;->t:LT4/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LT4/e;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lm5/H;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/G;

    sget-object v0, Lm5/H;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v3, v0, Lr5/n;

    if-eqz v3, :cond_4

    check-cast v0, Lr5/n;

    sget-object v3, Lr5/n;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v3, v5

    const/16 v5, 0x1e

    shr-long/2addr v3, v5

    long-to-int v3, v3

    if-ne v0, v3, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    sget-object v3, Lm5/w;->b:LE1/a;

    if-ne v0, v3, :cond_5

    :goto_1
    return v1

    :cond_5
    :goto_2
    return v2
.end method

.method public shutdown()V
    .locals 7

    sget-object v0, Lm5/i0;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lm5/H;->x:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v0, Lm5/w;->b:LE1/a;

    sget-object v3, Lm5/H;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v3, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lr5/n;

    if-eqz v5, :cond_3

    check-cast v4, Lr5/n;

    invoke-virtual {v4}, Lr5/n;->b()Z

    goto :goto_1

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v5, Lr5/n;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, Lr5/n;-><init>(IZ)V

    move-object v6, v4

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lr5/n;->a(Ljava/lang/Object;)I

    :cond_5
    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lm5/H;->C()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    sget-object v0, Lm5/H;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/G;

    return-void

    :cond_7
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v4, :cond_5

    goto :goto_0
.end method

.method public final x(LV4/i;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lm5/H;->E(Ljava/lang/Runnable;)V

    return-void
.end method
