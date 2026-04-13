.class public final LT/d;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld5/p;LT/c;LV4/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT/d;->q:I

    check-cast p1, LX4/g;

    iput-object p1, p0, LT/d;->s:Ljava/lang/Object;

    iput-object p2, p0, LT/d;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;LV4/d;I)V
    .locals 0

    iput p3, p0, LT/d;->q:I

    iput-object p1, p0, LT/d;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;LV4/d;I)V
    .locals 0

    iput p4, p0, LT/d;->q:I

    iput-object p1, p0, LT/d;->s:Ljava/lang/Object;

    iput-object p2, p0, LT/d;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 3

    iget v0, p0, LT/d;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LT/d;

    iget-object v1, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v1, Lp5/c;

    const/4 v2, 0x7

    invoke-direct {v0, v1, p2, v2}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    iput-object p1, v0, LT/d;->s:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance p1, LT/d;

    iget-object v0, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v0, Lk4/k;

    const/4 v1, 0x6

    invoke-direct {p1, v0, p2, v1}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    return-object p1

    :pswitch_1
    new-instance p1, LT/d;

    iget-object v0, p0, LT/d;->s:Ljava/lang/Object;

    check-cast v0, LK1/c;

    iget-object v1, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, p2, v2}, LT/d;-><init>(Ljava/lang/Object;Ljava/io/Serializable;LV4/d;I)V

    return-object p1

    :pswitch_2
    new-instance p1, LT/d;

    iget-object v0, p0, LT/d;->s:Ljava/lang/Object;

    check-cast v0, Lg4/E;

    iget-object v1, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, p2, v2}, LT/d;-><init>(Ljava/lang/Object;Ljava/io/Serializable;LV4/d;I)V

    return-object p1

    :pswitch_3
    new-instance p1, LT/d;

    iget-object v0, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v0, LK1/c;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p2, v1}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    return-object p1

    :pswitch_4
    new-instance v0, LT/d;

    iget-object v1, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v1, LT/I;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p2, v2}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    iput-object p1, v0, LT/d;->s:Ljava/lang/Object;

    return-object v0

    :pswitch_5
    new-instance p1, LT/d;

    iget-object v0, p0, LT/d;->s:Ljava/lang/Object;

    check-cast v0, LX4/g;

    iget-object v1, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v1, LT/c;

    invoke-direct {p1, v0, v1, p2}, LT/d;-><init>(Ld5/p;LT/c;LV4/d;)V

    return-object p1

    :pswitch_6
    new-instance v0, LT/d;

    iget-object v1, p0, LT/d;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    iput-object p1, v0, LT/d;->s:Ljava/lang/Object;

    return-object v0

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

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/d;->q:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, LT/K;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, LT/k;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/d;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/d;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, LT/d;->q:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-object v4, LS4/i;->a:LS4/i;

    iget-object v5, v1, LT/d;->t:Ljava/lang/Object;

    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    sget-object v7, LW4/a;->b:LW4/a;

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    iget v0, v1, LT/d;->r:I

    if-eqz v0, :cond_1

    if-ne v0, v8, :cond_0

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    check-cast v5, Lp5/c;

    iput v8, v1, LT/d;->r:I

    invoke-interface {v5, v0, v1}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_2

    move-object v4, v7

    :cond_2
    :goto_0
    return-object v4

    :pswitch_0
    iget v0, v1, LT/d;->r:I

    if-eqz v0, :cond_4

    if-ne v0, v8, :cond_3

    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    check-cast v0, Lk4/k;

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object v0, v5

    check-cast v0, Lk4/k;

    iget-object v2, v0, Lk4/k;->a:LT/h;

    invoke-interface {v2}, LT/h;->getData()Lp5/b;

    move-result-object v2

    iput-object v0, v1, LT/d;->s:Ljava/lang/Object;

    iput v8, v1, LT/d;->r:I

    invoke-static {v2, v1}, Lp5/u;->d(Lp5/b;LX4/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_5

    move-object v4, v7

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v2, LX/b;

    new-instance v3, LX/b;

    invoke-virtual {v2}, LX/b;->a()Ljava/util/Map;

    move-result-object v2

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v3, v5, v8}, LX/b;-><init>(Ljava/util/LinkedHashMap;Z)V

    invoke-static {v0, v3}, Lk4/k;->a(Lk4/k;LX/b;)V

    :goto_2
    return-object v4

    :pswitch_1
    check-cast v5, Ljava/util/ArrayList;

    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LK1/c;

    iget v0, v1, LT/d;->r:I

    if-eqz v0, :cond_7

    if-ne v0, v8, :cond_6

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    sget-object v0, Lh4/c;->a:Lh4/c;

    iput v8, v1, LT/d;->r:I

    invoke-virtual {v0, v1}, Lh4/c;->b(LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_8

    move-object v4, v7

    goto/16 :goto_6

    :cond_8
    :goto_3
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    const-string v7, "SessionLifecycleClient"

    if-eqz v6, :cond_9

    const-string v0, "Sessions SDK did not have any dependent SDKs register as dependencies. Events will not be sent."

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_5

    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LE3/j;

    iget-object v6, v6, LE3/j;->a:LE1/E;

    invoke-virtual {v6}, LE1/E;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v2, v5, v3}, LK1/c;->a(LK1/c;Ljava/util/ArrayList;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v2, v5, v8}, LK1/c;->a(LK1/c;Ljava/util/ArrayList;I)Landroid/os/Message;

    move-result-object v3

    filled-new-array {v0, v3}, [Landroid/os/Message;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    new-instance v5, LT4/d;

    invoke-direct {v5, v0, v8}, LT4/d;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, LT4/g;->w(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lg4/Q;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v3}, LT4/g;->C(Ljava/util/ArrayList;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Message;

    const-string v0, "Sending lifecycle "

    iget-object v6, v2, LK1/c;->r:Ljava/lang/Object;

    check-cast v6, Landroid/os/Messenger;

    if-eqz v6, :cond_d

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Landroid/os/Message;->what:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to service"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unable to deliver message: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2, v5}, LK1/c;->x(Landroid/os/Message;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v2, v5}, LK1/c;->x(Landroid/os/Message;)V

    goto :goto_4

    :cond_e
    :goto_5
    const-string v0, "Data Collection is disabled for all subscribers. Skipping this Event"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    return-object v4

    :pswitch_2
    iget v0, v1, LT/d;->r:I

    if-eqz v0, :cond_11

    if-ne v0, v8, :cond_10

    :try_start_1
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_2
    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    check-cast v0, Lg4/E;

    iget-object v0, v0, Lg4/E;->b:LT/h;

    new-instance v3, LT/p;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5, v2, v8}, LT/p;-><init>(Ljava/lang/Object;LV4/d;I)V

    iput v8, v1, LT/d;->r:I

    new-instance v5, LX/c;

    invoke-direct {v5, v3, v2, v8}, LX/c;-><init>(Ld5/p;LV4/d;I)V

    invoke-interface {v0, v5, v1}, LT/h;->a(Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v7, :cond_12

    move-object v4, v7

    goto :goto_8

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to update session Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseSessionsRepo"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_8
    return-object v4

    :pswitch_3
    check-cast v5, LK1/c;

    iget v0, v1, LT/d;->r:I

    if-eqz v0, :cond_15

    if-eq v0, v8, :cond_14

    if-ne v0, v3, :cond_13

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object/from16 v16, v4

    move v4, v3

    move-object v3, v2

    goto/16 :goto_14

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    check-cast v0, LT/d;

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object v3, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v2, p1

    goto/16 :goto_12

    :cond_15
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object v0, v5, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, LL2/o;

    iget-object v0, v0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2c

    :goto_9
    iget-object v0, v5, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Lm5/u;

    invoke-interface {v0}, Lm5/u;->d()LV4/i;

    move-result-object v0

    sget-object v6, Lm5/t;->q:Lm5/t;

    invoke-interface {v0, v6}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    check-cast v0, Lm5/Q;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lm5/Q;->a()Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_a

    :cond_16
    check-cast v0, Lm5/a0;

    invoke-virtual {v0}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_17
    :goto_a
    iget-object v0, v5, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, LT/d;

    iget-object v6, v5, LK1/c;->s:Ljava/lang/Object;

    move-object v9, v6

    check-cast v9, Lo5/b;

    iput-object v0, v1, LT/d;->s:Ljava/lang/Object;

    iput v8, v1, LT/d;->r:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v15, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v10, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo5/j;

    :goto_b
    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13, v8}, Lo5/b;->s(JZ)Z

    move-result v12

    if-nez v12, :cond_2b

    invoke-virtual {v15, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v12

    sget v14, Lo5/d;->b:I

    move-object/from16 v16, v4

    int-to-long v3, v14

    move-wide/from16 v17, v3

    div-long v2, v12, v17

    move-object/from16 p1, v9

    rem-long v8, v12, v17

    long-to-int v8, v8

    move-object/from16 v17, v5

    iget-wide v4, v11, Lr5/t;->r:J

    cmp-long v4, v4, v2

    move-object/from16 v9, p1

    if-eqz v4, :cond_19

    invoke-virtual {v9, v2, v3, v11}, Lo5/b;->m(JLo5/j;)Lo5/j;

    move-result-object v2

    if-nez v2, :cond_18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v8, 0x1

    goto :goto_b

    :cond_18
    move-object v11, v2

    :cond_19
    const/4 v14, 0x0

    move-object v2, v10

    move-object v10, v11

    move v11, v8

    invoke-virtual/range {v9 .. v14}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lo5/d;->m:LE1/a;

    const-string v5, "unexpected"

    if-eq v3, v4, :cond_2a

    sget-object v8, Lo5/d;->o:LE1/a;

    if-ne v3, v8, :cond_1b

    invoke-virtual {v9}, Lo5/b;->q()J

    move-result-wide v3

    cmp-long v3, v12, v3

    if-gez v3, :cond_1a

    invoke-virtual {v10}, Lr5/d;->a()V

    :cond_1a
    move-object v11, v10

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    const/4 v3, 0x2

    const/4 v8, 0x1

    move-object v10, v2

    const/4 v2, 0x0

    goto :goto_b

    :cond_1b
    sget-object v14, Lo5/d;->n:LE1/a;

    if-ne v3, v14, :cond_26

    invoke-static {v1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object v3

    invoke-static {v3}, Lm5/w;->d(LV4/d;)Lm5/f;

    move-result-object v14

    :try_start_3
    invoke-virtual/range {v9 .. v14}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_1c

    invoke-virtual {v14, v10, v11}, Lm5/f;->a(Lr5/t;I)V

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1c
    if-ne v3, v8, :cond_25

    invoke-virtual {v9}, Lo5/b;->q()J

    move-result-wide v3

    cmp-long v3, v12, v3

    if-gez v3, :cond_1d

    invoke-virtual {v10}, Lr5/d;->a()V

    :cond_1d
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo5/j;

    :goto_c
    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const/4 v8, 0x1

    invoke-virtual {v9, v3, v4, v8}, Lo5/b;->s(JZ)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v9}, Lo5/b;->o()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object v2

    invoke-virtual {v14, v2}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1e
    invoke-virtual {v15, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v12

    sget v3, Lo5/d;->b:I

    int-to-long v10, v3

    move-object/from16 p1, v5

    div-long v4, v12, v10

    rem-long v10, v12, v10

    long-to-int v11, v10

    move v3, v11

    iget-wide v10, v2, Lr5/t;->r:J

    cmp-long v8, v10, v4

    if-eqz v8, :cond_20

    invoke-virtual {v9, v4, v5, v2}, Lo5/b;->m(JLo5/j;)Lo5/j;

    move-result-object v4

    if-nez v4, :cond_1f

    move-object/from16 v5, p1

    goto :goto_c

    :cond_1f
    move-object v10, v4

    :goto_d
    move v11, v3

    goto :goto_e

    :cond_20
    move-object v10, v2

    goto :goto_d

    :goto_e
    invoke-virtual/range {v9 .. v14}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v10

    move v3, v11

    sget-object v5, Lo5/d;->m:LE1/a;

    if-ne v2, v5, :cond_21

    invoke-virtual {v14, v4, v3}, Lm5/f;->a(Lr5/t;I)V

    goto :goto_f

    :cond_21
    sget-object v3, Lo5/d;->o:LE1/a;

    if-ne v2, v3, :cond_23

    invoke-virtual {v9}, Lo5/b;->q()J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-gez v2, :cond_22

    invoke-virtual {v4}, Lr5/d;->a()V

    :cond_22
    move-object/from16 v5, p1

    move-object v2, v4

    goto :goto_c

    :cond_23
    sget-object v3, Lo5/d;->n:LE1/a;

    if-eq v2, v3, :cond_24

    invoke-virtual {v4}, Lr5/d;->a()V

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lm5/f;->z(Ljava/lang/Object;Ld5/l;)V

    goto :goto_f

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-virtual {v10}, Lr5/d;->a()V

    const/4 v2, 0x0

    invoke-virtual {v14, v3, v2}, Lm5/f;->z(Ljava/lang/Object;Ld5/l;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_f
    invoke-virtual {v14}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object v2

    goto :goto_11

    :goto_10
    invoke-virtual {v14}, Lm5/f;->y()V

    throw v0

    :cond_26
    invoke-virtual {v10}, Lr5/d;->a()V

    move-object v2, v3

    :goto_11
    if-ne v2, v7, :cond_27

    goto :goto_13

    :cond_27
    const/4 v3, 0x0

    :goto_12
    iput-object v3, v1, LT/d;->s:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, LT/d;->r:I

    invoke-interface {v0, v2, v1}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_28

    :goto_13
    move-object v4, v7

    goto :goto_15

    :cond_28
    move-object/from16 v5, v17

    :goto_14
    iget-object v0, v5, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, LL2/o;

    iget-object v0, v0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_29

    move-object/from16 v4, v16

    :goto_15
    return-object v4

    :cond_29
    move-object v2, v3

    move v3, v4

    move-object/from16 v4, v16

    const/4 v8, 0x1

    goto/16 :goto_9

    :cond_2a
    move-object v2, v5

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {v9}, Lo5/b;->o()Ljava/lang/Throwable;

    move-result-object v0

    sget v2, Lr5/u;->a:I

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    move-object/from16 v16, v4

    iget v0, v1, LT/d;->r:I

    const/4 v4, 0x1

    if-eqz v0, :cond_2e

    if-ne v0, v4, :cond_2d

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_16

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    check-cast v0, LT/K;

    check-cast v5, LT/I;

    iput v4, v1, LT/d;->r:I

    invoke-static {v5, v0, v1}, LT/I;->c(LT/I;LT/K;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_2f

    move-object v4, v7

    goto :goto_17

    :cond_2f
    :goto_16
    move-object/from16 v4, v16

    :goto_17
    return-object v4

    :pswitch_5
    move v4, v8

    iget v0, v1, LT/d;->r:I

    if-eqz v0, :cond_31

    if-ne v0, v4, :cond_30

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_18

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    check-cast v0, LX4/g;

    check-cast v5, LT/c;

    iget-object v2, v5, LT/c;->b:Ljava/lang/Object;

    iput v4, v1, LT/d;->r:I

    invoke-interface {v0, v2, v1}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_32

    move-object v0, v7

    :cond_32
    :goto_18
    return-object v0

    :pswitch_6
    move-object/from16 v16, v4

    move v4, v8

    iget v0, v1, LT/d;->r:I

    if-eqz v0, :cond_34

    if-ne v0, v4, :cond_33

    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_19

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-static/range {p1 .. p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object v0, v1, LT/d;->s:Ljava/lang/Object;

    check-cast v0, LT/k;

    check-cast v5, Ljava/util/List;

    iput v4, v1, LT/d;->r:I

    invoke-static {v5, v0, v1}, LH3/u0;->a(Ljava/util/List;LT/k;LX4/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_35

    move-object v4, v7

    goto :goto_1a

    :cond_35
    :goto_19
    move-object/from16 v4, v16

    :goto_1a
    return-object v4

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
