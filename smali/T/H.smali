.class public final LT/H;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public q:Le5/k;

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Le5/k;

.field public final synthetic u:LT/I;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Z


# direct methods
.method public constructor <init>(Le5/k;LT/I;Ljava/lang/Object;ZLV4/d;)V
    .locals 0

    iput-object p1, p0, LT/H;->t:Le5/k;

    iput-object p2, p0, LT/H;->u:LT/I;

    iput-object p3, p0, LT/H;->v:Ljava/lang/Object;

    iput-boolean p4, p0, LT/H;->w:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 6

    new-instance v0, LT/H;

    iget-object v3, p0, LT/H;->v:Ljava/lang/Object;

    iget-boolean v4, p0, LT/H;->w:Z

    iget-object v1, p0, LT/H;->t:Le5/k;

    iget-object v2, p0, LT/H;->u:LT/I;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LT/H;-><init>(Le5/k;LT/I;Ljava/lang/Object;ZLV4/d;)V

    iput-object p1, v0, LT/H;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LV/k;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/H;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/H;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/H;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LT/H;->r:I

    iget-object v1, p0, LT/H;->v:Ljava/lang/Object;

    iget-object v2, p0, LT/H;->u:LT/I;

    iget-object v3, p0, LT/H;->t:Le5/k;

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LT/H;->q:Le5/k;

    iget-object v5, p0, LT/H;->s:Ljava/lang/Object;

    check-cast v5, LV/k;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/H;->s:Ljava/lang/Object;

    check-cast p1, LV/k;

    invoke-virtual {v2}, LT/I;->g()LT/S;

    move-result-object v0

    iput-object p1, p0, LT/H;->s:Ljava/lang/Object;

    iput-object v3, p0, LT/H;->q:Le5/k;

    iput v5, p0, LT/H;->r:I

    iget-object v0, v0, LT/S;->b:LL2/o;

    iget-object v0, v0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v5

    move-object v5, p1

    move-object p1, v0

    move-object v0, v3

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Le5/k;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, LT/H;->s:Ljava/lang/Object;

    iput-object p1, p0, LT/H;->q:Le5/k;

    iput v4, p0, LT/H;->r:I

    invoke-virtual {v5, v1, p0}, LV/k;->b(Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_4

    :goto_1
    return-object v6

    :cond_4
    :goto_2
    iget-boolean p1, p0, LT/H;->w:Z

    if-eqz p1, :cond_6

    iget-object p1, v2, LT/I;->h:LL2/o;

    new-instance v0, LT/c;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iget v3, v3, Le5/k;->b:I

    invoke-direct {v0, v2, v3, v1}, LT/c;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, LL2/o;->F(LT/T;)V

    :cond_6
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
