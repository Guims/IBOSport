.class public final LT/E;
.super LX4/g;

# interfaces
.implements Ld5/l;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public final synthetic s:LT/I;

.field public t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(LT/I;LV4/i;Ld5/p;LV4/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT/E;->q:I

    iput-object p1, p0, LT/E;->s:LT/I;

    iput-object p2, p0, LT/E;->u:Ljava/lang/Object;

    check-cast p3, LX4/g;

    iput-object p3, p0, LT/E;->v:Ljava/io/Serializable;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public constructor <init>(Le5/m;LT/I;Le5/k;LV4/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LT/E;->q:I

    iput-object p1, p0, LT/E;->u:Ljava/lang/Object;

    iput-object p2, p0, LT/E;->s:LT/I;

    iput-object p3, p0, LT/E;->v:Ljava/io/Serializable;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(LV4/d;)LV4/d;
    .locals 4

    iget v0, p0, LT/E;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LT/E;

    iget-object v1, p0, LT/E;->u:Ljava/lang/Object;

    check-cast v1, LV4/i;

    iget-object v2, p0, LT/E;->v:Ljava/io/Serializable;

    check-cast v2, LX4/g;

    iget-object v3, p0, LT/E;->s:LT/I;

    invoke-direct {v0, v3, v1, v2, p1}, LT/E;-><init>(LT/I;LV4/i;Ld5/p;LV4/d;)V

    return-object v0

    :pswitch_0
    new-instance v0, LT/E;

    iget-object v1, p0, LT/E;->u:Ljava/lang/Object;

    check-cast v1, Le5/m;

    iget-object v2, p0, LT/E;->v:Ljava/io/Serializable;

    check-cast v2, Le5/k;

    iget-object v3, p0, LT/E;->s:LT/I;

    invoke-direct {v0, v1, v3, v2, p1}, LT/E;-><init>(Le5/m;LT/I;Le5/k;LV4/d;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/E;->q:I

    check-cast p1, LV4/d;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, LT/E;->create(LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/E;

    sget-object v0, LS4/i;->a:LS4/i;

    invoke-virtual {p1, v0}, LT/E;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1}, LT/E;->create(LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/E;

    sget-object v0, LS4/i;->a:LS4/i;

    invoke-virtual {p1, v0}, LT/E;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LT/E;->q:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LT/E;->r:I

    iget-object v1, p0, LT/E;->s:LT/I;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v5, p0, LT/E;->t:Ljava/lang/Object;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LT/E;->t:Ljava/lang/Object;

    check-cast v0, LT/c;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iput v4, p0, LT/E;->r:I

    invoke-static {v1, v4, p0}, LT/I;->f(LT/I;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    move-object v0, p1

    check-cast v0, LT/c;

    iget-object p1, p0, LT/E;->u:Ljava/lang/Object;

    check-cast p1, LV4/i;

    new-instance v6, LT/d;

    iget-object v7, p0, LT/E;->v:Ljava/io/Serializable;

    check-cast v7, LX4/g;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v0, v8}, LT/d;-><init>(Ld5/p;LT/c;LV4/d;)V

    iput-object v0, p0, LT/E;->t:Ljava/lang/Object;

    iput v3, p0, LT/E;->r:I

    invoke-static {p1, v6, p0}, Lm5/w;->m(LV4/i;Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v3, v0, LT/c;->b:Ljava/lang/Object;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iget v6, v0, LT/c;->c:I

    if-ne v3, v6, :cond_8

    iget-object v0, v0, LT/c;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object p1, p0, LT/E;->t:Ljava/lang/Object;

    iput v2, p0, LT/E;->r:I

    invoke-virtual {v1, p1, v4, p0}, LT/I;->j(Ljava/lang/Object;ZLX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, p1

    :goto_3
    return-object v5

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, LT/E;->v:Ljava/io/Serializable;

    check-cast v0, Le5/k;

    iget-object v1, p0, LT/E;->u:Ljava/lang/Object;

    check-cast v1, Le5/m;

    iget v2, p0, LT/E;->r:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p0, LT/E;->s:LT/I;

    const/4 v6, 0x1

    sget-object v7, LW4/a;->b:LW4/a;

    if-eqz v2, :cond_c

    if-eq v2, v6, :cond_b

    if-eq v2, v4, :cond_a

    if-ne v2, v3, :cond_9

    iget-object v0, p0, LT/E;->t:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Le5/k;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v2, p0, LT/E;->t:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    check-cast v2, Le5/k;

    :try_start_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catch LT/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_b
    iget-object v2, p0, LT/E;->t:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    check-cast v2, Le5/m;

    :try_start_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catch LT/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_c
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_2
    iput-object v1, p0, LT/E;->t:Ljava/lang/Object;

    iput v6, p0, LT/E;->r:I

    invoke-virtual {v5, p0}, LT/I;->i(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_d

    goto :goto_8

    :cond_d
    move-object v2, v1

    :goto_4
    iput-object p1, v2, Le5/m;->b:Ljava/lang/Object;

    invoke-virtual {v5}, LT/I;->g()LT/S;

    move-result-object p1

    iput-object v0, p0, LT/E;->t:Ljava/lang/Object;

    iput v4, p0, LT/E;->r:I

    invoke-virtual {p1}, LT/S;->a()Ljava/lang/Integer;

    move-result-object p1

    if-ne p1, v7, :cond_e

    goto :goto_8

    :cond_e
    move-object v2, v0

    :goto_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v2, Le5/k;->b:I
    :try_end_2
    .catch LT/b; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    iget-object p1, v1, Le5/m;->b:Ljava/lang/Object;

    iput-object v0, p0, LT/E;->t:Ljava/lang/Object;

    iput v3, p0, LT/E;->r:I

    invoke-virtual {v5, p1, v6, p0}, LT/I;->j(Ljava/lang/Object;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_f

    goto :goto_8

    :cond_f
    :goto_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Le5/k;->b:I

    :goto_7
    sget-object v7, LS4/i;->a:LS4/i;

    :goto_8
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
