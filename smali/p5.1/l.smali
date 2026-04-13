.class public final Lp5/l;
.super Ljava/lang/Object;

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lp5/c;

.field public final synthetic r:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(LT/o;Lp5/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp5/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/l;->r:Ljava/io/Serializable;

    iput-object p2, p0, Lp5/l;->q:Lp5/c;

    return-void
.end method

.method public constructor <init>(Lp5/c;Le5/m;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp5/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/l;->q:Lp5/c;

    iput-object p2, p0, Lp5/l;->r:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lp5/l;->b:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lp5/q;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lp5/q;

    iget v1, v0, Lp5/q;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/q;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp5/q;

    invoke-direct {v0, p0, p2}, Lp5/q;-><init>(Lp5/l;LV4/d;)V

    :goto_0
    iget-object p2, v0, Lp5/q;->q:Ljava/lang/Object;

    iget v1, v0, Lp5/q;->r:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lp5/q;->b:Lp5/l;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lp5/q;->t:Ljava/lang/Object;

    iget-object v1, v0, Lp5/q;->b:Lp5/l;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v6

    goto :goto_1

    :cond_3
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p0, Lp5/l;->r:Ljava/io/Serializable;

    check-cast p2, LT/o;

    iput-object p0, v0, Lp5/q;->b:Lp5/l;

    iput-object p1, v0, Lp5/q;->t:Ljava/lang/Object;

    iput v3, v0, Lp5/q;->r:I

    invoke-virtual {p2, p1, v0}, LT/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p2

    move-object p2, p1

    move-object p1, p0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lp5/l;->q:Lp5/c;

    iput-object p1, v0, Lp5/q;->b:Lp5/l;

    const/4 v5, 0x0

    iput-object v5, v0, Lp5/q;->t:Ljava/lang/Object;

    iput v2, v0, Lp5/q;->r:I

    invoke-interface {v1, p2, v0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_6

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    sget-object v4, LS4/i;->a:LS4/i;

    :goto_3
    return-object v4

    :cond_7
    new-instance p2, Lq5/a;

    invoke-direct {p2, p1}, Lq5/a;-><init>(Lp5/c;)V

    throw p2

    :pswitch_0
    instance-of v0, p2, Lp5/k;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lp5/k;

    iget v1, v0, Lp5/k;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_8

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/k;->s:I

    goto :goto_4

    :cond_8
    new-instance v0, Lp5/k;

    invoke-direct {v0, p0, p2}, Lp5/k;-><init>(Lp5/l;LV4/d;)V

    :goto_4
    iget-object p2, v0, Lp5/k;->q:Ljava/lang/Object;

    iget v1, v0, Lp5/k;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    if-ne v1, v2, :cond_9

    iget-object p1, v0, Lp5/k;->b:Lp5/l;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lp5/l;->q:Lp5/c;

    iput-object p0, v0, Lp5/k;->b:Lp5/l;

    iput v2, v0, Lp5/k;->s:I

    invoke-interface {p2, p1, v0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    sget-object p2, LS4/i;->a:LS4/i;

    :goto_6
    return-object p2

    :catchall_1
    move-exception p2

    move-object p1, p0

    :goto_7
    iget-object p1, p1, Lp5/l;->r:Ljava/io/Serializable;

    check-cast p1, Le5/m;

    iput-object p2, p1, Le5/m;->b:Ljava/lang/Object;

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
