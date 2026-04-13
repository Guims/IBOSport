.class public final LM1/e;
.super Ld2/j;


# instance fields
.field public d:LK1/o;


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LK1/D;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, LK1/D;->b()I

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LI1/f;

    check-cast p2, LK1/D;

    iget-object p1, p0, LM1/e;->d:LK1/o;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p1, LK1/o;->e:LB0/i;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, LB0/i;->e(LK1/D;Z)V

    :cond_0
    return-void
.end method
