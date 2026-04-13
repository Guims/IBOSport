.class public abstract Lm5/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:LE1/a;

.field public static final b:LE1/a;

.field public static final c:LE1/a;

.field public static final d:LE1/a;

.field public static final e:LE1/a;

.field public static final f:LE1/a;

.field public static final g:LE1/a;

.field public static final h:Lm5/F;

.field public static final i:Lm5/F;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LE1/a;

    const-string v1, "RESUME_TOKEN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm5/w;->a:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm5/w;->b:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm5/w;->c:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm5/w;->d:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm5/w;->e:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm5/w;->f:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "SEALED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm5/w;->g:LE1/a;

    new-instance v0, Lm5/F;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm5/F;-><init>(Z)V

    sput-object v0, Lm5/w;->h:Lm5/F;

    new-instance v0, Lm5/F;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lm5/F;-><init>(Z)V

    sput-object v0, Lm5/w;->i:Lm5/F;

    return-void
.end method

.method public static final a(LV4/i;)Lr5/e;
    .locals 2

    new-instance v0, Lr5/e;

    sget-object v1, Lm5/t;->q:Lm5/t;

    invoke-interface {p0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lm5/U;

    invoke-direct {v1}, Lm5/U;-><init>()V

    invoke-interface {p0, v1}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lr5/e;-><init>(LV4/i;)V

    return-object v0
.end method

.method public static final b(LV4/i;LV4/i;Z)LV4/i;
    .locals 3

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lm5/p;->r:Lm5/p;

    invoke-interface {p0, p2, v0}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, p2, v0}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lm5/p;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lm5/p;-><init>(II)V

    sget-object v1, LV4/j;->b:LV4/j;

    invoke-interface {p0, v1, v0}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV4/i;

    if-eqz p2, :cond_1

    check-cast p1, LV4/i;

    sget-object p2, Lm5/p;->q:Lm5/p;

    invoke-interface {p1, v1, p2}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    check-cast p1, LV4/i;

    invoke-interface {p0, p1}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LV4/d;)Lm5/f;
    .locals 6

    instance-of v0, p0, Lr5/h;

    if-nez v0, :cond_0

    new-instance v0, Lm5/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lm5/f;-><init>(ILV4/d;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lr5/h;

    sget-object v1, Lr5/a;->d:LE1/a;

    sget-object v2, Lr5/h;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_1

    :cond_2
    instance-of v5, v3, Lm5/f;

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v3, Lm5/f;

    :goto_1
    if-eqz v3, :cond_6

    sget-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm5/m;

    if-eqz v2, :cond_4

    check-cast v1, Lm5/m;

    iget-object v1, v1, Lm5/m;->d:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lm5/f;->n()V

    goto :goto_2

    :cond_4
    sget-object v1, Lm5/f;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Lm5/b;->b:Lm5/b;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    new-instance v0, Lm5/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lm5/f;-><init>(ILV4/d;)V

    return-object v0

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_3

    goto :goto_0

    :cond_8
    if-eq v3, v1, :cond_1

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(LV4/i;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    sget-object v0, Lm5/t;->b:Lm5/t;

    invoke-interface {p0, v0}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    check-cast v0, Ln5/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln5/b;->x(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lr5/a;->c(LV4/i;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_1
    invoke-static {p0, p1}, Lr5/a;->c(LV4/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lm5/Q;Lm5/V;I)Lm5/D;
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    check-cast p0, Lm5/a0;

    invoke-virtual {p0, v0, v1, p1}, Lm5/a0;->E(ZZLd5/l;)Lm5/D;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lm5/u;Ld5/p;)Lm5/f0;
    .locals 3

    sget-object v0, LV4/j;->b:LV4/j;

    invoke-interface {p0}, Lm5/u;->d()LV4/i;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lm5/w;->b(LV4/i;LV4/i;Z)LV4/i;

    move-result-object p0

    sget-object v0, Lm5/C;->a:Lt5/d;

    if-eq p0, v0, :cond_0

    sget-object v2, LV4/e;->b:LV4/e;

    invoke-interface {p0, v2}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p0, v0}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p0

    :cond_0
    new-instance v0, Lm5/f0;

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(LV4/i;Z)V

    invoke-virtual {v0, v1, v0, p1}, Lm5/a;->S(ILm5/a;Ld5/p;)V

    return-object v0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lm5/n;

    if-eqz v0, :cond_0

    check-cast p0, Lm5/n;

    iget-object p0, p0, Lm5/n;->a:Ljava/lang/Throwable;

    invoke-static {p0}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final i(Lm5/f;LV4/d;Z)V
    .locals 2

    sget-object v0, Lm5/f;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm5/f;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lm5/f;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_6

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr5/h;

    iget-object p2, p1, Lr5/h;->t:LX4/c;

    iget-object p1, p1, Lr5/h;->v:Ljava/lang/Object;

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    invoke-static {v0, p1}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lr5/a;->f:LE1/a;

    if-eq p1, v1, :cond_1

    invoke-static {p2, v0, p1}, Lm5/w;->l(LV4/d;LV4/i;Ljava/lang/Object;)Lm5/k0;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p2, p0}, LV4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lm5/k0;->T()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {v0, p1}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lm5/k0;->T()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    invoke-static {v0, p1}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    :cond_5
    throw p0

    :cond_6
    invoke-interface {p1, p0}, LV4/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final j(LV4/d;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lr5/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm5/w;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object v1

    :goto_0
    invoke-static {v1}, LS4/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm5/w;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lm5/N;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lm5/N;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lm5/N;->a:Lm5/M;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final l(LV4/d;LV4/i;Ljava/lang/Object;)Lm5/k0;
    .locals 2

    instance-of v0, p0, LX4/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lm5/l0;->b:Lm5/l0;

    invoke-interface {p1, v0}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast p0, LX4/d;

    :cond_1
    instance-of v0, p0, Lm5/A;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, LX4/d;->getCallerFrame()LX4/d;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lm5/k0;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lm5/k0;

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lm5/k0;->U(LV4/i;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static final m(LV4/i;Ld5/p;LX4/c;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lm5/p;->r:Lm5/p;

    invoke-interface {p0, v1, v2}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, Lm5/w;->b(LV4/i;LV4/i;Z)LV4/i;

    move-result-object p0

    :goto_0
    sget-object v1, Lm5/t;->q:Lm5/t;

    invoke-interface {p0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v1

    check-cast v1, Lm5/Q;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lm5/Q;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Lm5/a0;

    invoke-virtual {v1}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    if-ne p0, v0, :cond_3

    new-instance v0, Lr5/s;

    invoke-direct {v0, p0, p2}, Lr5/s;-><init>(LV4/i;LX4/c;)V

    invoke-static {v0, v0, p1}, Lcom/bumptech/glide/d;->r(Lr5/s;Lr5/s;Ld5/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_3
    sget-object v1, LV4/e;->b:LV4/e;

    invoke-interface {p0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v3

    invoke-interface {v0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    invoke-static {v3, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lm5/k0;

    invoke-direct {v0, p0, p2}, Lm5/k0;-><init>(LV4/i;LX4/c;)V

    const/4 p0, 0x0

    iget-object p2, v0, Lm5/a;->r:LV4/i;

    invoke-static {p2, p0}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    invoke-static {v0, v0, p1}, Lcom/bumptech/glide/d;->r(Lr5/s;Lr5/s;Ld5/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p0}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p2, p0}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    throw p1

    :cond_4
    new-instance v0, Lm5/A;

    invoke-direct {v0, p0, p2}, Lr5/s;-><init>(LV4/i;LX4/c;)V

    invoke-static {p1, v0, v0}, Lcom/bumptech/glide/c;->r(Ld5/p;Lm5/a;Lm5/a;)V

    sget-object p0, Lm5/A;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_5
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x2

    if-ne p1, p0, :cond_7

    invoke-virtual {v0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm5/w;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lm5/n;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    check-cast p0, Lm5/n;

    iget-object p0, p0, Lm5/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, LW4/a;->b:LW4/a;

    :goto_2
    return-object p0
.end method
