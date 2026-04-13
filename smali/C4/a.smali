.class public final synthetic LC4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/q;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LC4/b;


# direct methods
.method public synthetic constructor <init>(LC4/b;I)V
    .locals 0

    iput p2, p0, LC4/a;->b:I

    iput-object p1, p0, LC4/a;->q:LC4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LC4/a;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lib/player/models/CatchUpEpg;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, LC4/a;->q:LC4/b;

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lib/player/models/CatchUpEpg;->getHas_archive()I

    move-result p1

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p3

    const-class v1, Lib/player/pages/catchup/CatchUpPlayerActivity;

    invoke-direct {p1, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "position"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, v0, LC4/b;->A0:Lib/player/models/EPGChannel;

    invoke-virtual {p2}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    const-string p3, "stream_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Lcom/google/gson/j;

    invoke-direct {p2}, Lcom/google/gson/j;-><init>()V

    iget-object p3, v0, LC4/b;->p0:Ljava/util/List;

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

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, LC4/b;->u0:I

    iget-object p1, v0, LC4/b;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    iput v1, v0, LC4/b;->x0:I

    invoke-virtual {v0}, LC4/b;->U()V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    check-cast p1, Lib/player/models/CatchupModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, LC4/a;->q:LC4/b;

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lib/player/models/CatchupModel;->getEpgEvents()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, LC4/b;->p0:Ljava/util/List;

    const/4 p1, -0x1

    move v2, p1

    move p3, v1

    :goto_1
    iget-object v3, v0, LC4/b;->p0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_3

    iget-object v3, v0, LC4/b;->p0:Ljava/util/List;

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

    iput v1, v0, LC4/b;->u0:I

    goto :goto_2

    :cond_4
    iput v2, v0, LC4/b;->u0:I

    :goto_2
    iget-object p1, v0, LC4/b;->w0:Ls4/y;

    iget-object p3, v0, LC4/b;->p0:Ljava/util/List;

    invoke-virtual {p1, p3}, Ls4/y;->k(Ljava/util/List;)V

    iget-object p1, v0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    iget p3, v0, LC4/b;->u0:I

    invoke-virtual {p1, p3}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    iget-object p1, v0, LC4/b;->w0:Ls4/y;

    iget p3, v0, LC4/b;->u0:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p3}, Lv1/y;->e(I)V

    iget-object p1, v0, LC4/b;->w0:Ls4/y;

    iput v2, p1, Ls4/y;->g:I

    invoke-virtual {p1, v2}, Lv1/y;->e(I)V

    goto :goto_3

    :cond_5
    iget-object p1, v0, LC4/b;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p1, v1

    iput v1, v0, LC4/b;->x0:I

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, LC4/b;->t0:I

    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
