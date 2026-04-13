.class public final synthetic LV4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LV4/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LV4/b;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LV4/i;

    check-cast p2, LV4/g;

    const-string v0, "acc"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, LV4/g;->getKey()LV4/h;

    move-result-object v0

    invoke-interface {p1, v0}, LV4/i;->r(LV4/h;)LV4/i;

    move-result-object p1

    sget-object v0, LV4/j;->b:LV4/j;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, LV4/e;->b:LV4/e;

    invoke-interface {p1, v1}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v2

    check-cast v2, LV4/f;

    if-nez v2, :cond_1

    new-instance v0, LV4/c;

    invoke-direct {v0, p1, p2}, LV4/c;-><init>(LV4/i;LV4/g;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, LV4/i;->r(LV4/h;)LV4/i;

    move-result-object p1

    if-ne p1, v0, :cond_2

    new-instance p1, LV4/c;

    invoke-direct {p1, p2, v2}, LV4/c;-><init>(LV4/i;LV4/g;)V

    move-object p2, p1

    goto :goto_1

    :cond_2
    new-instance v0, LV4/c;

    new-instance v1, LV4/c;

    invoke-direct {v1, p1, p2}, LV4/c;-><init>(LV4/i;LV4/g;)V

    invoke-direct {v0, v1, v2}, LV4/c;-><init>(LV4/i;LV4/g;)V

    goto :goto_0

    :goto_1
    return-object p2

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, LV4/g;

    const-string v0, "acc"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
