.class public final LT/y;
.super Ljava/lang/Object;

# interfaces
.implements Lp5/c;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LT/y;->b:I

    iput-object p2, p0, LT/y;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT/y;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, LT/y;->q:Ljava/lang/Object;

    check-cast p2, Le5/m;

    iput-object p1, p2, Le5/m;->b:Ljava/lang/Object;

    new-instance p1, Lq5/a;

    invoke-direct {p1, p0}, Lq5/a;-><init>(Lp5/c;)V

    throw p1

    :pswitch_0
    check-cast p1, Lg4/u;

    iget-object p2, p0, LT/y;->q:Ljava/lang/Object;

    check-cast p2, Lg4/E;

    iget-object p2, p2, Lg4/E;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :pswitch_1
    check-cast p1, LS4/i;

    iget-object p1, p0, LT/y;->q:Ljava/lang/Object;

    check-cast p1, LT/I;

    iget-object v0, p1, LT/I;->h:LL2/o;

    invoke-virtual {v0}, LL2/o;->q()LT/T;

    move-result-object v0

    instance-of v0, v0, LT/J;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, LT/I;->e(LT/I;ZLV4/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LS4/i;->a:LS4/i;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
