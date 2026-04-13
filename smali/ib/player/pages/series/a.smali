.class public final synthetic Lib/player/pages/series/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/series/h;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/series/h;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/a;->b:I

    iput-object p1, p0, Lib/player/pages/series/a;->q:Lib/player/pages/series/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lib/player/pages/series/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/series/a;->q:Lib/player/pages/series/h;

    iget-object v1, v0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    iget v0, v0, Lib/player/pages/series/h;->n0:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/series/a;->q:Lib/player/pages/series/h;

    iget-object v1, v0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v2, v0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v2}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v2

    iget v0, v0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/Season;

    invoke-virtual {v0}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lib/player/pages/series/a;->q:Lib/player/pages/series/h;

    iget-object v1, v0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v0, v0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lib/player/pages/series/a;->q:Lib/player/pages/series/h;

    iget-object v0, v0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, Lib/player/pages/series/a;->q:Lib/player/pages/series/h;

    iget-object v0, v0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
