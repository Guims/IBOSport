.class public final LD4/l;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/m;
.implements Lz4/G;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/movie/MovieMobilePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/movie/MovieMobilePlayerActivity;I)V
    .locals 0

    iput p2, p0, LD4/l;->b:I

    iput-object p1, p0, LD4/l;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    iget v0, p0, LD4/l;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, LD4/l;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->w0:Landroid/os/Handler;

    iget-object v2, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->x0:LB4/l;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->c0:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0}, Lib/player/pages/movie/MovieMobilePlayerActivity;->A()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget v0, p0, LD4/l;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD4/l;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, LD4/l;->q:Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->z0:Lz4/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    invoke-virtual {v0}, Lib/player/pages/movie/MovieMobilePlayerActivity;->C()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
