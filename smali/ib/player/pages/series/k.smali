.class public final synthetic Lib/player/pages/series/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/series/SeriesMobilePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/k;->b:I

    iput-object p1, p0, Lib/player/pages/series/k;->q:Lib/player/pages/series/SeriesMobilePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lib/player/pages/series/k;->b:I

    const/16 v0, 0x8

    iget-object v1, p0, Lib/player/pages/series/k;->q:Lib/player/pages/series/SeriesMobilePlayerActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->Q0:I

    iget-object p1, v1, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, v1, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->B()V

    :cond_0
    return-void

    :pswitch_0
    sget p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->Q0:I

    iget-object p1, v1, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    iget-object v2, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->C0:LB4/l;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v1, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_1
    sget p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->Q0:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lib/player/base/l;->x()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
