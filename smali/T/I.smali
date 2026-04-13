.class public final LT/I;
.super Ljava/lang/Object;

# interfaces
.implements LT/h;


# instance fields
.field public final a:LV/f;

.field public final b:LL2/o;

.field public final c:Lm5/u;

.field public final d:Lcom/bumptech/glide/f;

.field public final e:Lu5/d;

.field public f:I

.field public g:Lm5/f0;

.field public final h:LL2/o;

.field public final i:LK1/c;

.field public final j:LS4/g;

.field public final k:LS4/g;

.field public final l:LK1/c;


# direct methods
.method public constructor <init>(LV/f;Ljava/util/List;LL2/o;Lm5/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/I;->a:LV/f;

    iput-object p3, p0, LT/I;->b:LL2/o;

    iput-object p4, p0, LT/I;->c:Lm5/u;

    new-instance p1, LT/t;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, LT/t;-><init>(LT/I;LV4/d;)V

    new-instance v0, Lcom/bumptech/glide/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/f;-><init>(Ld5/p;)V

    iput-object v0, p0, LT/I;->d:Lcom/bumptech/glide/f;

    invoke-static {}, Lu5/e;->a()Lu5/d;

    move-result-object p1

    iput-object p1, p0, LT/I;->e:Lu5/d;

    new-instance p1, LL2/o;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, LL2/o;-><init>(I)V

    iput-object p1, p0, LT/I;->h:LL2/o;

    new-instance p1, LK1/c;

    invoke-direct {p1, p0, p2}, LK1/c;-><init>(LT/I;Ljava/util/List;)V

    iput-object p1, p0, LT/I;->i:LK1/c;

    new-instance p1, LT/m;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LT/m;-><init>(LT/I;I)V

    new-instance p2, LS4/g;

    invoke-direct {p2, p1}, LS4/g;-><init>(Ld5/a;)V

    iput-object p2, p0, LT/I;->j:LS4/g;

    new-instance p1, LT/m;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LT/m;-><init>(LT/I;I)V

    new-instance p2, LS4/g;

    invoke-direct {p2, p1}, LS4/g;-><init>(Ld5/a;)V

    iput-object p2, p0, LT/I;->k:LS4/g;

    new-instance p1, LK1/c;

    new-instance p2, LT/F;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, LT/F;-><init>(ILjava/lang/Object;)V

    new-instance v0, LT/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p3, v1}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    invoke-direct {p1, p4, p2, v0}, LK1/c;-><init>(Lm5/u;LT/F;LT/d;)V

    iput-object p1, p0, LT/I;->l:LK1/c;

    return-void
.end method

.method public static final b(LT/I;LX4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, LT/u;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LT/u;

    iget v1, v0, LT/u;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/u;->t:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/u;

    invoke-direct {v0, p0, p1}, LT/u;-><init>(LT/I;LX4/c;)V

    :goto_0
    iget-object p1, v0, LT/u;->r:Ljava/lang/Object;

    iget v1, v0, LT/u;->t:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, LT/u;->q:Lu5/d;

    iget-object v0, v0, LT/u;->b:LT/I;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/I;->e:Lu5/d;

    iput-object p0, v0, LT/u;->b:LT/I;

    iput-object p1, v0, LT/u;->q:Lu5/d;

    iput v2, v0, LT/u;->t:I

    invoke-virtual {p1, v0}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LW4/a;->b:LW4/a;

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, LT/I;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LT/I;->f:I

    if-nez v1, :cond_5

    iget-object v1, p0, LT/I;->g:Lm5/f0;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lm5/a0;->b(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    iput-object v0, p0, LT/I;->g:Lm5/f0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-virtual {p1, v0}, Lu5/d;->f(Ljava/lang/Object;)V

    sget-object p0, LS4/i;->a:LS4/i;

    return-object p0

    :goto_3
    invoke-virtual {p1, v0}, Lu5/d;->f(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final c(LT/I;LT/K;LX4/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, LT/w;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LT/w;

    iget v1, v0, LT/w;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/w;->u:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/w;

    invoke-direct {v0, p0, p2}, LT/w;-><init>(LT/I;LX4/c;)V

    :goto_0
    iget-object p2, v0, LT/w;->s:Ljava/lang/Object;

    iget v1, v0, LT/w;->u:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object p0, v0, LT/w;->b:Ljava/lang/Object;

    check-cast p0, Lm5/k;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, LT/w;->r:Lm5/l;

    iget-object p1, v0, LT/w;->q:LT/I;

    iget-object v1, v0, LT/w;->b:Ljava/lang/Object;

    check-cast v1, LT/K;

    :try_start_1
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p0

    move-object p0, p1

    move-object p1, v1

    goto :goto_4

    :cond_4
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p1, LT/K;->b:Lm5/l;

    :try_start_2
    iget-object v1, p0, LT/I;->h:LL2/o;

    invoke-virtual {v1}, LL2/o;->q()LT/T;

    move-result-object v1

    instance-of v7, v1, LT/c;

    if-eqz v7, :cond_6

    iget-object v1, p1, LT/K;->a:LX4/g;

    iget-object p1, p1, LT/K;->d:LV4/i;

    iput-object p2, v0, LT/w;->b:Ljava/lang/Object;

    iput v5, v0, LT/w;->u:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, LT/I;->g()LT/S;

    move-result-object v3

    new-instance v4, LT/E;

    invoke-direct {v4, p0, p1, v1, v2}, LT/E;-><init>(LT/I;LV4/i;Ld5/p;LV4/d;)V

    invoke-virtual {v3, v4, v0}, LT/S;->b(Ld5/l;LX4/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p0, v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v8, p2

    move-object p2, p0

    move-object p0, v8

    goto :goto_7

    :goto_1
    move-object p1, p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :goto_2
    move-object p0, p2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_2

    :cond_6
    :try_start_4
    instance-of v7, v1, LT/L;

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    instance-of v5, v1, LT/U;

    :goto_3
    if-eqz v5, :cond_a

    iget-object v5, p1, LT/K;->c:LT/T;

    if-ne v1, v5, :cond_9

    iput-object p1, v0, LT/w;->b:Ljava/lang/Object;

    iput-object p0, v0, LT/w;->q:LT/I;

    iput-object p2, v0, LT/w;->r:Lm5/l;

    iput v4, v0, LT/w;->u:I

    invoke-virtual {p0, v0}, LT/I;->h(LX4/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    iget-object v1, p1, LT/K;->a:LX4/g;

    iget-object p1, p1, LT/K;->d:LV4/i;

    iput-object p2, v0, LT/w;->b:Ljava/lang/Object;

    iput-object v2, v0, LT/w;->q:LT/I;

    iput-object v2, v0, LT/w;->r:Lm5/l;

    iput v3, v0, LT/w;->u:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p0}, LT/I;->g()LT/S;

    move-result-object v3

    new-instance v4, LT/E;

    invoke-direct {v4, p0, p1, v1, v2}, LT/E;-><init>(LT/I;LV4/i;Ld5/p;LV4/d;)V

    invoke-virtual {v3, v4, v0}, LT/S;->b(Ld5/l;LX4/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne p0, v6, :cond_5

    :goto_5
    return-object v6

    :catchall_3
    move-exception p0

    goto :goto_1

    :cond_9
    :try_start_6
    const-string p0, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$2>"

    invoke-static {v1, p0}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LT/L;

    iget-object p0, v1, LT/L;->b:Ljava/lang/Throwable;

    throw p0

    :cond_a
    instance-of p0, v1, LT/J;

    if-eqz p0, :cond_b

    check-cast v1, LT/J;

    iget-object p0, v1, LT/J;->b:Ljava/lang/Throwable;

    throw p0

    :cond_b
    new-instance p0, LR1/G;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    invoke-static {p1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p2

    :goto_7
    invoke-static {p2}, LS4/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p0, Lm5/l;

    if-nez p1, :cond_c

    invoke-virtual {p0, p2}, Lm5/a0;->G(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lm5/n;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, p2}, Lm5/a0;->G(Ljava/lang/Object;)Z

    :goto_8
    sget-object p0, LS4/i;->a:LS4/i;

    return-object p0
.end method

.method public static final d(LT/I;LX4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, LT/x;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LT/x;

    iget v1, v0, LT/x;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/x;->t:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/x;

    invoke-direct {v0, p0, p1}, LT/x;-><init>(LT/I;LX4/c;)V

    :goto_0
    iget-object p1, v0, LT/x;->r:Ljava/lang/Object;

    iget v1, v0, LT/x;->t:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, LT/x;->q:Lu5/d;

    iget-object v0, v0, LT/x;->b:LT/I;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/I;->e:Lu5/d;

    iput-object p0, v0, LT/x;->b:LT/I;

    iput-object p1, v0, LT/x;->q:Lu5/d;

    iput v2, v0, LT/x;->t:I

    invoke-virtual {p1, v0}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LW4/a;->b:LW4/a;

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, LT/I;->f:I

    add-int/2addr v1, v2

    iput v1, p0, LT/I;->f:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, LT/I;->c:Lm5/u;

    new-instance v2, LT/n;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, LT/n;-><init>(LT/I;LV4/d;I)V

    invoke-static {v1, v2}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    move-result-object v1

    iput-object v1, p0, LT/I;->g:Lm5/f0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Lu5/d;->f(Ljava/lang/Object;)V

    sget-object p0, LS4/i;->a:LS4/i;

    return-object p0

    :goto_3
    invoke-virtual {p1, v0}, Lu5/d;->f(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final e(LT/I;ZLV4/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, LT/A;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LT/A;

    iget v1, v0, LT/A;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/A;->u:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/A;

    invoke-direct {v0, p0, p2}, LT/A;-><init>(LT/I;LV4/d;)V

    :goto_0
    iget-object p2, v0, LT/A;->s:Ljava/lang/Object;

    iget v1, v0, LT/A;->u:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, LT/A;->b:LT/I;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, LT/A;->b:LT/I;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-boolean p1, v0, LT/A;->r:Z

    iget-object p0, v0, LT/A;->q:LT/T;

    iget-object v1, v0, LT/A;->b:LT/I;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p0, LT/I;->h:LL2/o;

    invoke-virtual {p2}, LL2/o;->q()LT/T;

    move-result-object p2

    instance-of v1, p2, LT/U;

    if-nez v1, :cond_c

    invoke-virtual {p0}, LT/I;->g()LT/S;

    move-result-object v1

    iput-object p0, v0, LT/A;->b:LT/I;

    iput-object p2, v0, LT/A;->q:LT/T;

    iput-boolean p1, v0, LT/A;->r:Z

    iput v4, v0, LT/A;->u:I

    invoke-virtual {v1}, LT/S;->a()Ljava/lang/Integer;

    move-result-object v1

    if-ne v1, v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v7, v1

    move-object v1, p0

    move-object p0, p2

    move-object p2, v7

    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    instance-of v4, p0, LT/c;

    if-eqz v4, :cond_6

    iget v6, p0, LT/T;->a:I

    goto :goto_2

    :cond_6
    const/4 v6, -0x1

    :goto_2
    if-eqz v4, :cond_7

    if-ne p2, v6, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {v1}, LT/I;->g()LT/S;

    move-result-object p1

    new-instance p2, LT/B;

    invoke-direct {p2, v1, p0}, LT/B;-><init>(LT/I;LV4/d;)V

    iput-object v1, v0, LT/A;->b:LT/I;

    iput-object p0, v0, LT/A;->q:LT/T;

    iput v3, v0, LT/A;->u:I

    invoke-virtual {p1, p2, v0}, LT/S;->b(Ld5/l;LX4/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v5, :cond_8

    goto :goto_4

    :cond_8
    move-object p0, v1

    :goto_3
    check-cast p2, LS4/d;

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, LT/I;->g()LT/S;

    move-result-object p1

    new-instance p2, LT/C;

    const/4 v3, 0x0

    invoke-direct {p2, v1, v6, p0, v3}, LT/C;-><init>(LT/I;ILV4/d;I)V

    iput-object v1, v0, LT/A;->b:LT/I;

    iput-object p0, v0, LT/A;->q:LT/T;

    iput v2, v0, LT/A;->u:I

    invoke-virtual {p1, p2, v0}, LT/S;->c(Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v5, :cond_a

    :goto_4
    return-object v5

    :cond_a
    move-object p0, v1

    :goto_5
    check-cast p2, LS4/d;

    :goto_6
    iget-object p1, p2, LS4/d;->b:Ljava/lang/Object;

    check-cast p1, LT/T;

    iget-object p2, p2, LS4/d;->q:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p0, LT/I;->h:LL2/o;

    invoke-virtual {p0, p1}, LL2/o;->F(LT/T;)V

    :cond_b
    return-object p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(LT/I;ZLX4/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, LT/D;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LT/D;

    iget v1, v0, LT/D;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/D;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/D;

    invoke-direct {v0, p0, p2}, LT/D;-><init>(LT/I;LX4/c;)V

    :goto_0
    iget-object p2, v0, LT/D;->v:Ljava/lang/Object;

    iget v1, v0, LT/D;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, LW4/a;->b:LW4/a;

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, LT/D;->r:Ljava/io/Serializable;

    check-cast p0, Le5/k;

    iget-object p1, v0, LT/D;->q:Ljava/lang/Object;

    check-cast p1, Le5/m;

    iget-object v0, v0, LT/D;->b:Ljava/lang/Object;

    check-cast v0, LT/b;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :pswitch_1
    iget-boolean p0, v0, LT/D;->t:Z

    iget-object p1, v0, LT/D;->s:Le5/m;

    iget-object v1, v0, LT/D;->r:Ljava/io/Serializable;

    check-cast v1, Le5/m;

    iget-object v5, v0, LT/D;->q:Ljava/lang/Object;

    check-cast v5, LT/b;

    iget-object v6, v0, LT/D;->b:Ljava/lang/Object;

    check-cast v6, LT/I;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget-boolean p1, v0, LT/D;->t:Z

    iget-object p0, v0, LT/D;->b:Ljava/lang/Object;

    check-cast p0, LT/I;

    :try_start_1
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catch LT/b; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p2

    goto/16 :goto_6

    :pswitch_3
    iget-boolean p1, v0, LT/D;->t:Z

    iget-object p0, v0, LT/D;->b:Ljava/lang/Object;

    check-cast p0, LT/I;

    :try_start_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_2
    .catch LT/b; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :pswitch_4
    iget p0, v0, LT/D;->u:I

    iget-boolean p1, v0, LT/D;->t:Z

    iget-object v1, v0, LT/D;->q:Ljava/lang/Object;

    iget-object v5, v0, LT/D;->b:Ljava/lang/Object;

    check-cast v5, LT/I;

    :try_start_3
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_3
    .catch LT/b; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p0, v5

    goto/16 :goto_6

    :pswitch_5
    iget-boolean p1, v0, LT/D;->t:Z

    iget-object p0, v0, LT/D;->b:Ljava/lang/Object;

    check-cast p0, LT/I;

    :try_start_4
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_4
    .catch LT/b; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    :try_start_5
    iput-object p0, v0, LT/D;->b:Ljava/lang/Object;

    iput-boolean p1, v0, LT/D;->t:Z

    const/4 p2, 0x1

    iput p2, v0, LT/D;->x:I

    invoke-virtual {p0, v0}, LT/I;->i(LX4/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_1

    goto/16 :goto_a

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0}, LT/I;->g()LT/S;

    move-result-object v5

    iput-object p0, v0, LT/D;->b:Ljava/lang/Object;

    iput-object p2, v0, LT/D;->q:Ljava/lang/Object;

    iput-boolean p1, v0, LT/D;->t:Z

    iput v1, v0, LT/D;->u:I

    const/4 v6, 0x2

    iput v6, v0, LT/D;->x:I

    invoke-virtual {v5}, LT/S;->a()Ljava/lang/Integer;

    move-result-object v5
    :try_end_5
    .catch LT/b; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v5, v4, :cond_3

    goto/16 :goto_a

    :cond_3
    move-object v8, v5

    move-object v5, p0

    move p0, v1

    move-object v1, p2

    move-object p2, v8

    :goto_3
    :try_start_6
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    new-instance v6, LT/c;

    invoke-direct {v6, p0, p2, v1}, LT/c;-><init>(IILjava/lang/Object;)V
    :try_end_6
    .catch LT/b; {:try_start_6 .. :try_end_6} :catch_1

    return-object v6

    :cond_4
    :try_start_7
    invoke-virtual {p0}, LT/I;->g()LT/S;

    move-result-object p2

    iput-object p0, v0, LT/D;->b:Ljava/lang/Object;

    iput-boolean p1, v0, LT/D;->t:Z

    const/4 v1, 0x3

    iput v1, v0, LT/D;->x:I

    invoke-virtual {p2}, LT/S;->a()Ljava/lang/Integer;

    move-result-object p2

    if-ne p2, v4, :cond_5

    goto/16 :goto_a

    :cond_5
    :goto_4
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0}, LT/I;->g()LT/S;

    move-result-object v1

    new-instance v5, LT/C;

    const/4 v6, 0x1

    invoke-direct {v5, p0, p2, v3, v6}, LT/C;-><init>(LT/I;ILV4/d;I)V

    iput-object p0, v0, LT/D;->b:Ljava/lang/Object;

    iput-boolean p1, v0, LT/D;->t:Z

    const/4 p2, 0x4

    iput p2, v0, LT/D;->x:I

    invoke-virtual {v1, v5, v0}, LT/S;->c(Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_6

    goto/16 :goto_a

    :cond_6
    :goto_5
    check-cast p2, LT/c;
    :try_end_7
    .catch LT/b; {:try_start_7 .. :try_end_7} :catch_0

    return-object p2

    :goto_6
    new-instance v1, Le5/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, LT/I;->b:LL2/o;

    iput-object p0, v0, LT/D;->b:Ljava/lang/Object;

    iput-object p2, v0, LT/D;->q:Ljava/lang/Object;

    iput-object v1, v0, LT/D;->r:Ljava/io/Serializable;

    iput-object v1, v0, LT/D;->s:Le5/m;

    iput-boolean p1, v0, LT/D;->t:Z

    const/4 v6, 0x5

    iput v6, v0, LT/D;->x:I

    iget-object v5, v5, LL2/o;->b:Ljava/lang/Object;

    check-cast v5, Le5/h;

    invoke-interface {v5, p2}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    goto :goto_a

    :cond_7
    move-object v6, v5

    move-object v5, p2

    move-object p2, v6

    move-object v6, p0

    move p0, p1

    move-object p1, v1

    :goto_7
    iput-object p2, p1, Le5/m;->b:Ljava/lang/Object;

    new-instance p1, Le5/k;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :try_start_8
    new-instance p2, LT/E;

    invoke-direct {p2, v1, v6, p1, v3}, LT/E;-><init>(Le5/m;LT/I;Le5/k;LV4/d;)V

    iput-object v5, v0, LT/D;->b:Ljava/lang/Object;

    iput-object v1, v0, LT/D;->q:Ljava/lang/Object;

    iput-object p1, v0, LT/D;->r:Ljava/io/Serializable;

    iput-object v3, v0, LT/D;->s:Le5/m;

    const/4 v7, 0x6

    iput v7, v0, LT/D;->x:I

    if-eqz p0, :cond_8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, LT/E;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_8
    invoke-virtual {v6}, LT/I;->g()LT/S;

    move-result-object p0

    new-instance v6, LT/v;

    invoke-direct {v6, p2, v3}, LT/v;-><init>(LT/E;LV4/d;)V

    invoke-virtual {p0, v6, v0}, LT/S;->b(Ld5/l;LX4/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_8
    if-ne p0, v4, :cond_9

    goto :goto_a

    :cond_9
    move-object p0, p1

    move-object p1, v1

    :goto_9
    new-instance v4, LT/c;

    iget-object p1, p1, Le5/m;->b:Ljava/lang/Object;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_a
    iget p0, p0, Le5/k;->b:I

    invoke-direct {v4, v2, p0, p1}, LT/c;-><init>(IILjava/lang/Object;)V

    :goto_a
    return-object v4

    :goto_b
    move-object v0, v5

    goto :goto_c

    :catchall_1
    move-exception p0

    goto :goto_b

    :goto_c
    invoke-static {v0, p0}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ld5/p;LX4/c;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    sget-object v1, LT/V;->b:LT/V;

    invoke-interface {v0, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    check-cast v0, LT/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, LT/W;->c(LT/I;)V

    :cond_0
    new-instance v1, LT/W;

    invoke-direct {v1, v0, p0}, LT/W;-><init>(LT/W;LT/I;)V

    new-instance v0, LT/t;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, LT/t;-><init>(LT/I;Ld5/p;LV4/d;)V

    invoke-static {v1, v0, p2}, Lm5/w;->m(LV4/i;Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()LT/S;
    .locals 1

    iget-object v0, p0, LT/I;->k:LS4/g;

    invoke-virtual {v0}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/S;

    return-object v0
.end method

.method public final getData()Lp5/b;
    .locals 1

    iget-object v0, p0, LT/I;->d:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public final h(LX4/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, LT/z;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LT/z;

    iget v1, v0, LT/z;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/z;->t:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/z;

    invoke-direct {v0, p0, p1}, LT/z;-><init>(LT/I;LX4/c;)V

    :goto_0
    iget-object p1, v0, LT/z;->r:Ljava/lang/Object;

    iget v1, v0, LT/z;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget v1, v0, LT/z;->q:I

    iget-object v0, v0, LT/z;->b:LT/I;

    :try_start_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v0, LT/z;->b:LT/I;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    invoke-virtual {p0}, LT/I;->g()LT/S;

    move-result-object p1

    iput-object p0, v0, LT/z;->b:LT/I;

    iput v3, v0, LT/z;->t:I

    invoke-virtual {p1}, LT/S;->a()Ljava/lang/Integer;

    move-result-object p1

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :try_start_1
    iget-object v3, v1, LT/I;->i:LK1/c;

    iput-object v1, v0, LT/z;->b:LT/I;

    iput p1, v0, LT/z;->q:I

    iput v2, v0, LT/z;->t:I

    invoke-virtual {v3, v0}, LK1/c;->z(LX4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v4, :cond_5

    :goto_2
    return-object v4

    :cond_5
    :goto_3
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v5, v1

    move v1, p1

    move-object p1, v0

    move-object v0, v5

    :goto_4
    iget-object v0, v0, LT/I;->h:LL2/o;

    new-instance v2, LT/L;

    invoke-direct {v2, p1, v1}, LT/L;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v2}, LL2/o;->F(LT/T;)V

    throw p1
.end method

.method public final i(LX4/c;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LT/I;->j:LS4/g;

    invoke-virtual {v0}, LS4/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV/i;

    new-instance v1, LT/q;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, LT/q;-><init>(ILV4/d;)V

    invoke-virtual {v0, v1, p1}, LV/i;->a(LT/q;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;ZLX4/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, LT/G;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LT/G;

    iget v1, v0, LT/G;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LT/G;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, LT/G;

    invoke-direct {v0, p0, p3}, LT/G;-><init>(LT/I;LX4/c;)V

    :goto_0
    iget-object p3, v0, LT/G;->q:Ljava/lang/Object;

    iget v1, v0, LT/G;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, LT/G;->b:Le5/k;

    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, LE5/l;->C(Ljava/lang/Object;)V

    new-instance v4, Le5/k;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object p3, p0, LT/I;->j:LS4/g;

    invoke-virtual {p3}, LS4/g;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LV/i;

    new-instance v3, LT/H;

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, LT/H;-><init>(Le5/k;LT/I;Ljava/lang/Object;ZLV4/d;)V

    iput-object v4, v0, LT/G;->b:Le5/k;

    iput v2, v0, LT/G;->s:I

    invoke-virtual {p3, v3, v0}, LV/i;->b(LT/H;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_3

    return-object p2

    :cond_3
    move-object p1, v4

    :goto_1
    iget p1, p1, Le5/k;->b:I

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method
