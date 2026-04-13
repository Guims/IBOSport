.class public final LT/Q;
.super LX4/g;

# interfaces
.implements Ld5/p;


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 1

    new-instance p1, LT/Q;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2}, LX4/g;-><init>(ILV4/d;)V

    return-object p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp5/c;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/Q;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/Q;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/Q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
