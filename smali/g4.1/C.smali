.class public final Lg4/C;
.super LX4/g;

# interfaces
.implements Ld5/q;


# instance fields
.field public q:I

.field public synthetic r:Lp5/c;

.field public synthetic s:Ljava/lang/Throwable;


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lp5/c;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, LV4/d;

    new-instance v0, Lg4/C;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p3}, LX4/g;-><init>(ILV4/d;)V

    iput-object p1, v0, Lg4/C;->r:Lp5/c;

    iput-object p2, v0, Lg4/C;->s:Ljava/lang/Throwable;

    sget-object p1, LS4/i;->a:LS4/i;

    invoke-virtual {v0, p1}, Lg4/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg4/C;->q:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, Lg4/C;->r:Lp5/c;

    iget-object v0, p0, Lg4/C;->s:Ljava/lang/Throwable;

    const-string v2, "FirebaseSessionsRepo"

    const-string v3, "Error reading stored session data."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, LX/b;

    invoke-direct {v0, v1}, LX/b;-><init>(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lg4/C;->r:Lp5/c;

    iput v1, p0, Lg4/C;->q:I

    invoke-interface {p1, v0, p0}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
