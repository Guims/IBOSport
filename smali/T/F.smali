.class public final LT/F;
.super Le5/h;

# interfaces
.implements Ld5/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LT/F;->b:I

    iput-object p2, p0, LT/F;->q:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LT/F;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, LT/F;->q:Ljava/lang/Object;

    check-cast p1, Lu5/h;

    invoke-virtual {p1}, Lu5/h;->b()V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, LT/F;->q:Ljava/lang/Object;

    check-cast v0, LT/I;

    if-eqz p1, :cond_0

    iget-object v1, v0, LT/I;->h:LL2/o;

    new-instance v2, LT/J;

    invoke-direct {v2, p1}, LT/J;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LL2/o;->F(LT/T;)V

    :cond_0
    iget-object p1, v0, LT/I;->j:LS4/g;

    iget-object p1, p1, LS4/g;->q:Ljava/lang/Object;

    sget-object v1, LS4/h;->a:LS4/h;

    if-eq p1, v1, :cond_1

    iget-object p1, v0, LT/I;->j:LS4/g;

    invoke-virtual {p1}, LS4/g;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV/i;

    invoke-virtual {p1}, LV/i;->close()V

    :cond_1
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
