.class public final synthetic Ls4/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lr1/i;

.field public final synthetic q:Ls4/H;

.field public final synthetic r:Lib/player/models/MovieCreditModel;


# direct methods
.method public synthetic constructor <init>(Lr1/i;Ls4/H;Lib/player/models/MovieCreditModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/r;->b:Lr1/i;

    iput-object p2, p0, Ls4/r;->q:Ls4/H;

    iput-object p3, p0, Ls4/r;->r:Lib/player/models/MovieCreditModel;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p1, p0, Ls4/r;->q:Ls4/H;

    iget-object v0, p1, Ls4/H;->u:Landroid/widget/TextView;

    iget-object p1, p1, Ls4/H;->v:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x7f080236

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0x7f080239

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Ls4/r;->b:Lr1/i;

    iget-object p1, p1, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, LD4/a;

    iget-object p1, p1, LD4/a;->q:Lib/player/pages/movie/MovieCreditActivity;

    sget p2, Lib/player/pages/movie/MovieCreditActivity;->d0:I

    iget-object p2, p0, Ls4/r;->r:Lib/player/models/MovieCreditModel;

    invoke-virtual {p1, p2}, Lib/player/pages/movie/MovieCreditActivity;->w(Lib/player/models/MovieCreditModel;)V

    :cond_2
    return v3
.end method
