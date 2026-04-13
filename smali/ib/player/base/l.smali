.class public abstract Lib/player/base/l;
.super Lf/i;


# static fields
.field public static S:Z

.field public static T:Lib/player/base/l;


# instance fields
.field public N:Landroidx/media3/exoplayer/ExoPlayer;

.field public O:Landroidx/media3/ui/PlayerView;

.field public P:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public Q:Lib/player/base/view/SubtitleView;

.field public R:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public static w()V
    .locals 2

    sget-boolean v0, Lib/player/base/l;->S:Z

    if-eqz v0, :cond_2

    sget-object v0, Lib/player/base/l;->T:Lib/player/base/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_1

    sget-object v0, Lib/player/base/l;->T:Lib/player/base/l;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lib/player/base/l;->T:Lib/player/base/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_1
    sget-object v0, Lib/player/base/l;->T:Lib/player/base/l;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lf/i;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lib/player/base/l;->T:Lib/player/base/l;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lf/i;->onDestroy()V

    sget-object v0, Lib/player/base/l;->T:Lib/player/base/l;

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lib/player/base/l;->T:Lib/player/base/l;

    :cond_0
    return-void
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/j;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1, p2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    sput-boolean p2, Lib/player/base/l;->S:Z

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lib/player/base/l;->x()V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/util/Rational;

    iget-object v1, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    invoke-static {}, LW3/h;->e()Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x3fdac083126e978dL    # 0.418

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40031eb851eb851fL    # 2.39

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-static {v1, v0}, LW3/h;->x(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Rational;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v1, v0}, LW3/h;->x(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)V

    :goto_0
    invoke-static {v1}, LW3/h;->f(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-static {p0, v0}, LW3/h;->B(Lib/player/base/l;Landroid/app/PictureInPictureParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lib/player/base/l;->S:Z

    :cond_1
    return-void
.end method
