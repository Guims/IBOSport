.class public final Lg4/F;
.super Ljava/lang/Object;

# interfaces
.implements Lj4/b;
.implements Ll2/b;


# instance fields
.field public final synthetic b:I

.field public final q:LR4/a;

.field public final r:LR4/a;


# direct methods
.method public synthetic constructor <init>(LR4/a;LR4/a;I)V
    .locals 0

    iput p3, p0, Lg4/F;->b:I

    iput-object p1, p0, Lg4/F;->q:LR4/a;

    iput-object p2, p0, Lg4/F;->r:LR4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lg4/F;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v2, Lh3/e;

    const/16 v0, 0x1d

    invoke-direct {v2, v0}, Lh3/e;-><init>(I)V

    new-instance v3, LW3/e;

    invoke-direct {v3, v0}, LW3/e;-><init>(I)V

    iget-object v0, p0, Lg4/F;->q:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lq2/h;

    move-object v5, v0

    check-cast v5, Lq2/j;

    sget-object v4, Lq2/a;->f:Lq2/a;

    iget-object v6, p0, Lg4/F;->r:LR4/a;

    invoke-direct/range {v1 .. v6}, Lq2/h;-><init>(Ls2/a;Ls2/a;Lq2/a;Lq2/j;LR4/a;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lg4/F;->q:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/m;

    iget-object v1, p0, Lg4/F;->r:LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/m;

    new-instance v2, Lk4/h;

    invoke-direct {v2, v0, v1}, Lk4/h;-><init>(Lk4/m;Lk4/m;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lg4/F;->q:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/b;

    iget-object v1, p0, Lg4/F;->r:LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV4/i;

    new-instance v2, Lk4/e;

    invoke-direct {v2, v0, v1}, Lk4/e;-><init>(Lg4/b;LV4/i;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lg4/F;->q:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/V;

    iget-object v1, p0, Lg4/F;->r:LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg4/W;

    new-instance v2, Lg4/N;

    invoke-direct {v2, v0, v1}, Lg4/N;-><init>(Lg4/V;Lg4/W;)V

    return-object v2

    :pswitch_3
    iget-object v0, p0, Lg4/F;->q:LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV4/i;

    iget-object v1, p0, Lg4/F;->r:LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT/h;

    new-instance v2, Lg4/E;

    invoke-direct {v2, v0, v1}, Lg4/E;-><init>(LV4/i;LT/h;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
