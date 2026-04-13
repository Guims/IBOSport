.class public final Lq5/d;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lq5/e;


# direct methods
.method public synthetic constructor <init>(Lq5/e;LV4/d;I)V
    .locals 0

    iput p3, p0, Lq5/d;->q:I

    iput-object p1, p0, Lq5/d;->t:Lq5/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 3

    iget v0, p0, Lq5/d;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lq5/d;

    iget-object v1, p0, Lq5/d;->t:Lq5/e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lq5/d;-><init>(Lq5/e;LV4/d;I)V

    iput-object p1, v0, Lq5/d;->s:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lq5/d;

    iget-object v1, p0, Lq5/d;->t:Lq5/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lq5/d;-><init>(Lq5/e;LV4/d;I)V

    iput-object p1, v0, Lq5/d;->s:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lq5/d;->q:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lp5/c;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, Lq5/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lq5/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lq5/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lo5/n;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, Lq5/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lq5/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lq5/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lq5/d;->q:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lq5/d;->r:I

    sget-object v1, LS4/i;->a:LS4/i;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, Lq5/d;->s:Ljava/lang/Object;

    check-cast p1, Lp5/c;

    iput v2, p0, Lq5/d;->r:I

    iget-object v0, p0, Lq5/d;->t:Lq5/e;

    iget-object v0, v0, Lq5/e;->s:Lp5/b;

    invoke-interface {v0, p1, p0}, Lp5/b;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-ne p1, v0, :cond_3

    move-object v1, v0

    :cond_3
    :goto_1
    return-object v1

    :pswitch_0
    iget v0, p0, Lq5/d;->r:I

    sget-object v1, LS4/i;->a:LS4/i;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-ne v0, v2, :cond_4

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, Lq5/d;->s:Ljava/lang/Object;

    check-cast p1, Lo5/n;

    iput v2, p0, Lq5/d;->r:I

    new-instance v0, Lq5/o;

    invoke-direct {v0, p1}, Lq5/o;-><init>(Lo5/p;)V

    iget-object p1, p0, Lq5/d;->t:Lq5/e;

    iget-object p1, p1, Lq5/e;->s:Lp5/b;

    invoke-interface {p1, v0, p0}, Lp5/b;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v1

    :goto_2
    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    move-object p1, v1

    :goto_3
    if-ne p1, v0, :cond_8

    move-object v1, v0

    :cond_8
    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
