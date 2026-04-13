.class public final synthetic LD4/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/movie/MovieMobilePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/movie/MovieMobilePlayerActivity;I)V
    .locals 0

    iput p2, p0, LD4/j;->b:I

    iput-object p1, p0, LD4/j;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, LD4/j;->b:I

    iget-object v0, p0, LD4/j;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lib/player/pages/movie/MovieMobilePlayerActivity;->N0:I

    iget-object p1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/movie/MovieMobilePlayerActivity;->A()V

    :cond_0
    return-void

    :pswitch_0
    sget p1, Lib/player/pages/movie/MovieMobilePlayerActivity;->N0:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lib/player/base/l;->x()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
