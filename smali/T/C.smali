.class public final LT/C;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public synthetic s:Z

.field public final synthetic t:LT/I;

.field public final synthetic u:I

.field public v:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LT/I;ILV4/d;I)V
    .locals 0

    iput p4, p0, LT/C;->q:I

    iput-object p1, p0, LT/C;->t:LT/I;

    iput p2, p0, LT/C;->u:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 4

    iget v0, p0, LT/C;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LT/C;

    iget v1, p0, LT/C;->u:I

    const/4 v2, 0x1

    iget-object v3, p0, LT/C;->t:LT/I;

    invoke-direct {v0, v3, v1, p2, v2}, LT/C;-><init>(LT/I;ILV4/d;I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, LT/C;->s:Z

    return-object v0

    :pswitch_0
    new-instance v0, LT/C;

    iget v1, p0, LT/C;->u:I

    const/4 v2, 0x0

    iget-object v3, p0, LT/C;->t:LT/I;

    invoke-direct {v0, v3, v1, p2, v2}, LT/C;-><init>(LT/I;ILV4/d;I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, LT/C;->s:Z

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/C;->q:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, LV4/d;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, LT/C;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/C;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, LT/C;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/C;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LT/C;->q:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LT/C;->r:I

    iget-object v1, p0, LT/C;->t:LT/I;

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LT/C;->v:Ljava/lang/Object;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v0, p0, LT/C;->s:Z

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-boolean v0, p0, LT/C;->s:Z

    iput-boolean v0, p0, LT/C;->s:Z

    iput v3, p0, LT/C;->r:I

    invoke-virtual {v1, p0}, LT/I;->i(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_3

    goto :goto_4

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v1}, LT/I;->g()LT/S;

    move-result-object v0

    iput-object p1, p0, LT/C;->v:Ljava/lang/Object;

    iput v2, p0, LT/C;->r:I

    invoke-virtual {v0}, LT/S;->a()Ljava/lang/Integer;

    move-result-object v0

    if-ne v0, v4, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_2

    :cond_5
    iget v0, p0, LT/C;->u:I

    move v5, v0

    move-object v0, p1

    move p1, v5

    :goto_2
    new-instance v4, LT/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-direct {v4, v1, p1, v0}, LT/c;-><init>(IILjava/lang/Object;)V

    :goto_4
    return-object v4

    :pswitch_0
    iget v0, p0, LT/C;->r:I

    iget-object v1, p0, LT/C;->t:LT/I;

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, LT/C;->s:Z

    iget-object v1, p0, LT/C;->v:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-boolean v0, p0, LT/C;->s:Z

    :try_start_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_9
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-boolean v0, p0, LT/C;->s:Z

    :try_start_1
    iput-boolean v0, p0, LT/C;->s:Z

    iput v3, p0, LT/C;->r:I

    invoke-static {v1, v0, p0}, LT/I;->f(LT/I;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_a

    goto :goto_a

    :cond_a
    :goto_5
    check-cast p1, LT/T;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {v1}, LT/I;->g()LT/S;

    move-result-object v1

    iput-object p1, p0, LT/C;->v:Ljava/lang/Object;

    iput-boolean v0, p0, LT/C;->s:Z

    iput v2, p0, LT/C;->r:I

    invoke-virtual {v1}, LT/S;->a()Ljava/lang/Integer;

    move-result-object v1

    if-ne v1, v4, :cond_b

    goto :goto_a

    :cond_b
    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    :goto_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_8

    :cond_c
    iget v1, p0, LT/C;->u:I

    move v5, v1

    move-object v1, p1

    move p1, v5

    :goto_8
    new-instance v2, LT/L;

    invoke-direct {v2, v1, p1}, LT/L;-><init>(Ljava/lang/Throwable;I)V

    move-object p1, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v4, LS4/d;

    invoke-direct {v4, p1, v0}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
