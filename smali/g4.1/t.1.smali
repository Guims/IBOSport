.class public final Lg4/t;
.super Ljava/lang/Object;

# interfaces
.implements Lj4/b;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg4/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LY3/e;LX4/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lg4/w;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg4/w;

    iget v1, v0, Lg4/w;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg4/w;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg4/w;

    invoke-direct {v0, p0, p2}, Lg4/w;-><init>(Lg4/t;LX4/c;)V

    :goto_0
    iget-object p2, v0, Lg4/w;->q:Ljava/lang/Object;

    iget v1, v0, Lg4/w;->s:I

    const-string v2, ""

    const-string v3, "InstallationId"

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    iget-object p1, v0, Lg4/w;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p2

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lg4/w;->b:Ljava/lang/Object;

    check-cast p1, LY3/e;

    :try_start_1
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_3
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    :try_start_2
    move-object p2, p1

    check-cast p2, LY3/d;

    invoke-virtual {p2}, LY3/d;->d()LL2/r;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v1, "firebaseInstallations.getToken(false)"

    invoke-static {p1, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, v0, Lg4/w;->b:Ljava/lang/Object;

    iput v5, v0, Lg4/w;->s:I

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->b(LL2/r;Lg4/w;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p1, v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    :try_start_4
    check-cast p2, LY3/a;

    iget-object p2, p2, LY3/a;->a:Ljava/lang/String;

    const-string v1, "{\n          firebaseInst\u2026).await().token\n        }"

    invoke-static {p2, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    const-string v1, "Error getting authentication token."

    invoke-static {v3, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p2, p1

    move-object p1, v2

    :goto_3
    :try_start_5
    check-cast p2, LY3/d;

    invoke-virtual {p2}, LY3/d;->c()LL2/r;

    move-result-object p2

    const-string v1, "firebaseInstallations.id"

    invoke-static {p2, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lg4/w;->b:Ljava/lang/Object;

    iput v4, v0, Lg4/w;->s:I

    invoke-static {p2, v0}, Landroid/support/v4/media/session/b;->b(LL2/r;Lg4/w;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_5

    :goto_4
    return-object v6

    :cond_5
    :goto_5
    const-string v0, "{\n          firebaseInst\u2026ions.id.await()\n        }"

    invoke-static {p2, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, p2

    goto :goto_7

    :goto_6
    const-string v0, "Error getting Firebase installation id ."

    invoke-static {v3, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    new-instance p2, Lg4/x;

    invoke-direct {p2, v2, p1}, Lg4/x;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg4/t;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lg4/W;->a:Lg4/W;

    return-object v0

    :pswitch_0
    sget-object v0, Lg4/V;->a:Lg4/V;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
