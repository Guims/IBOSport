.class public final Lz1/E;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Lz1/j;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public d:Z

.field public final synthetic e:Lz1/g;


# direct methods
.method public constructor <init>(Lz1/g;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lz1/E;->e:Lz1/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz1/E;->d:Z

    iput-object p2, p0, Lz1/E;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lz1/E;->b:Landroid/view/View;

    iput-object p4, p0, Lz1/E;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lz1/l;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Lz1/l;)V
    .locals 0

    invoke-virtual {p1, p0}, Lz1/l;->w(Lz1/j;)Lz1/l;

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f(Lz1/l;)V
    .locals 0

    iget-boolean p1, p0, Lz1/E;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lz1/E;->g()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    const v0, 0x7f0b0327

    const/4 v1, 0x0

    iget-object v2, p0, Lz1/E;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lz1/E;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lz1/E;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz1/E;->d:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lz1/E;->g()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lz1/E;->g()V

    :cond_0
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lz1/E;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lz1/E;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lz1/E;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz1/E;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lz1/E;->e:Lz1/g;

    invoke-virtual {p1}, Lz1/l;->cancel()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lz1/E;->c:Landroid/view/View;

    const p2, 0x7f0b0327

    iget-object v0, p0, Lz1/E;->b:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lz1/E;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz1/E;->d:Z

    :cond_0
    return-void
.end method
