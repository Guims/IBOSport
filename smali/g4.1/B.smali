.class public final Lg4/B;
.super LX4/g;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic q:I

.field public r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LV4/d;I)V
    .locals 0

    iput p3, p0, Lg4/B;->q:I

    iput-object p1, p0, Lg4/B;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(ILV4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LV4/d;)LV4/d;
    .locals 2

    iget p1, p0, Lg4/B;->q:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lg4/B;

    iget-object v0, p0, Lg4/B;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lg4/B;-><init>(Ljava/lang/Object;LV4/d;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lg4/B;

    iget-object v0, p0, Lg4/B;->s:Ljava/lang/Object;

    check-cast v0, Lg4/E;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lg4/B;-><init>(Ljava/lang/Object;LV4/d;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg4/B;->q:I

    check-cast p1, Lm5/u;

    check-cast p2, LV4/d;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lg4/B;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lg4/B;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lg4/B;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lg4/B;->create(Ljava/lang/Object;LV4/d;)LV4/d;

    move-result-object p1

    check-cast p1, Lg4/B;

    sget-object p2, LS4/i;->a:LS4/i;

    invoke-virtual {p1, p2}, Lg4/B;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg4/B;->q:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LW4/a;->b:LW4/a;

    iget v1, p0, Lg4/B;->r:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    sget-object p1, Lh4/c;->a:Lh4/c;

    iput v2, p0, Lg4/B;->r:I

    invoke-virtual {p1, p0}, Lh4/c;->b(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto/16 :goto_4

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lg4/B;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE3/j;

    new-instance v2, Lh4/e;

    invoke-direct {v2, v0}, Lh4/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App Quality Sessions session changed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "FirebaseCrashlytics"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "FirebaseCrashlytics"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v1, v1, LE3/j;->b:LE3/i;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, LE3/i;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, LE3/i;->a:LK3/c;

    iget-object v3, v1, LE3/i;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0}, LE3/i;->a(LK3/c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, LE3/i;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v1

    const-string v1, "SessionLifecycleClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notified "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lh4/d;->b:Lh4/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of new session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    sget-object v0, LS4/i;->a:LS4/i;

    :goto_4
    return-object v0

    :pswitch_0
    sget-object v0, LW4/a;->b:LW4/a;

    iget v1, p0, Lg4/B;->r:I

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-ne v1, v2, :cond_6

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, Lg4/B;->s:Ljava/lang/Object;

    check-cast p1, Lg4/E;

    iget-object v1, p1, Lg4/E;->d:LY1/c;

    new-instance v3, LT/y;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, LT/y;-><init>(ILjava/lang/Object;)V

    iput v2, p0, Lg4/B;->r:I

    invoke-virtual {v1, v3, p0}, LY1/c;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    sget-object v0, LS4/i;->a:LS4/i;

    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
