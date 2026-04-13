.class public final LD4/r;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/m;
.implements Lz4/G;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/movie/MoviePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/movie/MoviePlayerActivity;I)V
    .locals 0

    iput p2, p0, LD4/r;->b:I

    iput-object p1, p0, LD4/r;->q:Lib/player/pages/movie/MoviePlayerActivity;

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

    iget v0, p0, LD4/r;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, LD4/r;->q:Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->t0:Landroid/os/Handler;

    iget-object v2, v0, Lib/player/pages/movie/MoviePlayerActivity;->u0:LD4/o;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->b0:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0}, Lib/player/pages/movie/MoviePlayerActivity;->A()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget v0, p0, LD4/r;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD4/r;->q:Lib/player/pages/movie/MoviePlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, LD4/r;->q:Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->x0:Lz4/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    invoke-virtual {v0}, Lib/player/pages/movie/MoviePlayerActivity;->C()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
