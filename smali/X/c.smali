.class public final LX/c;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:LX4/g;


# direct methods
.method public constructor <init>(Ld5/p;LV4/d;I)V
    .locals 0

    iput p3, p0, LX/c;->q:I

    packed-switch p3, :pswitch_data_0

    check-cast p1, LX4/g;

    iput-object p1, p0, LX/c;->t:LX4/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void

    :pswitch_0
    check-cast p1, LX4/g;

    iput-object p1, p0, LX/c;->t:LX4/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 3

    iget v0, p0, LX/c;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LX/c;

    iget-object v1, p0, LX/c;->t:LX4/g;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, LX/c;-><init>(Ld5/p;LV4/d;I)V

    iput-object p1, v0, LX/c;->s:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, LX/c;

    iget-object v1, p0, LX/c;->t:LX4/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, LX/c;-><init>(Ld5/p;LV4/d;I)V

    iput-object p1, v0, LX/c;->s:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LX/c;->q:I

    check-cast p1, LX/b;

    check-cast p2, LV4/d;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, LX/c;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LX/c;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LX/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, LX/c;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LX/c;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LX/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, LX/c;->q:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LX/c;->r:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LX/c;->s:Ljava/lang/Object;

    check-cast v0, LX/b;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LX/c;->s:Ljava/lang/Object;

    check-cast p1, LX/b;

    new-instance v0, LX/b;

    invoke-virtual {p1}, LX/b;->a()Ljava/util/Map;

    move-result-object p1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-direct {v0, v2, p1}, LX/b;-><init>(Ljava/util/LinkedHashMap;Z)V

    iput-object v0, p0, LX/c;->s:Ljava/lang/Object;

    iput v1, p0, LX/c;->r:I

    iget-object p1, p0, LX/c;->t:LX4/g;

    invoke-interface {p1, v0, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, LW4/a;->b:LW4/a;

    if-ne p1, v1, :cond_2

    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0

    :pswitch_0
    iget v0, p0, LX/c;->r:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LX/c;->s:Ljava/lang/Object;

    check-cast p1, LX/b;

    iput v1, p0, LX/c;->r:I

    iget-object v0, p0, LX/c;->t:LX4/g;

    invoke-interface {v0, p1, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-object v0, p1

    check-cast v0, LX/b;

    const-string p1, "null cannot be cast to non-null type androidx.datastore.preferences.core.MutablePreferences"

    invoke-static {v0, p1}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, LX/b;->b:LV/a;

    iget-object p1, p1, LV/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
