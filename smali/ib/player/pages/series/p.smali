.class public final Lib/player/pages/series/p;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/m;
.implements Lz4/G;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/series/SeriesPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/series/SeriesPlayerActivity;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/p;->b:I

    iput-object p1, p0, Lib/player/pages/series/p;->q:Lib/player/pages/series/SeriesPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public F()V
    .locals 1

    iget v0, p0, Lib/player/pages/series/p;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lib/player/pages/series/p;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Lib/player/pages/series/p;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/series/p;->q:Lib/player/pages/series/SeriesPlayerActivity;

    iget v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    iget-object v2, v0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {v0}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    iget v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {v0, v1}, Lib/player/pages/series/SeriesPlayerActivity;->E(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/series/p;->q:Lib/player/pages/series/SeriesPlayerActivity;

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v2, v0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    iget-object v0, v0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lib/player/pages/series/p;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Lib/player/pages/series/p;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/series/p;->q:Lib/player/pages/series/SeriesPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/series/p;->q:Lib/player/pages/series/SeriesPlayerActivity;

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->K0:Lz4/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    invoke-virtual {v0}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lib/player/pages/series/p;->q:Lib/player/pages/series/SeriesPlayerActivity;

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->J0:Lz4/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    iget-object v1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    iget-wide v2, v0, Lib/player/pages/series/SeriesPlayerActivity;->w0:J

    invoke-virtual {v0, v2, v3, v1}, Lib/player/pages/series/SeriesPlayerActivity;->G(JLjava/lang/String;)V

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v2, v0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 5

    sget v0, Lib/player/pages/series/SeriesPlayerActivity;->V0:I

    iget-object v0, p0, Lib/player/pages/series/p;->q:Lib/player/pages/series/SeriesPlayerActivity;

    iget-object v1, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lib/player/pages/series/SeriesPlayerActivity;->G(JLjava/lang/String;)V

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v3, v0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    iget-object v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
