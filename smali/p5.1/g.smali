.class public final Lp5/g;
.super Ljava/lang/Object;

# interfaces
.implements Lp5/b;


# instance fields
.field public final synthetic b:LL2/o;

.field public final synthetic q:LT/q;


# direct methods
.method public constructor <init>(LL2/o;LT/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/g;->b:LL2/o;

    iput-object p2, p0, Lp5/g;->q:LT/q;

    return-void
.end method


# virtual methods
.method public final h(Lp5/c;LX4/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lp5/f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lp5/f;

    iget v1, v0, Lp5/f;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/f;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp5/f;

    invoke-direct {v0, p0, p2}, Lp5/f;-><init>(Lp5/g;LX4/c;)V

    :goto_0
    iget-object p2, v0, Lp5/f;->b:Ljava/lang/Object;

    iget v1, v0, Lp5/f;->q:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lp5/f;->s:Ljava/lang/Object;

    check-cast p1, Lq5/k;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lp5/f;->s:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_6

    :cond_3
    iget-object p1, v0, Lp5/f;->t:Lp5/c;

    iget-object v1, v0, Lp5/f;->s:Ljava/lang/Object;

    check-cast v1, Lp5/g;

    :try_start_1
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Lp5/g;->b:LL2/o;

    iput-object p0, v0, Lp5/f;->s:Ljava/lang/Object;

    iput-object p1, v0, Lp5/f;->t:Lp5/c;

    iput v4, v0, Lp5/f;->q:I

    invoke-virtual {p2, p1, v0}, LL2/o;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p2, v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, p0

    :goto_1
    new-instance p2, Lq5/k;

    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object v3

    invoke-direct {p2, p1, v3}, Lq5/k;-><init>(Lp5/c;LV4/i;)V

    :try_start_3
    iget-object p1, v1, Lp5/g;->q:LT/q;

    iput-object p2, v0, Lp5/f;->s:Ljava/lang/Object;

    iput-object v5, v0, Lp5/f;->t:Lp5/c;

    iput v2, v0, Lp5/f;->q:I

    invoke-virtual {p1, p2, v5, v0}, LT/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v6, :cond_6

    goto :goto_5

    :cond_6
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, LX4/c;->releaseIntercepted()V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_3
    invoke-virtual {p1}, LX4/c;->releaseIntercepted()V

    throw p2

    :catchall_3
    move-exception p1

    move-object v1, p0

    :goto_4
    new-instance p2, Lp5/w;

    invoke-direct {p2, p1}, Lp5/w;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, v1, Lp5/g;->q:LT/q;

    iput-object p1, v0, Lp5/f;->s:Ljava/lang/Object;

    iput-object v5, v0, Lp5/f;->t:Lp5/c;

    iput v3, v0, Lp5/f;->q:I

    invoke-static {p2, v1, p1, v0}, Lp5/u;->a(Lp5/w;LT/q;Ljava/lang/Throwable;LX4/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_7

    :goto_5
    return-object v6

    :cond_7
    :goto_6
    throw p1
.end method
