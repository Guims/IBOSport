.class public interface abstract Lf1/m;
.super Ljava/lang/Object;


# virtual methods
.method public b([BII)Lf1/d;
    .locals 6

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object p2

    new-instance v5, LA3/d;

    const/16 v0, 0xe

    invoke-direct {v5, v0, p2}, LA3/d;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x0

    sget-object v4, Lf1/l;->c:Lf1/l;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lf1/m;->d([BIILf1/l;Lk0/h;)V

    new-instance p1, Lf1/b;

    invoke-virtual {p2}, Lp3/E;->i()Lp3/Y;

    move-result-object p2

    invoke-direct {p1, p2}, Lf1/b;-><init>(Lp3/Y;)V

    return-object p1
.end method

.method public abstract d([BIILf1/l;Lk0/h;)V
.end method

.method public abstract j()I
.end method

.method public reset()V
    .locals 0

    return-void
.end method
