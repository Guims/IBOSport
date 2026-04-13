.class public final LT/t;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LT/I;LV4/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LT/t;->q:I

    iput-object p1, p0, LT/t;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public constructor <init>(LT/I;Ld5/p;LV4/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT/t;->q:I

    iput-object p1, p0, LT/t;->t:Ljava/lang/Object;

    check-cast p2, LX4/g;

    iput-object p2, p0, LT/t;->u:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public constructor <init>(Lg4/o;LV4/i;Lg4/T;LV4/d;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LT/t;->q:I

    iput-object p1, p0, LT/t;->u:Ljava/lang/Object;

    iput-object p2, p0, LT/t;->s:Ljava/lang/Object;

    iput-object p3, p0, LT/t;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method

.method public constructor <init>(Lp5/c;Lq5/e;LV4/d;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LT/t;->q:I

    iput-object p1, p0, LT/t;->u:Ljava/lang/Object;

    iput-object p2, p0, LT/t;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 3

    iget v0, p0, LT/t;->q:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LT/t;

    iget-object v1, p0, LT/t;->u:Ljava/lang/Object;

    check-cast v1, Lp5/c;

    iget-object v2, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v2, Lq5/e;

    invoke-direct {v0, v1, v2, p2}, LT/t;-><init>(Lp5/c;Lq5/e;LV4/d;)V

    iput-object p1, v0, LT/t;->s:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance p1, LT/t;

    iget-object v0, p0, LT/t;->u:Ljava/lang/Object;

    check-cast v0, Lg4/o;

    iget-object v1, p0, LT/t;->s:Ljava/lang/Object;

    check-cast v1, LV4/i;

    iget-object v2, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v2, Lg4/T;

    invoke-direct {p1, v0, v1, v2, p2}, LT/t;-><init>(Lg4/o;LV4/i;Lg4/T;LV4/d;)V

    return-object p1

    :pswitch_1
    new-instance v0, LT/t;

    iget-object v1, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v1, LT/I;

    iget-object v2, p0, LT/t;->u:Ljava/lang/Object;

    check-cast v2, LX4/g;

    invoke-direct {v0, v1, v2, p2}, LT/t;-><init>(LT/I;Ld5/p;LV4/d;)V

    iput-object p1, v0, LT/t;->s:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    new-instance v0, LT/t;

    iget-object v1, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v1, LT/I;

    invoke-direct {v0, v1, p2}, LT/t;-><init>(LT/I;LV4/d;)V

    iput-object p1, v0, LT/t;->s:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/t;->q:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/t;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/t;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/t;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/t;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/t;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/t;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lp5/c;

    check-cast p2, LV4/d;

    invoke-virtual {p0, p1, p2}, LT/t;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, LT/t;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, LT/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, LT/t;->q:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LT/t;->r:I

    sget-object v1, LS4/i;->a:LS4/i;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/t;->s:Ljava/lang/Object;

    check-cast p1, Lm5/u;

    iget-object v0, p0, LT/t;->u:Ljava/lang/Object;

    check-cast v0, Lp5/c;

    iget-object v3, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v3, Lq5/e;

    iget-object v4, v3, Lq5/e;->b:LV4/i;

    iget v5, v3, Lq5/e;->q:I

    const/4 v6, -0x3

    if-ne v5, v6, :cond_2

    const/4 v5, -0x2

    :cond_2
    iget v6, v3, Lq5/e;->r:I

    new-instance v7, Lq5/d;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v3, v9, v8}, Lq5/d;-><init>(Lq5/e;LV4/d;I)V

    const/4 v3, 0x4

    invoke-static {v5, v6, v3}, Lo5/i;->a(III)Lo5/b;

    move-result-object v3

    invoke-interface {p1}, Lm5/u;->d()LV4/i;

    move-result-object p1

    invoke-static {p1, v4, v2}, Lm5/w;->b(LV4/i;LV4/i;Z)LV4/i;

    move-result-object p1

    sget-object v4, Lm5/C;->a:Lt5/d;

    if-eq p1, v4, :cond_3

    sget-object v5, LV4/e;->b:LV4/e;

    invoke-interface {p1, v5}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-interface {p1, v4}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p1

    :cond_3
    new-instance v4, Lo5/m;

    invoke-direct {v4, p1, v3}, Lo5/m;-><init>(LV4/i;Lo5/b;)V

    const/4 p1, 0x3

    invoke-virtual {v4, p1, v4, v7}, Lm5/a;->S(ILm5/a;Ld5/p;)V

    iput v2, p0, LT/t;->r:I

    invoke-static {v0, v4, v2, p0}, Lp5/u;->c(Lp5/c;Lo5/m;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    if-ne p1, v0, :cond_5

    move-object v1, v0

    :cond_5
    :goto_1
    return-object v1

    :pswitch_0
    iget-object v0, p0, LT/t;->u:Ljava/lang/Object;

    check-cast v0, Lg4/o;

    iget-object v1, v0, Lg4/o;->b:Lk4/h;

    iget v2, p0, LT/t;->r:I

    const-string v3, "FirebaseSessions"

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_7

    if-ne v2, v4, :cond_6

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    sget-object p1, Lh4/c;->a:Lh4/c;

    iput v5, p0, LT/t;->r:I

    invoke-virtual {p1, p0}, Lh4/c;->b(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_9

    goto/16 :goto_a

    :cond_9
    :goto_2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE3/j;

    iget-object v2, v2, LE3/j;->a:LE1/E;

    invoke-virtual {v2}, LE1/E;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    iput v4, p0, LT/t;->r:I

    invoke-virtual {v1, p0}, Lk4/h;->b(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_c

    goto/16 :goto_a

    :cond_c
    :goto_3
    iget-object p1, v1, Lk4/h;->a:Lk4/m;

    invoke-interface {p1}, Lk4/m;->a()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_d

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_5

    :cond_d
    iget-object p1, v1, Lk4/h;->b:Lk4/m;

    invoke-interface {p1}, Lk4/m;->a()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move p1, v5

    :goto_5
    if-nez p1, :cond_f

    const-string p1, "Sessions SDK disabled. Not listening to lifecycle events."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_f
    new-instance p1, LK1/c;

    iget-object v1, p0, LT/t;->s:Ljava/lang/Object;

    check-cast v1, LV4/i;

    invoke-direct {p1, v1}, LK1/c;-><init>(LV4/i;)V

    iget-object v2, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v2, Lg4/T;

    const-string v3, "sessionLifecycleServiceBinder"

    invoke-static {v2, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Lg4/P;

    invoke-direct {v4, v1}, Lg4/P;-><init>(LV4/i;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v1, p1, LK1/c;->t:Ljava/lang/Object;

    check-cast v1, LE1/v;

    const-string v4, "Session lifecycle service binding failed."

    const-string v6, "serviceConnection"

    invoke-static {v1, v6}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    iget-object v2, v2, Lg4/T;->a:Landroid/content/Context;

    const-class v7, Lcom/google/firebase/sessions/SessionLifecycleService;

    invoke-direct {v6, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "Binding service to application."

    const-string v8, "LifecycleServiceBinder"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "ClientCallbackMessenger"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x41

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v6, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    const-string v6, "Failed to bind session lifecycle service to application."

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v7

    :goto_6
    if-nez v3, :cond_10

    :try_start_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v1

    invoke-static {v8, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    sput-object p1, Lg4/U;->r:LK1/c;

    sget-boolean v1, Lg4/U;->q:Z

    if-eqz v1, :cond_11

    sput-boolean v7, Lg4/U;->q:Z

    invoke-virtual {p1, v5}, LK1/c;->B(I)V

    :cond_11
    iget-object p1, v0, Lg4/o;->a:Lv3/e;

    new-instance v0, Landroidx/media3/common/d;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/media3/common/d;-><init>(I)V

    invoke-virtual {p1}, Lv3/e;->a()V

    iget-object p1, p1, Lv3/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    :goto_8
    const-string p1, "No Sessions subscribers. Not listening to lifecycle events."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    sget-object v6, LS4/i;->a:LS4/i;

    :goto_a
    return-object v6

    :pswitch_1
    iget-object v0, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v0, LT/I;

    iget v1, p0, LT/t;->r:I

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    if-ne v1, v2, :cond_13

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_b

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/t;->s:Ljava/lang/Object;

    check-cast p1, Lm5/u;

    new-instance v1, Lm5/l;

    invoke-direct {v1, v2}, Lm5/a0;-><init>(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lm5/a0;->D(Lm5/Q;)V

    iget-object v4, v0, LT/I;->h:LL2/o;

    invoke-virtual {v4}, LL2/o;->q()LT/T;

    move-result-object v4

    new-instance v5, LT/K;

    iget-object v6, p0, LT/t;->u:Ljava/lang/Object;

    check-cast v6, LX4/g;

    invoke-interface {p1}, Lm5/u;->d()LV4/i;

    move-result-object p1

    invoke-direct {v5, v6, v1, v4, p1}, LT/K;-><init>(Ld5/p;Lm5/l;LT/T;LV4/i;)V

    iget-object p1, v0, LT/I;->l:LK1/c;

    iget-object v0, p1, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Lo5/b;

    invoke-interface {v0, v5}, Lo5/p;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lo5/g;

    if-eqz v4, :cond_16

    check-cast v0, Lo5/g;

    iget-object p1, v0, Lo5/g;->a:Ljava/lang/Throwable;

    if-nez p1, :cond_15

    new-instance p1, LL2/b;

    const-string v0, "Channel was closed normally"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_15
    throw p1

    :cond_16
    instance-of v0, v0, Lo5/h;

    if-nez v0, :cond_19

    iget-object v0, p1, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, LL2/o;

    iget-object v0, v0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p1, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Lm5/u;

    new-instance v4, LT/d;

    const/4 v5, 0x3

    invoke-direct {v4, p1, v3, v5}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    invoke-static {v0, v4}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    :cond_17
    iput v2, p0, LT/t;->r:I

    invoke-virtual {v1, p0}, Lm5/l;->Q(LX4/g;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_18

    move-object p1, v0

    :cond_18
    :goto_b
    return-object p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    iget-object v0, p0, LT/t;->t:Ljava/lang/Object;

    check-cast v0, LT/I;

    iget v1, p0, LT/t;->r:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    sget-object v4, LS4/i;->a:LS4/i;

    const/4 v5, 0x2

    const/4 v6, 0x0

    sget-object v7, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_1d

    if-eq v1, v3, :cond_1c

    if-eq v1, v5, :cond_1b

    if-ne v1, v2, :cond_1a

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v1, p0, LT/t;->u:Ljava/lang/Object;

    check-cast v1, LT/c;

    iget-object v3, p0, LT/t;->s:Ljava/lang/Object;

    check-cast v3, Lp5/c;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1c
    iget-object v1, p0, LT/t;->s:Ljava/lang/Object;

    check-cast v1, Lp5/c;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_c

    :cond_1d
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LT/t;->s:Ljava/lang/Object;

    check-cast p1, Lp5/c;

    iput-object p1, p0, LT/t;->s:Ljava/lang/Object;

    iput v3, p0, LT/t;->r:I

    iget-object v1, v0, LT/I;->c:Lm5/u;

    invoke-interface {v1}, Lm5/u;->d()LV4/i;

    move-result-object v1

    new-instance v3, LT/n;

    const/4 v8, 0x2

    invoke-direct {v3, v0, v6, v8}, LT/n;-><init>(LT/I;LV4/d;I)V

    invoke-static {v1, v3, p0}, Lm5/w;->m(LV4/i;Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1e

    goto/16 :goto_f

    :cond_1e
    move-object v3, p1

    move-object p1, v1

    :goto_c
    move-object v1, p1

    check-cast v1, LT/T;

    instance-of p1, v1, LT/c;

    if-eqz p1, :cond_1f

    move-object p1, v1

    check-cast p1, LT/c;

    iget-object v8, p1, LT/c;->b:Ljava/lang/Object;

    iput-object v3, p0, LT/t;->s:Ljava/lang/Object;

    iput-object p1, p0, LT/t;->u:Ljava/lang/Object;

    iput v5, p0, LT/t;->r:I

    invoke-interface {v3, v8, p0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_20

    goto :goto_f

    :cond_1f
    instance-of p1, v1, LT/U;

    if-nez p1, :cond_25

    instance-of p1, v1, LT/L;

    if-nez p1, :cond_24

    instance-of p1, v1, LT/J;

    if-eqz p1, :cond_20

    goto :goto_10

    :cond_20
    :goto_d
    iget-object p1, v0, LT/I;->h:LL2/o;

    iget-object p1, p1, LL2/o;->b:Ljava/lang/Object;

    check-cast p1, Lp5/t;

    new-instance v8, LT/n;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v6, v9}, LT/n;-><init>(LT/I;LV4/d;I)V

    new-instance v9, LY1/c;

    const/16 v10, 0x1b

    invoke-direct {v9, v8, v10, p1}, LY1/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p1, LT/o;

    const/4 v8, 0x0

    invoke-direct {p1, v5, v6, v8}, LT/o;-><init>(ILV4/d;I)V

    new-instance v5, Lp5/p;

    invoke-direct {v5, v9, v8, p1}, Lp5/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p1, LT/p;

    invoke-direct {p1, v1, v6, v8}, LT/p;-><init>(Ljava/lang/Object;LV4/d;I)V

    new-instance v1, LY1/c;

    const/16 v8, 0x1d

    invoke-direct {v1, v5, v8, p1}, LY1/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p1, LL2/o;

    invoke-direct {p1, v1}, LL2/o;-><init>(Ljava/lang/Object;)V

    new-instance v1, LT/q;

    invoke-direct {v1, v0, v6}, LT/q;-><init>(LT/I;LV4/d;)V

    new-instance v0, Lp5/g;

    invoke-direct {v0, p1, v1}, Lp5/g;-><init>(LL2/o;LT/q;)V

    iput-object v6, p0, LT/t;->s:Ljava/lang/Object;

    iput-object v6, p0, LT/t;->u:Ljava/lang/Object;

    iput v2, p0, LT/t;->r:I

    instance-of p1, v3, Lp5/w;

    if-nez p1, :cond_23

    invoke-virtual {v0, v3, p0}, Lp5/g;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_21

    goto :goto_e

    :cond_21
    move-object p1, v4

    :goto_e
    if-ne p1, v7, :cond_22

    :goto_f
    move-object v4, v7

    :cond_22
    :goto_10
    return-object v4

    :cond_23
    check-cast v3, Lp5/w;

    iget-object p1, v3, Lp5/w;->b:Ljava/lang/Throwable;

    throw p1

    :cond_24
    check-cast v1, LT/L;

    iget-object p1, v1, LT/L;->b:Ljava/lang/Throwable;

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
