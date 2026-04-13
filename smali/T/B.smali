.class public final LT/B;
.super LX4/g;

# interfaces
.implements Ld5/l;


# instance fields
.field public q:Ljava/lang/Throwable;

.field public r:I

.field public final synthetic s:LT/I;


# direct methods
.method public constructor <init>(LT/I;LV4/d;)V
    .locals 0

    iput-object p1, p0, LT/B;->s:LT/I;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(LV4/d;)LV4/d;
    .locals 2

    new-instance v0, LT/B;

    iget-object v1, p0, LT/B;->s:LT/I;

    invoke-direct {v0, v1, p1}, LT/B;-><init>(LT/I;LV4/d;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LV4/d;

    invoke-virtual {p0, p1}, LT/B;->create(LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/B;

    sget-object v0, LS4/i;->a:LS4/i;

    invoke-virtual {p1, v0}, LT/B;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LT/B;->r:I

    iget-object v1, p0, LT/B;->s:LT/I;

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LT/B;->q:Ljava/lang/Throwable;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_1
    iput v3, p0, LT/B;->r:I

    invoke-static {v1, v3, p0}, LT/I;->f(LT/I;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, LT/T;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_1
    invoke-virtual {v1}, LT/I;->g()LT/S;

    move-result-object p1

    iput-object v0, p0, LT/B;->q:Ljava/lang/Throwable;

    iput v2, p0, LT/B;->r:I

    invoke-virtual {p1}, LT/S;->a()Ljava/lang/Integer;

    move-result-object p1

    if-ne p1, v4, :cond_4

    :goto_2
    return-object v4

    :cond_4
    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, LT/L;

    invoke-direct {v1, v0, p1}, LT/L;-><init>(Ljava/lang/Throwable;I)V

    move-object p1, v1

    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, LS4/d;

    invoke-direct {v1, p1, v0}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
