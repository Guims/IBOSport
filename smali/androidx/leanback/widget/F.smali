.class public final Landroidx/leanback/widget/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/F;->b:I

    iput-object p2, p0, Landroidx/leanback/widget/F;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget v0, p0, Landroidx/leanback/widget/F;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/leanback/widget/F;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/TrackSelectionView;

    iget-object v1, v0, Landroidx/media3/ui/TrackSelectionView;->v:Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/media3/ui/TrackSelectionView;->r:Landroid/widget/CheckedTextView;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    iput-boolean v3, v0, Landroidx/media3/ui/TrackSelectionView;->A:Z

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Landroidx/media3/ui/TrackSelectionView;->s:Landroid/widget/CheckedTextView;

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    iput-boolean v4, v0, Landroidx/media3/ui/TrackSelectionView;->A:Z

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2

    :cond_1
    iput-boolean v4, v0, Landroidx/media3/ui/TrackSelectionView;->A:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lr1/L;

    iget-object v5, v2, Lr1/L;->a:Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v5}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    iget v2, v2, Lr1/L;->b:I

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/TrackSelectionOverride;

    if-nez v7, :cond_3

    iget-boolean p1, v0, Landroidx/media3/ui/TrackSelectionView;->x:Z

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v2

    invoke-direct {p1, v6, v2}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    iget-object v7, v7, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lp3/H;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    iget-boolean v7, v0, Landroidx/media3/ui/TrackSelectionView;->w:Z

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroidx/media3/common/Tracks$Group;->isAdaptiveSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    if-nez v5, :cond_6

    iget-boolean v7, v0, Landroidx/media3/ui/TrackSelectionView;->x:Z

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroidx/media3/ui/TrackSelectionView;->u:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :cond_6
    :goto_1
    if-eqz p1, :cond_8

    if-eqz v3, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-direct {p1, v6, v8}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    if-nez p1, :cond_a

    if-eqz v5, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-direct {p1, v6, v8}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v2

    invoke-direct {p1, v6, v2}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/ui/TrackSelectionView;->a()V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/widget/F;->q:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->d0:Lk/U0;

    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_3

    :cond_b
    iget-object p1, p1, Lk/U0;->q:Lj/o;

    :goto_3
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lj/o;->collapseActionView()Z

    :cond_c
    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/leanback/widget/F;->q:Ljava/lang/Object;

    check-cast p1, Li/a;

    invoke-virtual {p1}, Li/a;->a()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/leanback/widget/F;->q:Ljava/lang/Object;

    check-cast v0, Lf/d;

    iget-object v1, v0, Lf/d;->i:Landroid/widget/Button;

    if-ne p1, v1, :cond_d

    iget-object v1, v0, Lf/d;->k:Landroid/os/Message;

    if-eqz v1, :cond_d

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_4

    :cond_d
    iget-object v1, v0, Lf/d;->l:Landroid/widget/Button;

    if-ne p1, v1, :cond_e

    iget-object v1, v0, Lf/d;->n:Landroid/os/Message;

    if-eqz v1, :cond_e

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_4

    :cond_e
    iget-object v1, v0, Lf/d;->o:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    iget-object p1, v0, Lf/d;->q:Landroid/os/Message;

    if-eqz p1, :cond_f

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_4

    :cond_f
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    iget-object p1, v0, Lf/d;->E:LR5/f;

    const/4 v1, 0x1

    iget-object v0, v0, Lf/d;->b:Lf/f;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_3
    iget-object p1, p0, Landroidx/leanback/widget/F;->q:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/datepicker/k;

    iget v0, p1, Lcom/google/android/material/datepicker/k;->n0:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/k;->Q(I)V

    goto :goto_5

    :cond_11
    if-ne v0, v1, :cond_12

    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/k;->Q(I)V

    :cond_12
    :goto_5
    return-void

    :pswitch_4
    iget-object p1, p0, Landroidx/leanback/widget/F;->q:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/SearchBar;

    iget-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->K:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->b()V

    goto :goto_6

    :cond_13
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->a()V

    :goto_6
    return-void

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
