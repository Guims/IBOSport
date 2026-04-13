.class public Lm5/f;
.super Lm5/B;

# interfaces
.implements Lm5/e;
.implements LX4/d;
.implements Lm5/m0;


# static fields
.field public static final u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final s:LV4/d;

.field public final t:LV4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex"

    const-class v1, Lm5/f;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/f;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm5/f;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILV4/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lm5/B;-><init>(I)V

    iput-object p2, p0, Lm5/f;->s:LV4/d;

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object p1

    iput-object p1, p0, Lm5/f;->t:LV4/i;

    const p1, 0x1fffffff

    iput p1, p0, Lm5/f;->_decisionAndIndex:I

    sget-object p1, Lm5/b;->b:Lm5/b;

    iput-object p1, p0, Lm5/f;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static B(Lm5/d0;Ljava/lang/Object;ILd5/l;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lm5/n;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    instance-of p2, p0, Lm5/E;

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    new-instance v0, Lm5/m;

    instance-of p2, p0, Lm5/E;

    if-eqz p2, :cond_4

    check-cast p0, Lm5/E;

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lm5/m;-><init>(Ljava/lang/Object;Lm5/E;Ld5/l;Ljava/util/concurrent/CancellationException;I)V

    return-object v0
.end method

.method public static w(Lm5/d0;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;ILd5/l;)V
    .locals 4

    :goto_0
    sget-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm5/d0;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lm5/d0;

    invoke-static {v2, p1, p2, p3}, Lm5/f;->B(Lm5/d0;Ljava/lang/Object;ILd5/l;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lm5/f;->v()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lm5/f;->n()V

    :cond_1
    invoke-virtual {p0, p2}, Lm5/f;->o(I)V

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_3
    instance-of p2, v1, Lm5/g;

    if-eqz p2, :cond_5

    check-cast v1, Lm5/g;

    sget-object p2, Lm5/g;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    iget-object p1, v1, Lm5/n;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lm5/f;->k(Ld5/l;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Already resumed, but proposed with update "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lr5/t;I)V
    .locals 4

    :cond_0
    sget-object v0, Lm5/f;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lm5/f;->u(Lm5/d0;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 6

    :goto_0
    sget-object p1, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lm5/d0;

    if-nez v0, :cond_9

    instance-of v0, v1, Lm5/n;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, v1, Lm5/m;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lm5/m;

    iget-object v2, v0, Lm5/m;->e:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-static {v0, v2, p2, v3}, Lm5/m;->a(Lm5/m;Lm5/E;Ljava/util/concurrent/CancellationException;I)Lm5/m;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v0, Lm5/m;->b:Lm5/E;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lm5/f;->h(Lm5/E;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, v0, Lm5/m;->c:Ld5/l;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, p2}, Lm5/f;->k(Ld5/l;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_1

    move-object v4, p2

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Lm5/m;

    const/4 v3, 0x0

    const/16 v5, 0xe

    const/4 v2, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lm5/m;-><init>(Ljava/lang/Object;Lm5/E;Ld5/l;Ljava/util/concurrent/CancellationException;I)V

    :cond_6
    invoke-virtual {p1, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_6

    :goto_2
    move-object p2, v4

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()LV4/d;
    .locals 1

    iget-object v0, p0, Lm5/f;->s:LV4/d;

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lm5/B;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lm5/m;

    if-eqz v0, :cond_0

    check-cast p1, Lm5/m;

    iget-object p1, p1, Lm5/m;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCallerFrame()LX4/d;
    .locals 2

    iget-object v0, p0, Lm5/f;->s:LV4/d;

    instance-of v1, v0, LX4/d;

    if-eqz v1, :cond_0

    check-cast v0, LX4/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()LV4/i;
    .locals 1

    iget-object v0, p0, Lm5/f;->t:LV4/i;

    return-object v0
.end method

.method public final h(Lm5/E;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Lm5/E;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, LR1/G;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lm5/f;->t:LV4/i;

    invoke-static {p1, p2}, Lm5/w;->e(LV4/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;Ld5/l;)LE1/a;
    .locals 5

    sget-object v0, Lm5/w;->a:LE1/a;

    :goto_0
    sget-object v1, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lm5/d0;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lm5/d0;

    iget v4, p0, Lm5/B;->r:I

    invoke-static {v3, p1, v4, p2}, Lm5/f;->B(Lm5/d0;Ljava/lang/Object;ILd5/l;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lm5/f;->v()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lm5/f;->n()V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lm5/B;->r:I

    invoke-virtual {p0, p1}, Lm5/f;->o(I)V

    return-void
.end method

.method public final k(Ld5/l;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p2}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, LR1/G;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lm5/f;->t:LV4/i;

    invoke-static {p1, p2}, Lm5/w;->e(LV4/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l(Lr5/t;Ljava/lang/Throwable;)V
    .locals 3

    iget-object p2, p0, Lm5/f;->t:LV4/i;

    sget-object v0, Lm5/f;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lr5/t;->g(ILV4/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lm5/w;->e(LV4/i;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/lang/Throwable;)Z
    .locals 6

    :goto_0
    sget-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm5/d0;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Lm5/g;

    instance-of v4, v1, Lm5/E;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    instance-of v4, v1, Lr5/t;

    if-eqz v4, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    invoke-direct {v2, p0, p1, v3}, Lm5/g;-><init>(Lm5/f;Ljava/lang/Throwable;Z)V

    :cond_3
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, v1

    check-cast v0, Lm5/d0;

    instance-of v2, v0, Lm5/E;

    if-eqz v2, :cond_4

    check-cast v1, Lm5/E;

    invoke-virtual {p0, v1, p1}, Lm5/f;->h(Lm5/E;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    instance-of v0, v0, Lr5/t;

    if-eqz v0, :cond_5

    check-cast v1, Lr5/t;

    invoke-virtual {p0, v1, p1}, Lm5/f;->l(Lr5/t;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lm5/f;->v()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lm5/f;->n()V

    :cond_6
    iget p1, p0, Lm5/B;->r:I

    invoke-virtual {p0, p1}, Lm5/f;->o(I)V

    return v5

    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_3

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    sget-object v0, Lm5/f;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/D;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Lm5/D;->f()V

    sget-object v1, Lm5/c0;->b:Lm5/c0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(I)V
    .locals 6

    :cond_0
    sget-object v0, Lm5/f;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_c

    const/4 v0, 0x1

    if-ne v2, v0, :cond_b

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lm5/f;->s:LV4/d;

    if-nez v1, :cond_a

    instance-of v4, v3, Lr5/h;

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    iget v5, p0, Lm5/B;->r:I

    if-eq v5, v0, :cond_4

    if-ne v5, v4, :cond_5

    :cond_4
    move v2, v0

    :cond_5
    if-ne p1, v2, :cond_a

    move-object p1, v3

    check-cast p1, Lr5/h;

    iget-object v1, p1, Lr5/h;->s:Lm5/s;

    iget-object p1, p1, Lr5/h;->t:LX4/c;

    invoke-interface {p1}, LV4/d;->getContext()LV4/i;

    move-result-object p1

    invoke-virtual {v1}, Lm5/s;->y()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1, p0}, Lm5/s;->x(LV4/i;Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-static {}, Lm5/i0;->a()Lm5/I;

    move-result-object p1

    iget-wide v1, p1, Lm5/I;->r:J

    const-wide v4, 0x100000000L

    cmp-long v1, v1, v4

    if-ltz v1, :cond_8

    iget-object v0, p1, Lm5/I;->t:LT4/e;

    if-nez v0, :cond_7

    new-instance v0, LT4/e;

    invoke-direct {v0}, LT4/e;-><init>()V

    iput-object v0, p1, Lm5/I;->t:LT4/e;

    :cond_7
    invoke-virtual {v0, p0}, LT4/e;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-virtual {p1, v0}, Lm5/I;->B(Z)V

    :try_start_0
    invoke-static {p0, v3, v0}, Lm5/w;->i(Lm5/f;LV4/d;Z)V

    :cond_9
    invoke-virtual {p1}, Lm5/I;->D()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_9

    :goto_3
    invoke-virtual {p1, v0}, Lm5/I;->z(Z)V

    goto :goto_4

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lm5/B;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {p1, v0}, Lm5/I;->z(Z)V

    throw v1

    :cond_a
    invoke-static {p0, v3, v1}, Lm5/w;->i(Lm5/f;LV4/d;Z)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const v2, 0x1fffffff

    and-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_4
    return-void
.end method

.method public p(Lm5/a0;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p1}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lm5/f;->v()Z

    move-result v0

    :cond_0
    sget-object v1, Lm5/f;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1d

    if-eqz v3, :cond_7

    const/4 v1, 0x2

    if-ne v3, v1, :cond_6

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm5/f;->y()V

    :cond_1
    sget-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lm5/n;

    if-nez v2, :cond_5

    iget v2, p0, Lm5/B;->r:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Lm5/f;->t:LV4/i;

    sget-object v2, Lm5/t;->q:Lm5/t;

    invoke-interface {v1, v2}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v1

    check-cast v1, Lm5/Q;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lm5/Q;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast v1, Lm5/a0;

    invoke-virtual {v1}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lm5/f;->b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    throw v1

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lm5/f;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    check-cast v0, Lm5/n;

    iget-object v0, v0, Lm5/n;->a:Ljava/lang/Throwable;

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const v3, 0x1fffffff

    and-int/2addr v3, v2

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lm5/f;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/D;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lm5/f;->s()Lm5/D;

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lm5/f;->y()V

    :cond_9
    sget-object v0, LW4/a;->b:LW4/a;

    return-object v0
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lm5/f;->s()Lm5/D;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lm5/d0;

    if-nez v1, :cond_1

    invoke-interface {v0}, Lm5/D;->f()V

    sget-object v0, Lm5/f;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lm5/c0;->b:Lm5/c0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, LS4/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lm5/n;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget v0, p0, Lm5/B;->r:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lm5/f;->A(Ljava/lang/Object;ILd5/l;)V

    return-void
.end method

.method public final s()Lm5/D;
    .locals 4

    iget-object v0, p0, Lm5/f;->t:LV4/i;

    sget-object v1, Lm5/t;->q:Lm5/t;

    invoke-interface {v0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    check-cast v0, Lm5/Q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lm5/h;

    invoke-direct {v2, p0}, Lm5/h;-><init>(Lm5/f;)V

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lm5/w;->f(Lm5/Q;Lm5/V;I)Lm5/D;

    move-result-object v0

    :cond_1
    sget-object v2, Lm5/f;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0
.end method

.method public final t(Ld5/l;)V
    .locals 2

    instance-of v0, p1, Lm5/E;

    if-eqz v0, :cond_0

    check-cast p1, Lm5/E;

    goto :goto_0

    :cond_0
    new-instance v0, Lm5/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lm5/E;-><init>(ILjava/lang/Object;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lm5/f;->u(Lm5/d0;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lm5/f;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm5/f;->s:LV4/d;

    invoke-static {v1}, Lm5/w;->j(LV4/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm5/d0;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lm5/g;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm5/w;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lm5/d0;)V
    .locals 9

    :cond_0
    :goto_0
    sget-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lm5/b;

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_3
    instance-of v1, v2, Lm5/E;

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    move v1, v7

    goto :goto_1

    :cond_4
    instance-of v1, v2, Lr5/t;

    :goto_1
    const/4 v3, 0x0

    if-nez v1, :cond_13

    instance-of v1, v2, Lm5/n;

    const/4 v8, 0x0

    if-eqz v1, :cond_7

    move-object v0, v2

    check-cast v0, Lm5/n;

    sget-object v1, Lm5/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, v2, Lm5/g;

    if-eqz v1, :cond_12

    iget-object v0, v0, Lm5/n;->a:Ljava/lang/Throwable;

    instance-of v1, p1, Lm5/E;

    if-eqz v1, :cond_5

    check-cast p1, Lm5/E;

    invoke-virtual {p0, p1, v0}, Lm5/f;->h(Lm5/E;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    check-cast p1, Lr5/t;

    invoke-virtual {p0, p1, v0}, Lm5/f;->l(Lr5/t;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    invoke-static {p1, v2}, Lm5/f;->w(Lm5/d0;Ljava/lang/Object;)V

    throw v3

    :cond_7
    instance-of v1, v2, Lm5/m;

    if-eqz v1, :cond_e

    move-object v1, v2

    check-cast v1, Lm5/m;

    iget-object v4, v1, Lm5/m;->b:Lm5/E;

    if-nez v4, :cond_d

    instance-of v4, p1, Lr5/t;

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    move-object v4, p1

    check-cast v4, Lm5/E;

    iget-object v5, v1, Lm5/m;->e:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    move v6, v7

    goto :goto_2

    :cond_9
    move v6, v8

    :goto_2
    if-eqz v6, :cond_a

    invoke-virtual {p0, v4, v5}, Lm5/f;->h(Lm5/E;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/16 v5, 0x1d

    invoke-static {v1, v4, v3, v5}, Lm5/m;->a(Lm5/m;Lm5/E;Ljava/util/concurrent/CancellationException;I)Lm5/m;

    move-result-object v1

    :cond_b
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_b

    move v7, v8

    :goto_3
    if-eqz v7, :cond_0

    goto :goto_5

    :cond_d
    invoke-static {p1, v2}, Lm5/f;->w(Lm5/d0;Ljava/lang/Object;)V

    throw v3

    :cond_e
    instance-of v1, p1, Lr5/t;

    if-eqz v1, :cond_f

    goto :goto_5

    :cond_f
    move-object v3, p1

    check-cast v3, Lm5/E;

    new-instance v1, Lm5/m;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lm5/m;-><init>(Ljava/lang/Object;Lm5/E;Ld5/l;Ljava/util/concurrent/CancellationException;I)V

    :cond_10
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_10

    move v7, v8

    :goto_4
    if-eqz v7, :cond_0

    :cond_12
    :goto_5
    return-void

    :cond_13
    invoke-static {p1, v2}, Lm5/f;->w(Lm5/d0;Ljava/lang/Object;)V

    throw v3
.end method

.method public final v()Z
    .locals 2

    iget v0, p0, Lm5/B;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    iget-object v1, p0, Lm5/f;->s:LV4/d;

    invoke-static {v1, v0}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lr5/h;

    sget-object v0, Lr5/h;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final y()V
    .locals 5

    iget-object v0, p0, Lm5/f;->s:LV4/d;

    instance-of v1, v0, Lr5/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lr5/h;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    sget-object v1, Lr5/h;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr5/a;->d:LE1/a;

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lm5/f;->n()V

    invoke-virtual {p0, v2}, Lm5/f;->m(Ljava/lang/Throwable;)Z

    return-void

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    return-void
.end method

.method public final z(Ljava/lang/Object;Ld5/l;)V
    .locals 1

    iget v0, p0, Lm5/B;->r:I

    invoke-virtual {p0, p1, v0, p2}, Lm5/f;->A(Ljava/lang/Object;ILd5/l;)V

    return-void
.end method
