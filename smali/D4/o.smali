.class public final synthetic LD4/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/movie/MoviePlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/movie/MoviePlayerActivity;I)V
    .locals 0

    iput p2, p0, LD4/o;->b:I

    iput-object p1, p0, LD4/o;->q:Lib/player/pages/movie/MoviePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LD4/o;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD4/o;->q:Lib/player/pages/movie/MoviePlayerActivity;

    iget v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->F0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lib/player/pages/movie/MoviePlayerActivity;->l0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v2

    iput v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->F0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, v0, Lib/player/pages/movie/MoviePlayerActivity;->t0:Landroid/os/Handler;

    iget-object v0, v0, Lib/player/pages/movie/MoviePlayerActivity;->v0:LD4/o;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LD4/o;->q:Lib/player/pages/movie/MoviePlayerActivity;

    iget v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->E0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    iget-object v0, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v2

    iput v1, v0, Lib/player/pages/movie/MoviePlayerActivity;->E0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, v0, Lib/player/pages/movie/MoviePlayerActivity;->t0:Landroid/os/Handler;

    iget-object v0, v0, Lib/player/pages/movie/MoviePlayerActivity;->u0:LD4/o;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
