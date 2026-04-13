.class public final synthetic Lib/player/pages/catchup/c;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/catchup/e;


# direct methods
.method public native synthetic constructor <init>(Lib/player/pages/catchup/e;I)V
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lib/player/pages/catchup/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/catchup/c;->q:Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    iget-object v2, v0, Lib/player/pages/catchup/e;->p0:Lio/realm/T;

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lr1/i;->l(ILjava/util/List;)V

    iget-object v0, v0, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v0, v0, Lx4/a;->D:Lib/player/base/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/catchup/c;->q:Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    iget-object v0, v0, Lib/player/pages/catchup/e;->p0:Lio/realm/T;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lr1/i;->l(ILjava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lib/player/pages/catchup/c;->q:Lib/player/pages/catchup/e;

    invoke-virtual {v0}, Lib/player/pages/catchup/e;->T()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lib/player/pages/catchup/c;->q:Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    iget-object v0, v0, Lib/player/pages/catchup/e;->p0:Lio/realm/T;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lr1/i;->l(ILjava/util/List;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lib/player/pages/catchup/c;->q:Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    iget-object v0, v0, Lib/player/pages/catchup/e;->p0:Lio/realm/T;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lr1/i;->l(ILjava/util/List;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
