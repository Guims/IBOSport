.class public final synthetic LB4/o;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB4/o;->b:I

    iput-object p2, p0, LB4/o;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LB4/o;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/o;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/j;

    iget-object v1, v0, Lib/player/pages/series/j;->q0:Lio/realm/T;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lib/player/pages/series/j;->q0:Lio/realm/T;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/SeriesModel;

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object v1

    new-instance v3, LA4/c;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v0}, LA4/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lib/player/pages/series/j;->T(Ljava/lang/String;Ld5/l;)V

    iget-object v0, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->F:Landroid/widget/ImageView;

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->H:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->N:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->S:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->Q:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->R:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LB4/o;->q:Ljava/lang/Object;

    check-cast v0, LE1/t;

    iget-object v0, v0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    iget-object v2, v0, Lib/player/pages/catchup/e;->p0:Lio/realm/T;

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lr1/i;->l(ILjava/util/List;)V

    iget-object v0, v0, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v0, v0, Lx4/a;->D:Lib/player/base/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, p0, LB4/o;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/j;

    invoke-virtual {v0}, Landroidx/activity/j;->reportFullyDrawn()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, LB4/o;->q:Ljava/lang/Object;

    check-cast v0, LE1/t;

    iget-object v0, v0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LD4/x;

    iget-object v1, v0, LD4/x;->o0:Ls4/J;

    iget v2, v1, Ls4/J;->j:I

    const/4 v3, -0x1

    iput v3, v1, Ls4/J;->j:I

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    iget v2, v1, Ls4/J;->j:I

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    invoke-virtual {v0}, LD4/x;->V()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, LB4/o;->q:Ljava/lang/Object;

    check-cast v0, LD4/x;

    iget-object v0, v0, LD4/x;->o0:Ls4/J;

    iget v1, v0, Ls4/J;->j:I

    const/4 v2, -0x1

    iput v2, v0, Ls4/J;->j:I

    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    iget v1, v0, Ls4/J;->j:I

    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, LB4/o;->q:Ljava/lang/Object;

    check-cast v0, LE1/t;

    iget-object v0, v0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LB4/s;

    iget-object v1, v0, LB4/s;->s0:Lr1/i;

    iget-object v2, v0, LB4/s;->u0:[I

    iget-object v3, v0, LB4/s;->o0:Lio/realm/T;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3}, Lr1/i;->l(ILjava/util/List;)V

    iget-object v1, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v2, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_2

    :cond_1
    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v2, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0

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
