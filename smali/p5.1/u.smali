.class public abstract Lp5/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:LE1/a;

.field public static final b:LE1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE1/a;

    const-string v1, "NONE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp5/u;->a:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp5/u;->b:LE1/a;

    return-void
.end method

.method public static final a(Lp5/w;LT/q;Ljava/lang/Throwable;LX4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lp5/e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lp5/e;

    iget v1, v0, Lp5/e;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/e;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp5/e;

    invoke-direct {v0, p3}, LX4/c;-><init>(LV4/d;)V

    :goto_0
    iget-object p3, v0, Lp5/e;->q:Ljava/lang/Object;

    iget v1, v0, Lp5/e;->r:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p2, v0, Lp5/e;->b:Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_1
    iput-object p2, v0, Lp5/e;->b:Ljava/lang/Throwable;

    iput v2, v0, Lp5/e;->r:I

    invoke-virtual {p1, p0, p2, v0}, LT/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, LW4/a;->b:LW4/a;

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    sget-object p0, LS4/i;->a:LS4/i;

    return-object p0

    :goto_2
    if-eqz p2, :cond_4

    if-eq p2, p0, :cond_4

    invoke-static {p0, p2}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    throw p0
.end method

.method public static final b(Lp5/b;Lp5/c;LX4/c;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p2, Lp5/j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lp5/j;

    iget v1, v0, Lp5/j;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/j;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp5/j;

    invoke-direct {v0, p2}, LX4/c;-><init>(LV4/d;)V

    :goto_0
    iget-object p2, v0, Lp5/j;->q:Ljava/lang/Object;

    iget v1, v0, Lp5/j;->r:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lp5/j;->b:Le5/m;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    new-instance p2, Le5/m;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :try_start_1
    new-instance v1, Lp5/l;

    invoke-direct {v1, p1, p2}, Lp5/l;-><init>(Lp5/c;Le5/m;)V

    iput-object p2, v0, Lp5/j;->b:Le5/m;

    iput v2, v0, Lp5/j;->r:I

    invoke-interface {p0, v1, v0}, Lp5/b;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p1, LW4/a;->b:LW4/a;

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    iget-object p0, p0, Le5/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_4
    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object p2

    sget-object v0, Lm5/t;->q:Lm5/t;

    invoke-interface {p2, v0}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object p2

    check-cast p2, Lm5/Q;

    if-eqz p2, :cond_7

    check-cast p2, Lm5/a0;

    invoke-virtual {p2}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/n;

    if-nez v1, :cond_5

    instance-of v1, v0, Lm5/Y;

    if-eqz v1, :cond_7

    check-cast v0, Lm5/Y;

    invoke-virtual {v0}, Lm5/Y;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    invoke-virtual {p2}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    throw p1

    :cond_7
    :goto_3
    if-nez p0, :cond_8

    return-object p1

    :cond_8
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_9

    invoke-static {p0, p1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    invoke-static {p1, p0}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final c(Lp5/c;Lo5/m;ZLX4/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lp5/d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lp5/d;

    iget v1, v0, Lp5/d;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/d;->u:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp5/d;

    invoke-direct {v0, p3}, LX4/c;-><init>(LV4/d;)V

    :goto_0
    iget-object p3, v0, Lp5/d;->t:Ljava/lang/Object;

    iget v1, v0, Lp5/d;->u:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_2

    iget-boolean p2, v0, Lp5/d;->s:Z

    iget-object p0, v0, Lp5/d;->r:Lo5/a;

    iget-object p1, v0, Lp5/d;->q:Lo5/o;

    iget-object v1, v0, Lp5/d;->b:Lp5/c;

    :try_start_0
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, Lp5/d;->s:Z

    iget-object p0, v0, Lp5/d;->r:Lo5/a;

    iget-object p1, v0, Lp5/d;->q:Lo5/o;

    iget-object v1, v0, Lp5/d;->b:Lp5/c;

    :try_start_1
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V

    instance-of p3, p0, Lp5/w;

    if-nez p3, :cond_d

    :try_start_2
    iget-object p3, p1, Lo5/m;->s:Lo5/b;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lo5/a;

    invoke-direct {v1, p3}, Lo5/a;-><init>(Lo5/b;)V

    :goto_1
    iput-object p0, v0, Lp5/d;->b:Lp5/c;

    iput-object p1, v0, Lp5/d;->q:Lo5/o;

    iput-object v1, v0, Lp5/d;->r:Lo5/a;

    iput-boolean p2, v0, Lp5/d;->s:Z

    iput v4, v0, Lp5/d;->u:I

    invoke-virtual {v1, v0}, Lo5/a;->b(Lp5/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lo5/a;->b:Ljava/lang/Object;

    sget-object v6, Lo5/d;->p:LE1/a;

    if-eq p3, v6, :cond_7

    iput-object v6, p0, Lo5/a;->b:Ljava/lang/Object;

    sget-object v6, Lo5/d;->l:LE1/a;

    if-eq p3, v6, :cond_6

    iput-object v1, v0, Lp5/d;->b:Lp5/c;

    iput-object p1, v0, Lp5/d;->q:Lo5/o;

    iput-object p0, v0, Lp5/d;->r:Lo5/a;

    iput-boolean p2, v0, Lp5/d;->s:Z

    iput v3, v0, Lp5/d;->u:I

    invoke-interface {v1, p3, v0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v5, :cond_1

    :goto_3
    return-object v5

    :cond_6
    iget-object p0, p0, Lo5/a;->r:Lo5/b;

    invoke-virtual {p0}, Lo5/b;->o()Ljava/lang/Throwable;

    move-result-object p0

    sget p3, Lr5/u;->a:I

    throw p0

    :cond_7
    const-string p0, "`hasNext()` has not been invoked"

    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {p1, v2}, Lo5/o;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_9
    sget-object p0, LS4/i;->a:LS4/i;

    return-object p0

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_c

    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_a

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_a
    if-nez v2, :cond_b

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string p2, "Channel was consumed, consumer had failed"

    invoke-direct {v2, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_b
    invoke-interface {p1, v2}, Lo5/o;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_c
    throw p3

    :cond_d
    check-cast p0, Lp5/w;

    iget-object p0, p0, Lp5/w;->b:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final d(Lp5/b;LX4/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lp5/r;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp5/r;

    iget v1, v0, Lp5/r;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp5/r;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp5/r;

    invoke-direct {v0, p1}, LX4/c;-><init>(LV4/d;)V

    :goto_0
    iget-object p1, v0, Lp5/r;->r:Ljava/lang/Object;

    iget v1, v0, Lp5/r;->s:I

    sget-object v2, Lq5/i;->a:LE1/a;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p0, v0, Lp5/r;->q:LT/y;

    iget-object v0, v0, Lp5/r;->b:Le5/m;

    :try_start_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq5/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    new-instance p1, Le5/m;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v2, p1, Le5/m;->b:Ljava/lang/Object;

    new-instance v1, LT/y;

    const/4 v4, 0x2

    invoke-direct {v1, v4, p1}, LT/y;-><init>(ILjava/lang/Object;)V

    :try_start_1
    iput-object p1, v0, Lp5/r;->b:Le5/m;

    iput-object v1, v0, Lp5/r;->q:LT/y;

    iput v3, v0, Lp5/r;->s:I

    invoke-interface {p0, v1, v0}, Lp5/b;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lq5/a; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    :goto_1
    iget-object v1, p1, Lq5/a;->b:Lp5/c;

    if-ne v1, p0, :cond_5

    :goto_2
    iget-object p0, v0, Le5/m;->b:Ljava/lang/Object;

    if-eq p0, v2, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    throw p1
.end method
