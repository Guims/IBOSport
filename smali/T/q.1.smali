.class public final LT/q;
.super LX4/g;

# interfaces
.implements Ld5/q;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILV4/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT/q;->q:I

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public constructor <init>(LT/I;LV4/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LT/q;->q:I

    iput-object p1, p0, LT/q;->s:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/q;->q:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LV/c;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, LV4/d;

    new-instance p2, LT/q;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p3}, LT/q;-><init>(ILV4/d;)V

    iput-object p1, p2, LT/q;->s:Ljava/lang/Object;

    sget-object p1, LS4/i;->a:LS4/i;

    invoke-virtual {p2, p1}, LT/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lp5/c;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, LV4/d;

    new-instance p1, LT/q;

    iget-object p2, p0, LT/q;->s:Ljava/lang/Object;

    check-cast p2, LT/I;

    invoke-direct {p1, p2, p3}, LT/q;-><init>(LT/I;LV4/d;)V

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LT/q;->q:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LT/q;->r:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/q;->s:Ljava/lang/Object;

    check-cast p1, LV/c;

    iput v1, p0, LT/q;->r:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, LV/c;->a(LV/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    iget v0, p0, LT/q;->r:I

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

    iget-object p1, p0, LT/q;->s:Ljava/lang/Object;

    check-cast p1, LT/I;

    iput v1, p0, LT/q;->r:I

    invoke-static {p1, p0}, LT/I;->b(LT/I;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v0, LS4/i;->a:LS4/i;

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
