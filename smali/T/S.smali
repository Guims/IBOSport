.class public final LT/S;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lu5/d;

.field public final b:LL2/o;

.field public final c:Lcom/bumptech/glide/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lu5/e;->a()Lu5/d;

    move-result-object p1

    iput-object p1, p0, LT/S;->a:Lu5/d;

    new-instance p1, LL2/o;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, LL2/o;-><init>(I)V

    iput-object p1, p0, LT/S;->b:LL2/o;

    new-instance p1, LT/Q;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LX4/g;-><init>(ILV4/d;)V

    new-instance v0, Lcom/bumptech/glide/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/f;-><init>(Ld5/p;)V

    iput-object v0, p0, LT/S;->c:Lcom/bumptech/glide/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, LT/S;->b:LL2/o;

    iget-object v0, v0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public final b(Ld5/l;LX4/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, LT/O;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LT/O;

    iget v1, v0, LT/O;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/O;->t:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/O;

    invoke-direct {v0, p0, p2}, LT/O;-><init>(LT/S;LX4/c;)V

    :goto_0
    iget-object p2, v0, LT/O;->r:Ljava/lang/Object;

    iget v1, v0, LT/O;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, LT/O;->b:Ljava/lang/Object;

    check-cast p1, Lu5/a;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LT/O;->q:Lu5/d;

    iget-object v1, v0, LT/O;->b:Ljava/lang/Object;

    check-cast v1, Ld5/l;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_1

    :cond_3
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iput-object p1, v0, LT/O;->b:Ljava/lang/Object;

    iget-object p2, p0, LT/S;->a:Lu5/d;

    iput-object p2, v0, LT/O;->q:Lu5/d;

    iput v3, v0, LT/O;->t:I

    invoke-virtual {p2, v0}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_1
    iput-object p2, v0, LT/O;->b:Ljava/lang/Object;

    iput-object v4, v0, LT/O;->q:Lu5/d;

    iput v2, v0, LT/O;->t:I

    invoke-interface {p1, v0}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v5, :cond_5

    :goto_2
    return-object v5

    :cond_5
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_3
    check-cast p1, Lu5/d;

    invoke-virtual {p1, v4}, Lu5/d;->f(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_4
    check-cast p1, Lu5/d;

    invoke-virtual {p1, v4}, Lu5/d;->f(Ljava/lang/Object;)V

    throw p2
.end method

.method public final c(Ld5/p;LX4/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, LT/P;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LT/P;

    iget v1, v0, LT/P;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/P;->t:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/P;

    invoke-direct {v0, p0, p2}, LT/P;-><init>(LT/S;LX4/c;)V

    :goto_0
    iget-object p2, v0, LT/P;->r:Ljava/lang/Object;

    iget v1, v0, LT/P;->t:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-boolean p1, v0, LT/P;->q:Z

    iget-object v0, v0, LT/P;->b:Lu5/d;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p0, LT/S;->a:Lu5/d;

    invoke-virtual {p2}, Lu5/d;->e()Z

    move-result v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object p2, v0, LT/P;->b:Lu5/d;

    iput-boolean v1, v0, LT/P;->q:Z

    iput v2, v0, LT/P;->t:I

    invoke-interface {p1, v4, v0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p2

    move-object p2, p1

    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {v0, v3}, Lu5/d;->f(Ljava/lang/Object;)V

    :cond_4
    return-object p2

    :catchall_1
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move p1, v1

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {v0, v3}, Lu5/d;->f(Ljava/lang/Object;)V

    :cond_5
    throw p2
.end method
