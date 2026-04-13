.class public final LT/p;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LV4/d;I)V
    .locals 0

    iput p3, p0, LT/p;->q:I

    iput-object p1, p0, LT/p;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 3

    iget v0, p0, LT/p;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LT/p;

    iget-object v1, p0, LT/p;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, LT/p;-><init>(Ljava/lang/Object;LV4/d;I)V

    iput-object p1, v0, LT/p;->r:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, LT/p;

    iget-object v1, p0, LT/p;->s:Ljava/lang/Object;

    check-cast v1, LT/T;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, LT/p;-><init>(Ljava/lang/Object;LV4/d;I)V

    iput-object p1, v0, LT/p;->r:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/p;->q:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LX/b;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/p;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/p;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :pswitch_0
    check-cast p1, LT/T;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/p;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/p;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LT/p;->q:I

    iget-object v1, p0, LT/p;->s:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/p;->r:Ljava/lang/Object;

    check-cast p1, LX/b;

    sget-object v0, Lg4/s;->c:LX/g;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "key"

    invoke-static {v0, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :pswitch_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/p;->r:Ljava/lang/Object;

    check-cast p1, LT/T;

    instance-of v0, p1, LT/c;

    if-eqz v0, :cond_0

    iget p1, p1, LT/T;->a:I

    check-cast v1, LT/T;

    iget v0, v1, LT/T;->a:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
