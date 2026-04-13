.class public final Lp5/n;
.super Ljava/lang/Object;

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;

.field public final s:LX4/g;


# direct methods
.method public constructor <init>(Le5/j;Lp5/c;LT/p;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp5/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/n;->q:Ljava/lang/Object;

    iput-object p2, p0, Lp5/n;->r:Ljava/lang/Object;

    iput-object p3, p0, Lp5/n;->s:LX4/g;

    return-void
.end method

.method public constructor <init>(Lp5/c;LV4/i;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lp5/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp5/n;->q:Ljava/lang/Object;

    invoke-static {p2}, Lr5/a;->k(LV4/i;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lp5/n;->r:Ljava/lang/Object;

    new-instance p2, LT/d;

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p2, p1, v0, v1}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    iput-object p2, p0, Lp5/n;->s:LX4/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lp5/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp5/n;->q:Ljava/lang/Object;

    check-cast v0, LV4/i;

    iget-object v1, p0, Lp5/n;->s:LX4/g;

    check-cast v1, LT/d;

    iget-object v2, p0, Lp5/n;->r:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v1, p2}, Lq5/i;->a(LV4/i;Ljava/lang/Object;Ljava/lang/Object;Ld5/p;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LS4/i;->a:LS4/i;

    :goto_0
    return-object p1

    :pswitch_0
    instance-of v0, p2, Lp5/m;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lp5/m;

    iget v1, v0, Lp5/m;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/m;->t:I

    goto :goto_1

    :cond_1
    new-instance v0, Lp5/m;

    invoke-direct {v0, p0, p2}, Lp5/m;-><init>(Lp5/n;LV4/d;)V

    :goto_1
    iget-object p2, v0, Lp5/m;->r:Ljava/lang/Object;

    iget v1, v0, Lp5/m;->t:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    sget-object v4, LS4/i;->a:LS4/i;

    const/4 v5, 0x1

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, v0, Lp5/m;->q:Ljava/lang/Object;

    iget-object v1, v0, Lp5/m;->b:Lp5/n;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p0, Lp5/n;->q:Ljava/lang/Object;

    check-cast p2, Le5/j;

    iget-boolean p2, p2, Le5/j;->b:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lp5/n;->r:Ljava/lang/Object;

    check-cast p2, Lp5/c;

    iput v5, v0, Lp5/m;->t:I

    invoke-interface {p2, p1, v0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_8

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lp5/n;->s:LX4/g;

    check-cast p2, LT/p;

    iput-object p0, v0, Lp5/m;->b:Lp5/n;

    iput-object p1, v0, Lp5/m;->q:Ljava/lang/Object;

    iput v3, v0, Lp5/m;->t:I

    invoke-virtual {p2, p1, v0}, LT/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, p0

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, v1, Lp5/n;->q:Ljava/lang/Object;

    check-cast p2, Le5/j;

    iput-boolean v5, p2, Le5/j;->b:Z

    iget-object p2, v1, Lp5/n;->r:Ljava/lang/Object;

    check-cast p2, Lp5/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lp5/m;->b:Lp5/n;

    iput-object v1, v0, Lp5/m;->q:Ljava/lang/Object;

    iput v2, v0, Lp5/m;->t:I

    invoke-interface {p2, p1, v0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_8

    :goto_3
    move-object v4, v6

    :cond_8
    :goto_4
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
