.class public final Lk4/h;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lk4/m;

.field public final b:Lk4/m;


# direct methods
.method public constructor <init>(Lk4/m;Lk4/m;)V
    .locals 1

    const-string v0, "localOverrideSettings"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSettings"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/h;->a:Lk4/m;

    iput-object p2, p0, Lk4/h;->b:Lk4/m;

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 7

    iget-object v0, p0, Lk4/h;->a:Lk4/m;

    invoke-interface {v0}, Lk4/m;->d()Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v0, v1, v5

    if-gtz v0, :cond_0

    cmpg-double v0, v5, v3

    if-gtz v0, :cond_0

    return-wide v5

    :cond_0
    iget-object v0, p0, Lk4/h;->b:Lk4/m;

    invoke-interface {v0}, Lk4/m;->d()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v0, v1, v5

    if-gtz v0, :cond_1

    cmpg-double v0, v5, v3

    if-gtz v0, :cond_1

    return-wide v5

    :cond_1
    return-wide v3
.end method

.method public final b(LX4/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lk4/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lk4/g;

    iget v1, v0, Lk4/g;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lk4/g;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lk4/g;

    invoke-direct {v0, p0, p1}, Lk4/g;-><init>(Lk4/h;LX4/c;)V

    :goto_0
    iget-object p1, v0, Lk4/g;->q:Ljava/lang/Object;

    iget v1, v0, Lk4/g;->s:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v0, Lk4/g;->b:Lk4/h;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iput-object p0, v0, Lk4/g;->b:Lk4/h;

    iput v3, v0, Lk4/g;->s:I

    iget-object p1, p0, Lk4/h;->a:Lk4/m;

    invoke-interface {p1, v0}, Lk4/m;->b(LV4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_1
    iget-object p1, v1, Lk4/h;->b:Lk4/m;

    const/4 v1, 0x0

    iput-object v1, v0, Lk4/g;->b:Lk4/h;

    iput v2, v0, Lk4/g;->s:I

    invoke-interface {p1, v0}, Lk4/m;->b(LV4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_5

    :goto_2
    return-object v4

    :cond_5
    :goto_3
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
