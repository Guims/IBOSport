.class public final synthetic Lib/player/pages/catchup/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lib/player/pages/catchup/e;


# direct methods
.method public native synthetic constructor <init>(Lib/player/pages/catchup/e;I)V
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lib/player/pages/catchup/d;->a:I

    check-cast p1, Lio/realm/T;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/catchup/d;->b:Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Lr1/i;->l(ILjava/util/List;)V

    iget-object v0, v0, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v0, v0, Lx4/a;->D:Lib/player/base/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    invoke-virtual {p1}, Lio/realm/T;->e()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/catchup/d;->b:Lib/player/pages/catchup/e;

    invoke-virtual {v0}, Lib/player/pages/catchup/e;->T()V

    invoke-virtual {p1}, Lio/realm/T;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
