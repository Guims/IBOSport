.class public final synthetic Ls4/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lr1/i;

.field public final synthetic q:Ls4/H;

.field public final synthetic r:Lib/player/models/MovieCreditModel;


# direct methods
.method public synthetic constructor <init>(Lr1/i;Ls4/H;Lib/player/models/MovieCreditModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/q;->b:Lr1/i;

    iput-object p2, p0, Ls4/q;->q:Ls4/H;

    iput-object p3, p0, Ls4/q;->r:Lib/player/models/MovieCreditModel;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Ls4/q;->q:Ls4/H;

    iget-object v0, p1, Ls4/H;->u:Landroid/widget/TextView;

    iget-object p1, p1, Ls4/H;->v:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    const p2, 0x7f080239

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Ls4/q;->b:Lr1/i;

    iget-object p1, p1, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, LD4/a;

    iget-object p1, p1, LD4/a;->q:Lib/player/pages/movie/MovieCreditActivity;

    sget p2, Lib/player/pages/movie/MovieCreditActivity;->d0:I

    iget-object p2, p0, Ls4/q;->r:Lib/player/models/MovieCreditModel;

    invoke-virtual {p1, p2}, Lib/player/pages/movie/MovieCreditActivity;->w(Lib/player/models/MovieCreditModel;)V

    return-void

    :cond_0
    const p2, 0x3f733333    # 0.95f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    const p2, 0x7f080236

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
