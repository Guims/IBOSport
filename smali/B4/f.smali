.class public final synthetic LB4/f;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LB4/s;


# direct methods
.method public synthetic constructor <init>(LB4/s;I)V
    .locals 0

    iput p2, p0, LB4/f;->b:I

    iput-object p1, p0, LB4/f;->q:LB4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 9

    iget v0, p0, LB4/f;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/f;->q:LB4/s;

    iget-object v1, v0, LB4/s;->u0:[I

    iget-object v2, v0, LB4/s;->s0:Lr1/i;

    iget-object v3, v0, LB4/s;->o0:Lio/realm/T;

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Lr1/i;->l(ILjava/util/List;)V

    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LB4/f;->q:LB4/s;

    iget-object v1, v0, LB4/s;->s0:Lr1/i;

    iget-object v0, v0, LB4/s;->o0:Lio/realm/T;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lr1/i;->l(ILjava/util/List;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, p0, LB4/f;->q:LB4/s;

    iget-object v1, v0, LB4/s;->s0:Lr1/i;

    iget-object v0, v0, LB4/s;->o0:Lio/realm/T;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lr1/i;->l(ILjava/util/List;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, LB4/f;->q:LB4/s;

    iget-object v1, v0, LB4/s;->u0:[I

    iget-boolean v2, v0, LB4/s;->D0:Z

    invoke-virtual {v0, v2}, LB4/s;->t0(Z)V

    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Lio/realm/T;->size()I

    move-result v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x0

    if-le v2, v5, :cond_3

    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v7, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v7, v5}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/EPGChannel;

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, LB4/s;->o0:Lio/realm/T;

    aget v8, v1, v4

    invoke-virtual {v7, v8}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lib/player/models/EPGChannel;

    invoke-virtual {v7}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v7}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    aput v6, v1, v4

    :cond_3
    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Lio/realm/T;->size()I

    move-result v2

    aget v5, v1, v4

    if-le v2, v5, :cond_4

    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2, v5}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    aget v5, v1, v4

    const/4 v7, 0x3

    invoke-virtual {v0, v2, v5, v7}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Lio/realm/T;->size()I

    move-result v2

    aget v5, v1, v4

    if-gt v2, v5, :cond_5

    aput v6, v1, v4

    :cond_5
    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {v0, v2}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    iget-object v2, v0, LB4/s;->o0:Lio/realm/T;

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LB4/s;->A0:Ljava/lang/String;

    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, LB4/s;->E0:Landroid/os/Handler;

    iget-object v5, v0, LB4/s;->G0:LB4/b;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {v0, v2}, LB4/s;->Y(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3}, LB4/s;->w0(Ljava/util/List;)V

    :goto_2
    invoke-virtual {v0}, LB4/s;->E0()V

    aget v2, v1, v4

    invoke-virtual {v0, v2}, LB4/s;->U(I)V

    iget-object v2, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_3

    :cond_7
    iget-object v2, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_8
    :goto_3
    iget-object v0, v0, LB4/s;->v0:[I

    aget v2, v1, v6

    aput v2, v0, v6

    aget v1, v1, v4

    aput v1, v0, v4

    :goto_4
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
