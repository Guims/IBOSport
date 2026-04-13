.class public final LF4/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LF4/e;


# direct methods
.method public synthetic constructor <init>(LF4/e;I)V
    .locals 0

    iput p2, p0, LF4/d;->a:I

    iput-object p1, p0, LF4/d;->b:LF4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LF4/d;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lio/realm/T;

    iget-object v0, p0, LF4/d;->b:LF4/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->I:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LF4/e;->t0:Ls4/b;

    iput-object p1, v1, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Lv1/y;->d()V

    iget-object p1, v0, LF4/e;->n0:Ljava/util/ArrayList;

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->I:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LF4/e;->t0:Ls4/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Lv1/y;->d()V

    :goto_0
    iget-boolean p1, v0, LF4/e;->A0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, v0, LF4/e;->A0:Z

    :cond_1
    invoke-static {v0}, LF4/e;->T(LF4/e;)V

    return-void

    :pswitch_0
    check-cast p1, Lio/realm/T;

    iget-object v0, p0, LF4/d;->b:LF4/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->H:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LF4/e;->s0:Ls4/b;

    iput-object p1, v1, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Lv1/y;->d()V

    iget-object p1, v0, LF4/e;->n0:Ljava/util/ArrayList;

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->H:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LF4/e;->s0:Ls4/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Lv1/y;->d()V

    :goto_1
    iget-boolean p1, v0, LF4/e;->z0:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, v0, LF4/e;->z0:Z

    :cond_3
    invoke-static {v0}, LF4/e;->T(LF4/e;)V

    return-void

    :pswitch_1
    check-cast p1, Lio/realm/T;

    iget-object v0, p0, LF4/d;->b:LF4/e;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->G:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LF4/e;->r0:Ls4/b;

    iput-object p1, v1, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Lv1/y;->d()V

    iget-object p1, v0, LF4/e;->n0:Ljava/util/ArrayList;

    iget-object v1, v0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->G:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LF4/e;->r0:Ls4/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Lv1/y;->d()V

    :goto_2
    iget-boolean p1, v0, LF4/e;->y0:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, v0, LF4/e;->y0:Z

    :cond_5
    invoke-static {v0}, LF4/e;->T(LF4/e;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
