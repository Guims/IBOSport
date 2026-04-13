.class public final LT/s;
.super Ljava/lang/Object;

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lp5/c;


# direct methods
.method public constructor <init>(Lp5/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LT/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/s;->q:Lp5/c;

    return-void
.end method

.method public constructor <init>(Lp5/c;Lg4/E;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, LT/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/s;->q:Lp5/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LT/s;->b:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lg4/D;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg4/D;

    iget v1, v0, Lg4/D;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg4/D;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg4/D;

    invoke-direct {v0, p0, p2}, Lg4/D;-><init>(LT/s;LV4/d;)V

    :goto_0
    iget-object p2, v0, Lg4/D;->b:Ljava/lang/Object;

    iget v1, v0, Lg4/D;->q:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    check-cast p1, LX/b;

    new-instance p2, Lg4/u;

    sget-object v1, Lg4/s;->c:LX/g;

    invoke-virtual {p1, v1}, LX/b;->c(LX/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Lg4/u;-><init>(Ljava/lang/String;)V

    iput v2, v0, Lg4/D;->q:I

    iget-object p1, p0, LT/s;->q:Lp5/c;

    invoke-interface {p1, p2, v0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, LS4/i;->a:LS4/i;

    :goto_2
    return-object p2

    :pswitch_0
    instance-of v0, p2, LT/r;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, LT/r;

    iget v1, v0, LT/r;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, LT/r;->q:I

    goto :goto_3

    :cond_4
    new-instance v0, LT/r;

    invoke-direct {v0, p0, p2}, LT/r;-><init>(LT/s;LV4/d;)V

    :goto_3
    iget-object p2, v0, LT/r;->b:Ljava/lang/Object;

    iget v1, v0, LT/r;->q:I

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    if-ne v1, v2, :cond_5

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    check-cast p1, LT/T;

    instance-of p2, p1, LT/L;

    if-nez p2, :cond_b

    instance-of p2, p1, LT/c;

    if-eqz p2, :cond_8

    check-cast p1, LT/c;

    iget-object p1, p1, LT/c;->b:Ljava/lang/Object;

    iput v2, v0, LT/r;->q:I

    iget-object p2, p0, LT/s;->q:Lp5/c;

    invoke-interface {p2, p1, v0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    sget-object p2, LS4/i;->a:LS4/i;

    :goto_5
    return-object p2

    :cond_8
    instance-of p2, p1, LT/J;

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    instance-of v2, p1, LT/U;

    :goto_6
    if-eqz v2, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, LR1/G;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_b
    check-cast p1, LT/L;

    iget-object p1, p1, LT/L;->b:Ljava/lang/Throwable;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
