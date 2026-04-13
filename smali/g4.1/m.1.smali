.class public final Lg4/m;
.super Ljava/lang/Object;

# interfaces
.implements Lj4/b;


# instance fields
.field public final synthetic b:I

.field public final q:Lj4/c;


# direct methods
.method public synthetic constructor <init>(Lj4/c;I)V
    .locals 0

    iput p2, p0, Lg4/m;->b:I

    iput-object p1, p0, Lg4/m;->q:Lj4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg4/m;->b:I

    const-string v1, "appContext"

    iget-object v2, p0, Lg4/m;->q:Lj4/c;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lj4/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lk4/a;

    invoke-direct {v1, v0}, Lk4/a;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_0
    iget-object v0, v2, Lj4/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lg4/T;

    invoke-direct {v1, v0}, Lg4/T;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_1
    iget-object v0, v2, Lj4/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LL2/o;

    sget-object v2, Lg4/p;->r:Lg4/p;

    invoke-direct {v1, v2}, LL2/o;-><init>(Ld5/l;)V

    new-instance v2, Lg4/q;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lg4/q;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, LX/f;->a(LL2/o;Ld5/a;)LX/d;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v2, Lj4/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LL2/o;

    sget-object v2, Lg4/p;->q:Lg4/p;

    invoke-direct {v1, v2}, LL2/o;-><init>(Ld5/l;)V

    new-instance v2, Lg4/q;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lg4/q;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, LX/f;->a(LL2/o;Ld5/a;)LX/d;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, v2, Lj4/c;->b:Ljava/lang/Object;

    check-cast v0, Lv3/e;

    const-string v1, "firebaseApp"

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lg4/I;->a:Lg4/I;

    invoke-static {v0}, Lg4/I;->a(Lv3/e;)Lg4/b;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v2, Lj4/c;->b:Ljava/lang/Object;

    check-cast v0, LX3/b;

    new-instance v1, Lg4/l;

    invoke-direct {v1, v0}, Lg4/l;-><init>(LX3/b;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
