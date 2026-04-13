.class public final LJ/a0;
.super LX4/a;

# interfaces
.implements Ld5/p;
.implements Le5/e;


# instance fields
.field public final b:I

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;LV4/d;)V
    .locals 0

    iput-object p1, p0, LJ/a0;->s:Landroid/view/View;

    invoke-direct {p0, p2}, LX4/a;-><init>(LV4/d;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object p1

    sget-object p2, LV4/j;->b:LV4/j;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    iput p1, p0, LJ/a0;->b:I

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 2

    new-instance v0, LJ/a0;

    iget-object v1, p0, LJ/a0;->s:Landroid/view/View;

    invoke-direct {v0, v1, p2}, LJ/a0;-><init>(Landroid/view/View;LV4/d;)V

    iput-object p1, v0, LJ/a0;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lj5/d;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LJ/a0;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LJ/a0;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LJ/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getArity()I
    .locals 1

    iget v0, p0, LJ/a0;->b:I

    return v0
.end method

.method public final getContext()LV4/i;
    .locals 1

    sget-object v0, LV4/j;->b:LV4/j;

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LJ/a0;->q:I

    iget-object v1, p0, LJ/a0;->s:Landroid/view/View;

    const/4 v2, 0x1

    sget-object v3, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_5

    sget-object v4, LS4/i;->a:LS4/i;

    const/4 v5, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v5, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    return-object v4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LJ/a0;->r:Ljava/lang/Object;

    check-cast v0, Lj5/d;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    instance-of p1, v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    check-cast v1, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput-object p1, p0, LJ/a0;->r:Ljava/lang/Object;

    iput v5, p0, LJ/a0;->q:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LJ/x;

    new-instance v2, LJ/Z;

    const/4 v6, 0x0

    invoke-direct {v2, v6, v1}, LJ/Z;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v2}, LJ/x;-><init>(LJ/Z;)V

    iget-object v1, p1, LJ/x;->q:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v4

    goto :goto_0

    :cond_2
    iput-object p1, v0, Lj5/d;->r:Ljava/util/Iterator;

    iput v5, v0, Lj5/d;->b:I

    iput-object p0, v0, Lj5/d;->s:LV4/d;

    move-object p1, v3

    :goto_0
    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v4

    :goto_1
    if-ne p1, v3, :cond_4

    return-object v3

    :cond_4
    return-object v4

    :cond_5
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LJ/a0;->r:Ljava/lang/Object;

    check-cast p1, Lj5/d;

    iput-object p1, p0, LJ/a0;->r:Ljava/lang/Object;

    iput v2, p0, LJ/a0;->q:I

    iput-object v1, p1, Lj5/d;->q:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p1, Lj5/d;->b:I

    iput-object p0, p1, Lj5/d;->s:LV4/d;

    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, LX4/a;->getCompletion()LV4/d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Le5/n;->a:Le5/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Le5/o;->a(Le5/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0}, LX4/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
