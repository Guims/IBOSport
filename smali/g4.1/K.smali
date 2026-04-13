.class public final Lg4/K;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public q:Lg4/x;

.field public r:Lg4/M;

.field public s:Lg4/I;

.field public t:Lv3/e;

.field public u:Lg4/G;

.field public v:Lk4/h;

.field public w:I

.field public final synthetic x:Lg4/M;

.field public final synthetic y:Lg4/G;


# direct methods
.method public constructor <init>(Lg4/M;Lg4/G;LV4/d;)V
    .locals 0

    iput-object p1, p0, Lg4/K;->x:Lg4/M;

    iput-object p2, p0, Lg4/K;->y:Lg4/G;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 2

    new-instance p1, Lg4/K;

    iget-object v0, p0, Lg4/K;->x:Lg4/M;

    iget-object v1, p0, Lg4/K;->y:Lg4/G;

    invoke-direct {p1, v0, v1, p2}, Lg4/K;-><init>(Lg4/M;Lg4/G;LV4/d;)V

    return-object p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, Lg4/K;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lg4/K;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lg4/K;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, Lg4/K;->w:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, v1, Lg4/K;->x:Lg4/M;

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lg4/K;->v:Lk4/h;

    iget-object v2, v1, Lg4/K;->u:Lg4/G;

    iget-object v3, v1, Lg4/K;->t:Lv3/e;

    iget-object v4, v1, Lg4/K;->s:Lg4/I;

    iget-object v5, v1, Lg4/K;->r:Lg4/M;

    iget-object v6, v1, Lg4/K;->q:Lg4/x;

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object v9, v2

    move-object/from16 v2, p1

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    iput v4, v1, Lg4/K;->w:I

    invoke-static {v5, v1}, Lg4/M;->a(Lg4/M;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v5, Lg4/M;->b:LY3/e;

    iput v3, v1, Lg4/K;->w:I

    sget-object v3, Lg4/x;->c:Lg4/t;

    invoke-virtual {v3, v0, v1}, Lg4/t;->a(LY3/e;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v0, Lg4/x;

    sget-object v4, Lg4/I;->a:Lg4/I;

    iget-object v3, v5, Lg4/M;->a:Lv3/e;

    iget-object v7, v5, Lg4/M;->c:Lk4/h;

    sget-object v8, Lh4/c;->a:Lh4/c;

    iput-object v0, v1, Lg4/K;->q:Lg4/x;

    iput-object v5, v1, Lg4/K;->r:Lg4/M;

    iput-object v4, v1, Lg4/K;->s:Lg4/I;

    iput-object v3, v1, Lg4/K;->t:Lv3/e;

    iget-object v9, v1, Lg4/K;->y:Lg4/G;

    iput-object v9, v1, Lg4/K;->u:Lg4/G;

    iput-object v7, v1, Lg4/K;->v:Lk4/h;

    iput v2, v1, Lg4/K;->w:I

    invoke-virtual {v8, v1}, Lh4/c;->b(LX4/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_6

    :goto_2
    return-object v6

    :cond_6
    move-object v6, v0

    move-object v0, v7

    :goto_3
    check-cast v2, Ljava/util/Map;

    iget-object v7, v6, Lg4/x;->a:Ljava/lang/String;

    iget-object v6, v6, Lg4/x;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "firebaseApp"

    invoke-static {v3, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "sessionDetails"

    invoke-static {v9, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "sessionsSettings"

    invoke-static {v0, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subscribers"

    invoke-static {v2, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "firebaseAuthenticationToken"

    invoke-static {v6, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lg4/H;

    new-instance v10, Lg4/O;

    iget-object v11, v9, Lg4/G;->a:Ljava/lang/String;

    iget-object v12, v9, Lg4/G;->b:Ljava/lang/String;

    iget v13, v9, Lg4/G;->c:I

    iget-wide v14, v9, Lg4/G;->d:J

    new-instance v8, Lg4/k;

    sget-object v9, Lh4/d;->q:Lh4/d;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LE3/j;

    sget-object v16, Lg4/j;->s:Lg4/j;

    sget-object v17, Lg4/j;->r:Lg4/j;

    sget-object v18, Lg4/j;->q:Lg4/j;

    if-nez v9, :cond_7

    move-object/from16 p1, v0

    move-object/from16 v9, v18

    goto :goto_4

    :cond_7
    iget-object v9, v9, LE3/j;->a:LE1/E;

    invoke-virtual {v9}, LE1/E;->a()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 p1, v0

    move-object/from16 v9, v17

    goto :goto_4

    :cond_8
    move-object/from16 p1, v0

    move-object/from16 v9, v16

    :goto_4
    sget-object v0, Lh4/d;->b:Lh4/d;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE3/j;

    if-nez v0, :cond_9

    move-object/from16 v0, v18

    goto :goto_5

    :cond_9
    iget-object v0, v0, LE3/j;->a:LE1/E;

    invoke-virtual {v0}, LE1/E;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, v17

    goto :goto_5

    :cond_a
    move-object/from16 v0, v16

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lk4/h;->a()D

    move-result-wide v1

    invoke-direct {v8, v9, v0, v1, v2}, Lg4/k;-><init>(Lg4/j;Lg4/j;D)V

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v18}, Lg4/O;-><init>(Ljava/lang/String;Ljava/lang/String;IJLg4/k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lg4/I;->a(Lv3/e;)Lg4/b;

    move-result-object v0

    invoke-direct {v4, v10, v0}, Lg4/H;-><init>(Lg4/O;Lg4/b;)V

    sget v0, Lg4/M;->g:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SessionFirelogPublisher"

    :try_start_0
    iget-object v0, v5, Lg4/M;->d:Lg4/l;

    invoke-virtual {v0, v4}, Lg4/l;->a(Lg4/H;)V

    const-string v0, "Successfully logged Session Start event."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v2, "Error logging Session Start event to DataTransport: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_6
    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0
.end method
