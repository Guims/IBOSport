.class public interface abstract Ly3/c;
.super Ljava/lang/Object;


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object p1

    invoke-interface {p0, p1}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)LX3/b;
    .locals 0

    invoke-static {p1}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object p1

    invoke-interface {p0, p1}, Ly3/c;->e(Ly3/q;)LX3/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ly3/q;)Ly3/o;
.end method

.method public d(Ly3/q;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ly3/c;->e(Ly3/q;)LX3/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, LX3/b;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract e(Ly3/q;)LX3/b;
.end method

.method public f(Ly3/q;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Ly3/c;->g(Ly3/q;)LX3/b;

    move-result-object p1

    invoke-interface {p1}, LX3/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public abstract g(Ly3/q;)LX3/b;
.end method
