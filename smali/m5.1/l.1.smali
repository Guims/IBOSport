.class public final Lm5/l;
.super Lm5/a0;

# interfaces
.implements Lm5/k;


# virtual methods
.method public final Q(LX4/g;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/M;

    if-nez v1, :cond_2

    instance-of p1, v0, Lm5/n;

    if-nez p1, :cond_1

    invoke-static {v0}, Lm5/w;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast v0, Lm5/n;

    iget-object p1, v0, Lm5/n;->a:Ljava/lang/Throwable;

    throw p1

    :cond_2
    invoke-virtual {p0, v0}, Lm5/a0;->N(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lm5/W;

    invoke-static {p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lm5/W;-><init>(LV4/d;Lm5/l;)V

    invoke-virtual {v0}, Lm5/f;->r()V

    new-instance p1, Lm5/P;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lm5/P;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p1}, Lm5/a0;->E(ZZLd5/l;)Lm5/D;

    move-result-object p1

    new-instance v1, Lm5/E;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lm5/E;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lm5/f;->t(Ld5/l;)V

    invoke-virtual {v0}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
