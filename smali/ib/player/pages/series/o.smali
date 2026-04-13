.class public final synthetic Lib/player/pages/series/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/series/SeriesPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/series/SeriesPlayerActivity;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/o;->b:I

    iput-object p1, p0, Lib/player/pages/series/o;->q:Lib/player/pages/series/SeriesPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lib/player/pages/series/o;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/series/o;->q:Lib/player/pages/series/SeriesPlayerActivity;

    iget v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->O0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lib/player/pages/series/SeriesPlayerActivity;->i0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v2

    iput v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->O0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, v0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v0, v0, Lib/player/pages/series/SeriesPlayerActivity;->I0:Lib/player/pages/series/o;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/series/o;->q:Lib/player/pages/series/SeriesPlayerActivity;

    iget v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->N0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lib/player/pages/series/SeriesPlayerActivity;->K(Z)V

    iget-object v0, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v2

    iput v1, v0, Lib/player/pages/series/SeriesPlayerActivity;->N0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, v0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v0, v0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
