.class public final Lm5/k0;
.super Lr5/s;


# instance fields
.field public final t:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(LV4/i;LX4/c;)V
    .locals 2

    sget-object v0, Lm5/l0;->b:Lm5/l0;

    invoke-interface {p1, v0}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Lr5/s;-><init>(LV4/i;LX4/c;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lm5/k0;->t:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object p2

    sget-object v0, LV4/e;->b:LV4/e;

    invoke-interface {p2, v0}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object p2

    instance-of p2, p2, Lm5/s;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lm5/k0;->U(LV4/i;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final T()Z
    .locals 3

    iget-boolean v0, p0, Lm5/k0;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/k0;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lm5/k0;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final U(LV4/i;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/k0;->threadLocalIsSet:Z

    iget-object v0, p0, Lm5/k0;->t:Ljava/lang/ThreadLocal;

    new-instance v1, LS4/d;

    invoke-direct {v1, p1, p2}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, Lm5/k0;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm5/k0;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS4/d;

    if-eqz v0, :cond_0

    iget-object v1, v0, LS4/d;->b:Ljava/lang/Object;

    check-cast v1, LV4/i;

    iget-object v0, v0, LS4/d;->q:Ljava/lang/Object;

    invoke-static {v1, v0}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lm5/k0;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    invoke-static {p1}, Lm5/w;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lr5/s;->s:LX4/c;

    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr5/a;->f:LE1/a;

    if-eq v3, v4, :cond_2

    invoke-static {v0, v1, v3}, Lm5/w;->l(LV4/d;LV4/i;Ljava/lang/Object;)Lm5/k0;

    move-result-object v2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lr5/s;->s:LX4/c;

    invoke-interface {v0, p1}, LV4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lm5/k0;->T()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-static {v1, v3}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lm5/k0;->T()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {v1, v3}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    :cond_6
    throw p1
.end method
