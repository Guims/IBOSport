.class public final synthetic LB4/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB4/u;->b:I

    iput-object p2, p0, LB4/u;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, LB4/u;->b:I

    const/16 v1, 0x8

    const/16 v2, 0x1a

    const/16 v3, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, LB4/u;->q:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v7, Lz4/B;

    invoke-virtual {v7, v6, v6}, Landroidx/fragment/app/m;->P(ZZ)V

    iget-object p1, v7, Lz4/B;->C0:Lz4/A;

    invoke-interface {p1}, Lz4/A;->f()V

    return-void

    :pswitch_0
    check-cast v7, Lz4/z;

    invoke-virtual {v7, v6, v6}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_1
    check-cast v7, Lz4/y;

    iget-object p1, v7, Lz4/y;->B0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v7, Lz4/y;->A0:Lz4/x;

    invoke-interface {p1}, Lz4/x;->i()V

    goto :goto_0

    :cond_0
    iget-object p1, v7, Lz4/y;->z0:Ljava/lang/String;

    iget-object v0, v7, Lz4/y;->B0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v7, v6, v6}, Landroidx/fragment/app/m;->P(ZZ)V

    iget-object p1, v7, Lz4/y;->A0:Lz4/x;

    invoke-interface {p1}, Lz4/x;->m()V

    goto :goto_0

    :cond_1
    iget-object p1, v7, Lz4/y;->A0:Lz4/x;

    invoke-interface {p1}, Lz4/x;->j()V

    iget-object p1, v7, Lz4/y;->B0:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_2
    check-cast v7, Lz4/u;

    invoke-virtual {v7, v6, v6}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_3
    check-cast v7, Lz4/i;

    invoke-virtual {v7, v6, v6}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_4
    check-cast v7, Lz4/f;

    iget-object p1, v7, Lz4/f;->Y0:Lz4/e;

    invoke-interface {p1}, Lz4/e;->a()V

    return-void

    :pswitch_5
    check-cast v7, Lr1/w;

    invoke-virtual {v7}, Lr1/w;->g()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b014c

    if-ne v0, v1, :cond_2

    iget-object p1, v7, Lr1/w;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b014b

    if-ne p1, v0, :cond_3

    iget-object p1, v7, Lr1/w;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void

    :pswitch_6
    check-cast v7, Lr1/m;

    iget-object p1, v7, Lr1/m;->f:Lr1/r;

    iget-object v0, p1, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    iget-object v1, p1, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setIgnoredTextSelectionFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object p1, p1, Lr1/r;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    return-void

    :pswitch_7
    check-cast v7, Lr1/k;

    iget-object p1, v7, Lr1/k;->x:Lr1/r;

    invoke-virtual {v7}, Lv1/X;->b()I

    move-result v0

    iget-object v1, p1, Lr1/r;->O:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p1, Lr1/r;->v:Lr1/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lr1/r;->d(Lv1/y;Landroid/view/View;)V

    goto :goto_2

    :cond_5
    if-ne v0, v5, :cond_6

    iget-object v0, p1, Lr1/r;->x:Lr1/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lr1/r;->d(Lv1/y;Landroid/view/View;)V

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lr1/r;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_2
    return-void

    :pswitch_8
    check-cast v7, Lr1/e;

    iget-object p1, v7, Lr1/e;->f:Lr1/r;

    iget-object v0, p1, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v0, :cond_8

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p1, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    iget-object v1, p1, Lr1/r;->y0:Landroidx/media3/common/Player;

    sget v2, Lk0/C;->a:I

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object v0, p1, Lr1/r;->u:Lib/player/pages/e;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object p1, p1, Lr1/r;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_8
    :goto_3
    return-void

    :pswitch_9
    check-cast v7, Lr1/r;

    iget-boolean p1, v7, Lr1/r;->z0:Z

    xor-int/2addr p1, v5

    invoke-virtual {v7, p1}, Lr1/r;->k(Z)V

    return-void

    :pswitch_a
    check-cast v7, Ll3/t;

    iget-object p1, v7, Ll3/t;->f:Landroid/widget/EditText;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iget-object v0, v7, Ll3/t;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_a

    iget-object v0, v7, Ll3/t;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_4

    :cond_a
    iget-object v0, v7, Ll3/t;->f:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_4
    if-ltz p1, :cond_b

    iget-object v0, v7, Ll3/t;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_b
    invoke-virtual {v7}, Ll3/n;->p()V

    :goto_5
    return-void

    :pswitch_b
    check-cast v7, Ll3/j;

    invoke-virtual {v7}, Ll3/j;->t()V

    return-void

    :pswitch_c
    check-cast v7, Ll3/d;

    iget-object p1, v7, Ll3/d;->i:Landroid/widget/EditText;

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_d
    invoke-virtual {v7}, Ll3/n;->p()V

    :goto_6
    return-void

    :pswitch_d
    check-cast v7, Lib/player/pages/series/SeriesPlayerActivity;

    sget p1, Lib/player/pages/series/SeriesPlayerActivity;->V0:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_f

    invoke-virtual {v7}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_7

    :cond_e
    invoke-virtual {v7}, Lib/player/base/l;->x()V

    goto :goto_7

    :cond_f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    return-void

    :pswitch_e
    check-cast v7, Lib/player/pages/catchup/CatchUpPlayerActivity;

    iget-object p1, v7, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_10

    iget-object p1, v7, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v7, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object v0, v7, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Lib/player/pages/catchup/CatchUpPlayerActivity;->w()V

    goto :goto_8

    :cond_10
    iget-object p1, v7, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    return-void

    :pswitch_f
    check-cast v7, Lcom/google/android/material/datepicker/l;

    invoke-virtual {v7}, Lcom/google/android/material/datepicker/l;->T()V

    throw v4

    :pswitch_10
    check-cast v7, LF4/e;

    invoke-virtual {v7}, Landroidx/fragment/app/t;->I()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    return-void

    :pswitch_11
    check-cast v7, Lib/player/pages/movie/MoviePlayerActivity;

    sget p1, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_12

    invoke-virtual {v7}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_9

    :cond_11
    invoke-virtual {v7}, Lib/player/base/l;->x()V

    goto :goto_9

    :cond_12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    return-void

    :pswitch_12
    check-cast v7, LC4/b;

    invoke-virtual {v7}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    return-void

    :pswitch_13
    check-cast v7, LB4/v;

    sget p1, LB4/v;->L1:I

    iget-boolean p1, v7, LB4/s;->D0:Z

    if-eqz p1, :cond_13

    iget-object p1, v7, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_14

    iget-object p1, v7, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v7, LB4/s;->E0:Landroid/os/Handler;

    iget-object v0, v7, LB4/s;->F0:LB4/l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, LB4/s;->k0()V

    goto :goto_a

    :cond_13
    invoke-virtual {v7, v5}, LB4/s;->t0(Z)V

    :cond_14
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
