.class public final LT/n;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public final synthetic s:LT/I;


# direct methods
.method public synthetic constructor <init>(LT/I;LV4/d;I)V
    .locals 0

    iput p3, p0, LT/n;->q:I

    iput-object p1, p0, LT/n;->s:LT/I;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 2

    iget p1, p0, LT/n;->q:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, LT/n;

    iget-object v0, p0, LT/n;->s:LT/I;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p2, v1}, LT/n;-><init>(LT/I;LV4/d;I)V

    return-object p1

    :pswitch_0
    new-instance p1, LT/n;

    iget-object v0, p0, LT/n;->s:LT/I;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, LT/n;-><init>(LT/I;LV4/d;I)V

    return-object p1

    :pswitch_1
    new-instance p1, LT/n;

    iget-object v0, p0, LT/n;->s:LT/I;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, LT/n;-><init>(LT/I;LV4/d;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/n;->q:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/n;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/n;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/n;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/n;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lp5/c;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/n;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/n;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LT/n;->q:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/n;->s:LT/I;

    iget-object v1, v0, LT/I;->h:LL2/o;

    iget v2, p0, LT/n;->r:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, LW4/a;->b:LW4/a;

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

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

    goto :goto_2

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    invoke-virtual {v1}, LL2/o;->q()LT/T;

    move-result-object p1

    instance-of p1, p1, LT/J;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, LL2/o;->q()LT/T;

    move-result-object v5

    goto :goto_3

    :cond_3
    :try_start_1
    iput v4, p0, LT/n;->r:I

    invoke-virtual {v0, p0}, LT/I;->h(LX4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    iput v3, p0, LT/n;->r:I

    const/4 p1, 0x0

    invoke-static {v0, p1, p0}, LT/I;->e(LT/I;ZLV4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    move-object v5, p1

    check-cast v5, LT/T;

    goto :goto_3

    :goto_2
    new-instance v5, LT/L;

    const/4 v0, -0x1

    invoke-direct {v5, p1, v0}, LT/L;-><init>(Ljava/lang/Throwable;I)V

    :goto_3
    return-object v5

    :pswitch_0
    iget v0, p0, LT/n;->r:I

    sget-object v1, LS4/i;->a:LS4/i;

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, LT/n;->s:LT/I;

    sget-object v5, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_8

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, v4, LT/I;->i:LK1/c;

    iput v3, p0, LT/n;->r:I

    iget-object p1, p1, LK1/c;->r:Ljava/lang/Object;

    check-cast p1, Lm5/l;

    invoke-virtual {p1, p0}, Lm5/l;->Q(LX4/g;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_9

    goto :goto_4

    :cond_9
    move-object p1, v1

    :goto_4
    if-ne p1, v5, :cond_a

    goto :goto_7

    :cond_a
    :goto_5
    invoke-virtual {v4}, LT/I;->g()LT/S;

    move-result-object p1

    iget-object p1, p1, LT/S;->c:Lcom/bumptech/glide/f;

    instance-of v0, p1, Lq5/g;

    sget-object v3, LV4/j;->b:LV4/j;

    const/4 v6, 0x0

    if-eqz v0, :cond_b

    check-cast p1, Lq5/g;

    invoke-interface {p1, v3, v6, v2}, Lq5/g;->B(LV4/i;II)Lp5/b;

    move-result-object p1

    goto :goto_6

    :cond_b
    new-instance v0, Lq5/e;

    invoke-direct {v0, p1, v3, v6, v2}, Lq5/e;-><init>(Lp5/b;LV4/i;II)V

    move-object p1, v0

    :goto_6
    new-instance v0, LT/y;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4}, LT/y;-><init>(ILjava/lang/Object;)V

    iput v2, p0, LT/n;->r:I

    invoke-interface {p1, v0, p0}, Lp5/b;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_c

    :goto_7
    move-object v1, v5

    :cond_c
    :goto_8
    return-object v1

    :pswitch_1
    iget v0, p0, LT/n;->r:I

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    if-ne v0, v1, :cond_d

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iput v1, p0, LT/n;->r:I

    iget-object p1, p0, LT/n;->s:LT/I;

    invoke-static {p1, p0}, LT/I;->d(LT/I;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_f

    goto :goto_a

    :cond_f
    :goto_9
    sget-object v0, LS4/i;->a:LS4/i;

    :goto_a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
