.class public final LT/v;
.super LX4/g;

# interfaces
.implements Ld5/l;


# instance fields
.field public q:I

.field public final synthetic r:LT/E;


# direct methods
.method public constructor <init>(LT/E;LV4/d;)V
    .locals 0

    iput-object p1, p0, LT/v;->r:LT/E;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(LV4/d;)LV4/d;
    .locals 2

    new-instance v0, LT/v;

    iget-object v1, p0, LT/v;->r:LT/E;

    invoke-direct {v0, v1, p1}, LT/v;-><init>(LT/E;LV4/d;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LV4/d;

    invoke-virtual {p0, p1}, LT/v;->create(LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/v;

    sget-object v0, LS4/i;->a:LS4/i;

    invoke-virtual {p1, v0}, LT/v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LT/v;->q:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iput v1, p0, LT/v;->q:I

    iget-object p1, p0, LT/v;->r:LT/E;

    invoke-virtual {p1, p0}, LT/E;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
