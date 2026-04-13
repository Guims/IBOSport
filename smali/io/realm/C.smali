.class public final Lio/realm/C;
.super Lio/realm/E;


# instance fields
.field public c:Lio/realm/d;


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lio/realm/C;->c:Lio/realm/d;

    iget-object v0, v0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/realm/E;->a:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/realm/C;->c:Lio/realm/d;

    iget-object v1, p0, Lio/realm/E;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Global reference counter of Realm"

    const-string v3, " not be negative."

    invoke-static {v2, v0, v3}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()Lio/realm/d;
    .locals 1

    iget-object v0, p0, Lio/realm/C;->c:Lio/realm/d;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lio/realm/E;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lio/realm/C;->c:Lio/realm/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lio/realm/d;)V
    .locals 1

    iput-object p1, p0, Lio/realm/C;->c:Lio/realm/d;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lio/realm/E;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/E;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
