.class public final synthetic LD4/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lf/i;


# direct methods
.method public synthetic constructor <init>(Lf/i;I)V
    .locals 0

    iput p2, p0, LD4/p;->b:I

    iput-object p1, p0, LD4/p;->q:Lf/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget p1, p0, LD4/p;->b:I

    const/4 v0, 0x0

    const/16 v1, 0x16

    const/16 v2, 0x15

    const/16 v3, 0x1e

    const/4 v4, 0x1

    iget-object v5, p0, LD4/p;->q:Lf/i;

    packed-switch p1, :pswitch_data_0

    check-cast v5, Lib/player/pages/series/SeriesPlayerActivity;

    sget p1, Lib/player/pages/series/SeriesPlayerActivity;->V0:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_0

    invoke-virtual {v5, v3}, Lib/player/pages/series/SeriesPlayerActivity;->J(I)V

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_1

    invoke-virtual {v5, v3}, Lib/player/pages/series/SeriesPlayerActivity;->I(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    check-cast v5, Lib/player/pages/catchup/CatchUpPlayerActivity;

    sget p1, Lib/player/pages/catchup/CatchUpPlayerActivity;->s0:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    if-ne p2, v2, :cond_2

    invoke-virtual {v5, v3}, Lib/player/pages/catchup/CatchUpPlayerActivity;->B(I)V

    :goto_2
    move v0, v4

    goto :goto_3

    :cond_2
    if-ne p2, v1, :cond_3

    invoke-virtual {v5, v3}, Lib/player/pages/catchup/CatchUpPlayerActivity;->A(I)V

    goto :goto_2

    :cond_3
    :goto_3
    return v0

    :pswitch_1
    check-cast v5, Lib/player/pages/movie/MoviePlayerActivity;

    sget p1, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    if-ne p2, v2, :cond_4

    invoke-virtual {v5, v3}, Lib/player/pages/movie/MoviePlayerActivity;->E(I)V

    :goto_4
    move v0, v4

    goto :goto_5

    :cond_4
    if-ne p2, v1, :cond_5

    invoke-virtual {v5, v3}, Lib/player/pages/movie/MoviePlayerActivity;->D(I)V

    goto :goto_4

    :cond_5
    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
