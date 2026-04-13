.class public final Lv1/d;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field public final synthetic a:Lv1/X;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f:Lv1/h;


# direct methods
.method public constructor <init>(Lv1/h;Lv1/X;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lv1/d;->f:Lv1/h;

    iput-object p2, p0, Lv1/d;->a:Lv1/X;

    iput p3, p0, Lv1/d;->b:I

    iput-object p4, p0, Lv1/d;->c:Landroid/view/View;

    iput p5, p0, Lv1/d;->d:I

    iput-object p6, p0, Lv1/d;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lv1/d;->b:I

    const/4 v0, 0x0

    iget-object v1, p0, Lv1/d;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lv1/d;->d:I

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lv1/d;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lv1/d;->f:Lv1/h;

    iget-object v0, p0, Lv1/d;->a:Lv1/X;

    invoke-virtual {p1, v0}, Lv1/C;->c(Lv1/X;)V

    iget-object v1, p1, Lv1/h;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lv1/h;->i()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lv1/d;->f:Lv1/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
