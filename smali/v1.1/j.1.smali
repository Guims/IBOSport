.class public final Lv1/j;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field public a:Z

.field public final synthetic b:Lv1/k;


# direct methods
.method public constructor <init>(Lv1/k;)V
    .locals 0

    iput-object p1, p0, Lv1/j;->b:Lv1/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv1/j;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv1/j;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean p1, p0, Lv1/j;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lv1/j;->a:Z

    return-void

    :cond_0
    iget-object p1, p0, Lv1/j;->b:Lv1/k;

    iget-object v1, p1, Lv1/k;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iput v0, p1, Lv1/k;->A:I

    invoke-virtual {p1, v0}, Lv1/k;->f(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p1, Lv1/k;->A:I

    iget-object p1, p1, Lv1/k;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
