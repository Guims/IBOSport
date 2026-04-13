.class public final Lk3/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lk3/e;


# direct methods
.method public constructor <init>(Lk3/e;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/d;->c:Lk3/e;

    iput-object p2, p0, Lk3/d;->a:Landroid/view/View;

    iput-object p3, p0, Lk3/d;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lk3/d;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v1, p0, Lk3/d;->c:Lk3/e;

    iget-object v2, p0, Lk3/d;->a:Landroid/view/View;

    invoke-virtual {v1, v2, v0, p1}, Lk3/e;->c(Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method
