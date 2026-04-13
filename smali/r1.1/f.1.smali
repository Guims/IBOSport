.class public final Lr1/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Lr1/I;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Lr1/r;


# direct methods
.method public constructor <init>(Lr1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/f;->b:Lr1/r;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lr1/f;->b:Lr1/r;

    iget-object v1, v0, Lr1/r;->L:Landroid/widget/ImageView;

    iget-object v2, v0, Lr1/r;->Q:Landroid/view/View;

    iget-object v3, v0, Lr1/r;->P:Landroid/view/View;

    iget-object v4, v0, Lr1/r;->O:Landroid/view/View;

    iget-object v5, v0, Lr1/r;->b:Lr1/w;

    iget-object v6, v0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v5}, Lr1/w;->g()V

    iget-object v7, v0, Lr1/r;->C:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_1

    const/16 p1, 0x9

    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, Landroidx/media3/common/Player;->seekToNext()V

    return-void

    :cond_1
    iget-object v7, v0, Lr1/r;->B:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_2

    const/4 p1, 0x7

    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, Landroidx/media3/common/Player;->seekToPrevious()V

    return-void

    :cond_2
    iget-object v7, v0, Lr1/r;->E:Landroid/view/View;

    if-ne v7, p1, :cond_3

    invoke-interface {v6}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    const/16 p1, 0xc

    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, Landroidx/media3/common/Player;->seekForward()V

    return-void

    :cond_3
    iget-object v7, v0, Lr1/r;->F:Landroid/view/View;

    if-ne v7, p1, :cond_4

    const/16 p1, 0xb

    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, Landroidx/media3/common/Player;->seekBack()V

    return-void

    :cond_4
    iget-object v7, v0, Lr1/r;->D:Landroid/widget/ImageView;

    const/4 v8, 0x1

    if-ne v7, p1, :cond_6

    iget-boolean p1, v0, Lr1/r;->C0:Z

    invoke-static {v6, p1}, Lk0/C;->a0(Landroidx/media3/common/Player;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v6}, Lk0/C;->H(Landroidx/media3/common/Player;)Z

    return-void

    :cond_5
    invoke-interface {v6, v8}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, Landroidx/media3/common/Player;->pause()V

    return-void

    :cond_6
    iget-object v7, v0, Lr1/r;->I:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_c

    const/16 p1, 0xf

    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result p1

    iget v0, v0, Lr1/r;->H0:I

    move v1, v8

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_b

    add-int v3, p1, v1

    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_a

    if-eq v3, v8, :cond_8

    if-eq v3, v2, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_8
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    move p1, v3

    :cond_b
    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    return-void

    :cond_c
    iget-object v7, v0, Lr1/r;->J:Landroid/widget/ImageView;

    if-ne v7, p1, :cond_d

    const/16 p1, 0xe

    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v6}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-interface {v6, p1}, Landroidx/media3/common/Player;->setShuffleModeEnabled(Z)V

    return-void

    :cond_d
    if-ne v4, p1, :cond_e

    invoke-virtual {v5}, Lr1/w;->f()V

    iget-object p1, v0, Lr1/r;->u:Lib/player/pages/e;

    invoke-virtual {v0, p1, v4}, Lr1/r;->d(Lv1/y;Landroid/view/View;)V

    return-void

    :cond_e
    if-ne v3, p1, :cond_f

    invoke-virtual {v5}, Lr1/w;->f()V

    iget-object p1, v0, Lr1/r;->v:Lr1/i;

    invoke-virtual {v0, p1, v3}, Lr1/r;->d(Lv1/y;Landroid/view/View;)V

    return-void

    :cond_f
    if-ne v2, p1, :cond_10

    invoke-virtual {v5}, Lr1/w;->f()V

    iget-object p1, v0, Lr1/r;->x:Lr1/e;

    invoke-virtual {v0, p1, v2}, Lr1/r;->d(Lv1/y;Landroid/view/View;)V

    return-void

    :cond_10
    if-ne v1, p1, :cond_11

    invoke-virtual {v5}, Lr1/w;->f()V

    iget-object p1, v0, Lr1/r;->w:Lr1/m;

    invoke-virtual {v0, p1, v1}, Lr1/r;->d(Lv1/y;Landroid/view/View;)V

    :cond_11
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lr1/f;->b:Lr1/r;

    iget-boolean v1, v0, Lr1/r;->N0:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lr1/r;->b:Lr1/w;

    invoke-virtual {v0}, Lr1/w;->g()V

    :cond_0
    return-void
.end method

.method public final onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 4

    const/4 p1, 0x4

    const/4 v0, 0x5

    const/16 v1, 0xd

    filled-new-array {p1, v0, v1}, [I

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v2

    iget-object v3, p0, Lr1/f;->b:Lr1/r;

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lr1/r;->m()V

    :cond_0
    const/4 v2, 0x7

    filled-new-array {p1, v0, v2, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Lr1/r;->o()V

    :cond_1
    const/16 p1, 0x8

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lr1/r;->p()V

    :cond_2
    const/16 p1, 0x9

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lr1/r;->r()V

    :cond_3
    new-array p1, v2, [I

    fill-array-data p1, :array_0

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Lr1/r;->l()V

    :cond_4
    const/16 p1, 0xb

    const/4 v0, 0x0

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v3}, Lr1/r;->s()V

    :cond_5
    const/16 p1, 0xc

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v3}, Lr1/r;->n()V

    :cond_6
    const/4 p1, 0x2

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v3}, Lr1/r;->t()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method
