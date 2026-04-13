.class public final synthetic LB4/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/O;
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:LB4/s;


# direct methods
.method public synthetic constructor <init>(LB4/s;)V
    .locals 0

    iput-object p1, p0, LB4/h;->b:LB4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lib/player/models/EPGChannel;)V
    .locals 7

    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    iget-object v0, p0, LB4/h;->b:LB4/s;

    invoke-virtual {v0}, LB4/s;->q0()V

    iget-object v1, v0, LB4/s;->u0:[I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, LB4/s;->o0:Lio/realm/T;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/EPGChannel;

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_2

    :cond_2
    iget-object v4, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/f;->e0(I)V

    :goto_2
    invoke-virtual {v0, p1}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    iget-object p1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LB4/s;->w0(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {v0, p1}, LB4/s;->c0(Ljava/lang/String;)V

    :goto_3
    aget p1, v1, v2

    invoke-virtual {v0, p1}, LB4/s;->U(I)V

    iget-object p1, v0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-virtual {v0, p1}, LB4/s;->x0(Z)V

    iget-object p1, v0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LB4/s;->E0:Landroid/os/Handler;

    iget-object v1, v0, LB4/s;->F0:LB4/l;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LB4/s;->k0()V

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, LB4/h;->b:LB4/s;

    iget-object v1, v0, LB4/s;->u0:[I

    iget-object v2, v0, LB4/s;->n0:Ljava/util/List;

    iget-object v3, v0, LB4/s;->w0:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resume_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, LB4/s;->s0:Lr1/i;

    iget v3, v2, Lr1/i;->e:I

    iput v4, v2, Lr1/i;->e:I

    invoke-virtual {v2, v3}, Lv1/y;->e(I)V

    invoke-virtual {v2, v4}, Lv1/y;->e(I)V

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return-void

    :cond_0
    iget-object v0, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    return-void

    :cond_1
    iget-object v0, v0, LB4/s;->r0:Ls4/z;

    invoke-virtual {v0, v4}, Lv1/y;->e(I)V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    const-string v0, "refresh"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, LB4/h;->b:LB4/s;

    invoke-virtual {p1}, LB4/s;->j0()V

    invoke-virtual {p1}, LB4/s;->V()V

    :cond_0
    return-void
.end method
