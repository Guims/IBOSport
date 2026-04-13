.class public final synthetic LD4/n;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/x;
.implements Lz4/I;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/movie/MoviePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/movie/MoviePlayerActivity;I)V
    .locals 0

    iput p2, p0, LD4/n;->b:I

    iput-object p1, p0, LD4/n;->q:Lib/player/pages/movie/MoviePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, LD4/n;->q:Lib/player/pages/movie/MoviePlayerActivity;

    iput p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->s0:I

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->B0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getFill()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lib/player/pages/movie/MoviePlayerActivity;->B0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getStringDefaultAlt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lv4/c;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/high16 v4, 0x3fc00000    # 1.5f

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    const v4, 0x3faaaaab

    goto :goto_0

    :cond_2
    const v4, 0x3fcccccd    # 1.6f

    goto :goto_0

    :cond_3
    const v4, 0x3fe38e39

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, v0, Lib/player/base/l;->P:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v4}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    iget-object p1, v0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1, v3}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    iget-object p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->l0:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->l0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->t0:Landroid/os/Handler;

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->v0:LD4/o;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v5, v0, Lib/player/pages/movie/MoviePlayerActivity;->F0:I

    new-instance p1, LD4/o;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, LD4/o;-><init>(Lib/player/pages/movie/MoviePlayerActivity;I)V

    iput-object p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->v0:LD4/o;

    invoke-virtual {p1}, LD4/o;->run()V

    return-void
.end method

.method public d()V
    .locals 2

    iget v0, p0, LD4/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD4/n;->q:Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->A0:Lib/player/base/helper/w;

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->q0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LD4/n;->q:Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->A0:Lib/player/base/helper/w;

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->q0(Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
