.class public final synthetic Lib/player/pages/catchup/a;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/q;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/catchup/e;


# direct methods
.method public native synthetic constructor <init>(Lib/player/pages/catchup/e;I)V
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lib/player/pages/catchup/a;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lib/player/models/CatchUpEpg;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, Lib/player/pages/catchup/a;->q:Lib/player/pages/catchup/e;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lib/player/models/CatchUpEpg;->getHas_archive()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p3

    const-class v1, Lib/player/pages/catchup/CatchUpPlayerActivity;

    invoke-direct {p1, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "position"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, v0, Lib/player/pages/catchup/e;->p0:Lio/realm/T;

    iget p3, v0, Lib/player/pages/catchup/e;->w0:I

    invoke-virtual {p2, p3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/EPGChannel;

    invoke-virtual {p2}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    const-string p3, "stream_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Lcom/google/gson/j;

    invoke-direct {p2}, Lcom/google/gson/j;-><init>()V

    iget-object p3, v0, Lib/player/pages/catchup/e;->r0:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "epg_model"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    const-string p2, "This program can not be play"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lib/player/pages/catchup/e;->C0:I

    iget-object p1, v0, Lib/player/pages/catchup/e;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x2

    aput p2, p1, p3

    iput p3, v0, Lib/player/pages/catchup/e;->y0:I

    iget-object p1, v0, Lib/player/pages/catchup/e;->x0:Lib/player/pages/MainActivity;

    iput-boolean v1, p1, Lib/player/pages/MainActivity;->y0:Z

    invoke-virtual {v0}, Lib/player/pages/catchup/e;->Y()V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    check-cast p1, Lib/player/models/CatchupModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, Lib/player/pages/catchup/a;->q:Lib/player/pages/catchup/e;

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lib/player/models/CatchupModel;->getEpgEvents()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lib/player/pages/catchup/e;->r0:Ljava/util/List;

    const/4 p1, -0x1

    move v2, p1

    move p3, v1

    :goto_1
    iget-object v3, v0, Lib/player/pages/catchup/e;->r0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_3

    iget-object v3, v0, Lib/player/pages/catchup/e;->r0:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/CatchUpEpg;

    invoke-virtual {v3}, Lib/player/models/CatchUpEpg;->getNow_playing()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v2, p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, p1, :cond_4

    iput v1, v0, Lib/player/pages/catchup/e;->C0:I

    goto :goto_2

    :cond_4
    iput v2, v0, Lib/player/pages/catchup/e;->C0:I

    :goto_2
    iget-object p1, v0, Lib/player/pages/catchup/e;->E0:Ls4/y;

    iget-object p3, v0, Lib/player/pages/catchup/e;->r0:Ljava/util/List;

    invoke-virtual {p1, p3}, Ls4/y;->k(Ljava/util/List;)V

    iget-object p1, v0, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object p1, p1, Lx4/a;->F:Lib/player/base/view/LiveVerticalGridView;

    iget p3, v0, Lib/player/pages/catchup/e;->C0:I

    invoke-virtual {p1, p3}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    iget-object p1, v0, Lib/player/pages/catchup/e;->E0:Ls4/y;

    iget p3, v0, Lib/player/pages/catchup/e;->C0:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p3}, Lv1/y;->e(I)V

    iget-object p1, v0, Lib/player/pages/catchup/e;->E0:Ls4/y;

    iput v2, p1, Ls4/y;->g:I

    invoke-virtual {p1, v2}, Lv1/y;->e(I)V

    goto :goto_3

    :cond_5
    iget-object p1, v0, Lib/player/pages/catchup/e;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v2, 0x3

    aput p3, p1, v2

    iput v2, v0, Lib/player/pages/catchup/e;->y0:I

    iget-object p1, v0, Lib/player/pages/catchup/e;->x0:Lib/player/pages/MainActivity;

    iput-boolean v1, p1, Lib/player/pages/MainActivity;->y0:Z

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lib/player/pages/catchup/e;->B0:I

    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    check-cast p1, Lib/player/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, Lib/player/pages/catchup/a;->q:Lib/player/pages/catchup/e;

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    iget p3, v0, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p3, v2, :cond_c

    sget-object p3, Lib/player/base/n;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v2, "lock_id"

    if-nez p3, :cond_8

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lib/player/pages/catchup/e;->v0:I

    sget p2, Lib/player/app/MyApp;->y:I

    add-int/lit8 p3, p2, -0x1

    if-le p1, p3, :cond_7

    iget-object p3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p3}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, p2

    if-ge p1, p3, :cond_7

    iget-object p1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object p1

    iget p3, v0, Lib/player/pages/catchup/e;->v0:I

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p2, p1}, Lib/player/base/helper/w;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Lib/player/base/helper/w;->f(Ljava/lang/String;Ljava/util/List;)Lio/realm/T;

    move-result-object p1

    iput-object p1, v0, Lib/player/pages/catchup/e;->p0:Lio/realm/T;

    new-instance p2, Lib/player/pages/catchup/d;

    const/4 p3, 0x1

    invoke-direct {p2, v0, p3}, Lib/player/pages/catchup/d;-><init>(Lib/player/pages/catchup/e;I)V

    invoke-virtual {p1, p2}, Lio/realm/T;->b(Lio/realm/H;)V

    goto :goto_5

    :cond_7
    new-instance p1, Lib/player/pages/catchup/c;

    const/4 p2, 0x4

    invoke-direct {p1, v0, p2}, Lib/player/pages/catchup/c;-><init>(Lib/player/pages/catchup/e;I)V

    invoke-virtual {v0, p1}, Lib/player/pages/catchup/e;->Z(Ld5/a;)V

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->K()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lib/player/pages/catchup/e;->X(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getStr_no_lock_channels()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lib/player/pages/catchup/e;->X(I)V

    goto :goto_5

    :cond_b
    iget-object p1, v0, Lib/player/pages/catchup/e;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    iput v1, v0, Lib/player/pages/catchup/e;->y0:I

    iget-object p1, v0, Lib/player/pages/catchup/e;->x0:Lib/player/pages/MainActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lib/player/pages/MainActivity;->y0:Z

    :cond_c
    :goto_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
