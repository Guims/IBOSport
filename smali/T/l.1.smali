.class public final LT/l;
.super LX4/g;

# interfaces
.implements Ld5/l;


# instance fields
.field public q:Ljava/lang/Object;

.field public r:Ljava/io/Serializable;

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public u:Ljava/util/Iterator;

.field public v:I

.field public w:I

.field public final synthetic x:LT/I;

.field public final synthetic y:LK1/c;


# direct methods
.method public constructor <init>(LT/I;LK1/c;LV4/d;)V
    .locals 0

    iput-object p1, p0, LT/l;->x:LT/I;

    iput-object p2, p0, LT/l;->y:LK1/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(LV4/d;)LV4/d;
    .locals 3

    new-instance v0, LT/l;

    iget-object v1, p0, LT/l;->x:LT/I;

    iget-object v2, p0, LT/l;->y:LK1/c;

    invoke-direct {v0, v1, v2, p1}, LT/l;-><init>(LT/I;LK1/c;LV4/d;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LV4/d;

    invoke-virtual {p0, p1}, LT/l;->create(LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/l;

    sget-object v0, LS4/i;->a:LS4/i;

    invoke-virtual {p1, v0}, LT/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, LT/l;->w:I

    iget-object v1, p0, LT/l;->y:LK1/c;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p0, LT/l;->x:LT/I;

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget v0, p0, LT/l;->v:I

    iget-object v1, p0, LT/l;->q:Ljava/lang/Object;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LT/l;->s:Ljava/lang/Object;

    check-cast v0, Lu5/a;

    iget-object v1, p0, LT/l;->r:Ljava/io/Serializable;

    check-cast v1, Le5/m;

    iget-object v3, p0, LT/l;->q:Ljava/lang/Object;

    check-cast v3, Le5/j;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, LT/l;->u:Ljava/util/Iterator;

    iget-object v9, p0, LT/l;->t:Ljava/lang/Object;

    check-cast v9, LT/k;

    iget-object v10, p0, LT/l;->s:Ljava/lang/Object;

    check-cast v10, Le5/m;

    iget-object v11, p0, LT/l;->r:Ljava/io/Serializable;

    check-cast v11, Le5/j;

    iget-object v12, p0, LT/l;->q:Ljava/lang/Object;

    check-cast v12, Lu5/a;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, LT/l;->t:Ljava/lang/Object;

    check-cast v0, Le5/m;

    iget-object v9, p0, LT/l;->s:Ljava/lang/Object;

    check-cast v9, Le5/m;

    iget-object v10, p0, LT/l;->r:Ljava/io/Serializable;

    check-cast v10, Le5/j;

    iget-object v11, p0, LT/l;->q:Ljava/lang/Object;

    check-cast v11, Lu5/a;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    invoke-static {}, Lu5/e;->a()Lu5/d;

    move-result-object v11

    new-instance v10, Le5/j;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le5/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v11, p0, LT/l;->q:Ljava/lang/Object;

    iput-object v10, p0, LT/l;->r:Ljava/io/Serializable;

    iput-object v0, p0, LT/l;->s:Ljava/lang/Object;

    iput-object v0, p0, LT/l;->t:Ljava/lang/Object;

    iput v6, p0, LT/l;->w:I

    invoke-static {v5, v6, p0}, LT/I;->f(LT/I;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v9, v0

    :goto_0
    check-cast p1, LT/c;

    iget-object p1, p1, LT/c;->b:Ljava/lang/Object;

    iput-object p1, v0, Le5/m;->b:Ljava/lang/Object;

    new-instance p1, LT/k;

    invoke-direct {p1, v11, v10, v9, v5}, LT/k;-><init>(Lu5/a;Le5/j;Le5/m;LT/I;)V

    iget-object v0, v1, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, p1

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld5/p;

    iput-object v12, p0, LT/l;->q:Ljava/lang/Object;

    iput-object v11, p0, LT/l;->r:Ljava/io/Serializable;

    iput-object v10, p0, LT/l;->s:Ljava/lang/Object;

    iput-object v9, p0, LT/l;->t:Ljava/lang/Object;

    iput-object v0, p0, LT/l;->u:Ljava/util/Iterator;

    iput v4, p0, LT/l;->w:I

    invoke-interface {p1, v9, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_6

    goto :goto_5

    :cond_7
    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    :cond_8
    iput-object v7, v1, LK1/c;->s:Ljava/lang/Object;

    iput-object v10, p0, LT/l;->q:Ljava/lang/Object;

    iput-object v9, p0, LT/l;->r:Ljava/io/Serializable;

    iput-object v11, p0, LT/l;->s:Ljava/lang/Object;

    iput-object v7, p0, LT/l;->t:Ljava/lang/Object;

    iput-object v7, p0, LT/l;->u:Ljava/util/Iterator;

    iput v3, p0, LT/l;->w:I

    move-object v0, v11

    check-cast v0, Lu5/d;

    invoke-virtual {v0, p0}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v9

    move-object v3, v10

    :goto_2
    :try_start_0
    iput-boolean v6, v3, Le5/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lu5/d;

    invoke-virtual {v0, v7}, Lu5/d;->f(Ljava/lang/Object;)V

    iget-object v1, v1, Le5/m;->b:Ljava/lang/Object;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_3
    move v0, p1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    goto :goto_3

    :goto_4
    invoke-virtual {v5}, LT/I;->g()LT/S;

    move-result-object p1

    iput-object v1, p0, LT/l;->q:Ljava/lang/Object;

    iput-object v7, p0, LT/l;->r:Ljava/io/Serializable;

    iput-object v7, p0, LT/l;->s:Ljava/lang/Object;

    iput v0, p0, LT/l;->v:I

    iput v2, p0, LT/l;->w:I

    invoke-virtual {p1}, LT/S;->a()Ljava/lang/Integer;

    move-result-object p1

    if-ne p1, v8, :cond_b

    :goto_5
    return-object v8

    :cond_b
    :goto_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v2, LT/c;

    invoke-direct {v2, v0, p1, v1}, LT/c;-><init>(IILjava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception p1

    check-cast v0, Lu5/d;

    invoke-virtual {v0, v7}, Lu5/d;->f(Ljava/lang/Object;)V

    throw p1
.end method
