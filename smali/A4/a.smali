.class public final synthetic LA4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, LA4/a;->b:I

    iput-object p1, p0, LA4/a;->r:Ljava/lang/Object;

    iput p2, p0, LA4/a;->q:I

    iput-object p3, p0, LA4/a;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, LA4/a;->b:I

    iput-object p1, p0, LA4/a;->r:Ljava/lang/Object;

    iput-object p2, p0, LA4/a;->s:Ljava/lang/Object;

    iput p3, p0, LA4/a;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, LA4/a;->b:I

    const/4 v1, 0x1

    const-string v2, " not found in GridView "

    const-string v3, "ViewHolder for position "

    const-string v4, "FocusState"

    iget v5, p0, LA4/a;->q:I

    iget-object v6, p0, LA4/a;->s:Ljava/lang/Object;

    iget-object v7, p0, LA4/a;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v7, Lu0/m;

    iget v0, v7, Lu0/m;->a:I

    iget-object v1, v7, Lu0/m;->b:Landroidx/media3/exoplayer/source/E;

    invoke-interface {v6, v0, v1, v5}, Lu0/n;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/E;I)V

    return-void

    :pswitch_0
    check-cast v7, Lt1/a;

    iget-object v0, v7, Lt1/a;->b:Lt1/c;

    invoke-interface {v0, v5, v6}, Lt1/c;->s(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v6, Lk0/n;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/p;

    iget-boolean v3, v2, Lk0/p;->d:Z

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-eq v5, v3, :cond_1

    iget-object v3, v2, Lk0/p;->b:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v3, v5}, Landroidx/media3/common/FlagSet$Builder;->add(I)Landroidx/media3/common/FlagSet$Builder;

    :cond_1
    iput-boolean v1, v2, Lk0/p;->c:Z

    iget-object v2, v2, Lk0/p;->a:Ljava/lang/Object;

    invoke-interface {v6, v2}, Lk0/n;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_2
    check-cast v7, Lib/player/pages/series/j;

    check-cast v6, Lib/player/base/view/LiveVerticalGridView;

    sget-object v0, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lv1/G;->E0(I)V

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    invoke-static {v3, v5, v2}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lib/player/pages/series/j;->x0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_3
    check-cast v7, LF4/e;

    check-cast v6, Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lv1/G;->E0(I)V

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_4
    invoke-static {v3, v5, v2}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, LF4/e;->w0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :pswitch_4
    check-cast v7, LD4/x;

    check-cast v6, Lib/player/base/view/LiveVerticalGridView;

    sget-object v0, LD4/x;->D0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lv1/G;->E0(I)V

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_5
    invoke-static {v3, v5, v2}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, LD4/x;->x0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :pswitch_5
    check-cast v7, LA4/p;

    check-cast v6, [I

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v0

    invoke-virtual {v0, v5}, Lv1/G;->E0(I)V

    :cond_6
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    check-cast v0, LA4/j;

    if-eqz v0, :cond_a

    iget-object v2, v0, LA4/j;->u:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v3

    invoke-virtual {v3}, Lv1/y;->a()I

    move-result v3

    aget v5, v6, v4

    if-gt v3, v5, :cond_8

    :cond_7
    aput v4, v6, v4

    :cond_8
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v3

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Lv1/G;->E0(I)V

    :cond_9
    new-instance v3, LA/o;

    invoke-direct {v3, v0, v1, v6}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide/16 v0, 0x64

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
