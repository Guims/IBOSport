.class public final synthetic LA4/i;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LA4/j;


# direct methods
.method public synthetic constructor <init>(LA4/j;I)V
    .locals 0

    iput p2, p0, LA4/i;->a:I

    iput-object p1, p0, LA4/i;->b:LA4/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LA4/i;->a:I

    check-cast p1, Lio/realm/T;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA4/i;->b:LA4/j;

    iget-object v1, v0, LA4/j;->u:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v0, v0, LA4/j;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v2

    check-cast v2, LA4/o;

    iput-object p1, v2, LA4/o;->d:Ljava/util/List;

    invoke-virtual {v2}, Lv1/y;->d()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LA4/i;->b:LA4/j;

    iget-object v1, v0, LA4/j;->u:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v0, v0, LA4/j;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v2

    check-cast v2, LA4/o;

    iput-object p1, v2, LA4/o;->d:Ljava/util/List;

    invoke-virtual {v2}, Lv1/y;->d()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, LA4/i;->b:LA4/j;

    iget-object v1, v0, LA4/j;->u:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v0, v0, LA4/j;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v2

    check-cast v2, LA4/o;

    iput-object p1, v2, LA4/o;->d:Ljava/util/List;

    invoke-virtual {v2}, Lv1/y;->d()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
