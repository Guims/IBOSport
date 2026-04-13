.class public final LT/f;
.super LX4/g;

# interfaces
.implements Ld5/l;


# instance fields
.field public q:I


# virtual methods
.method public final create(LV4/d;)LV4/d;
    .locals 2

    new-instance v0, LT/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, LX4/g;-><init>(ILV4/d;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LV4/d;

    invoke-virtual {p0, p1}, LT/f;->create(LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/f;

    sget-object v0, LS4/i;->a:LS4/i;

    invoke-virtual {p1, v0}, LT/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LT/f;->q:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iput v1, p0, LT/f;->q:I

    const/4 p1, 0x0

    throw p1
.end method
