.class public final LB4/n;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LB4/s;


# direct methods
.method public synthetic constructor <init>(LB4/s;I)V
    .locals 0

    iput p2, p0, LB4/n;->a:I

    iput-object p1, p0, LB4/n;->b:LB4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, LB4/n;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lio/realm/T;

    iget-object v0, p0, LB4/n;->b:LB4/s;

    iget-object v1, v0, LB4/s;->s0:Lr1/i;

    iget-object v2, v0, LB4/s;->u0:[I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, p1}, Lr1/i;->l(ILjava/util/List;)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v2, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v2, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/realm/T;->e()V

    return-void

    :pswitch_0
    check-cast p1, Lio/realm/T;

    iget-object v0, p0, LB4/n;->b:LB4/s;

    iget-object v1, v0, LB4/s;->s0:Lr1/i;

    iget-object v2, v0, LB4/s;->u0:[I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, p1}, Lr1/i;->l(ILjava/util/List;)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v2, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v2, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/realm/T;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
