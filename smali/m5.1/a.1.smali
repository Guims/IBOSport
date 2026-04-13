.class public abstract Lm5/a;
.super Lm5/a0;

# interfaces
.implements LV4/d;
.implements Lm5/u;


# instance fields
.field public final r:LV4/i;


# direct methods
.method public constructor <init>(LV4/i;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lm5/a0;-><init>(Z)V

    sget-object p2, Lm5/t;->q:Lm5/t;

    invoke-interface {p1, p2}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object p2

    check-cast p2, Lm5/Q;

    invoke-virtual {p0, p2}, Lm5/a0;->D(Lm5/Q;)V

    invoke-interface {p1, p0}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p1

    iput-object p1, p0, Lm5/a;->r:LV4/i;

    return-void
.end method


# virtual methods
.method public final C(LR1/G;)V
    .locals 1

    iget-object v0, p0, Lm5/a;->r:LV4/i;

    invoke-static {v0, p1}, Lm5/w;->e(LV4/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final K(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lm5/n;

    if-eqz v0, :cond_1

    check-cast p1, Lm5/n;

    iget-object v0, p1, Lm5/n;->a:Ljava/lang/Throwable;

    sget-object v1, Lm5/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lm5/a;->Q(Ljava/lang/Throwable;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lm5/a;->R(Ljava/lang/Object;)V

    return-void
.end method

.method public Q(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public R(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final S(ILm5/a;Ld5/p;)V
    .locals 2

    invoke-static {p1}, Lp/e;->c(I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object p1, p0, Lm5/a;->r:LV4/i;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, p3}, Le5/p;->a(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v1}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, LW4/a;->b:LW4/a;

    if-eq p2, p1, :cond_2

    invoke-virtual {p0, p2}, Lm5/a;->resumeWith(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-static {p1, v1}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {p1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/a;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, LR1/G;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    check-cast p3, LX4/a;

    invoke-virtual {p3, p2, p0}, LX4/a;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    invoke-static {p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object p1

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-interface {p1, p2}, LV4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p3, p2, p0}, Lcom/bumptech/glide/c;->r(Ld5/p;Lm5/a;Lm5/a;)V

    return-void
.end method

.method public final d()LV4/i;
    .locals 1

    iget-object v0, p0, Lm5/a;->r:LV4/i;

    return-object v0
.end method

.method public final getContext()LV4/i;
    .locals 1

    iget-object v0, p0, Lm5/a;->r:LV4/i;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Lm5/a0;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lm5/w;->d:LE1/a;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lm5/a;->l(Ljava/lang/Object;)V

    return-void
.end method
