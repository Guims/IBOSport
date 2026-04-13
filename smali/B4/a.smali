.class public final synthetic LB4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/base/BaseFragment;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lib/player/base/BaseFragment;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LB4/a;->b:I

    iput-object p1, p0, LB4/a;->q:Lib/player/base/BaseFragment;

    iput-object p2, p0, LB4/a;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 10

    iget v0, p0, LB4/a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, LB4/a;->r:Ljava/lang/Object;

    iget-object v4, p0, LB4/a;->q:Lib/player/base/BaseFragment;

    packed-switch v0, :pswitch_data_0

    check-cast v4, LD4/x;

    check-cast v3, Ld5/a;

    sget-object v0, LD4/x;->D0:Ljava/util/ArrayList;

    invoke-virtual {v4}, LD4/x;->V()V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ld5/a;->b()Ljava/lang/Object;

    :cond_0
    return-object v2

    :pswitch_0
    check-cast v4, LB4/s;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_0
    iget-object v0, v4, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, v4, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v0}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v5, v1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/EPGChannel;

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, v4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lib/player/base/helper/w;->i0(I)V

    return-object v2

    :pswitch_1
    check-cast v4, LB4/s;

    check-cast v3, Ljava/lang/Integer;

    iget-object v0, v4, LB4/s;->u0:[I

    iget-object v5, v4, LB4/s;->s0:Lr1/i;

    iget-object v6, v4, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v7, v4, LB4/s;->w0:[I

    aget v8, v7, v1

    const/4 v9, 0x1

    if-ne v3, v8, :cond_3

    aget v3, v7, v9

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {v5, v3, v6}, Lr1/i;->l(ILjava/util/List;)V

    iget-object v3, v4, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    aput v1, v0, v9

    invoke-virtual {v4}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v9

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_3

    :cond_4
    iget-object v1, v4, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v9

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_5
    :goto_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
