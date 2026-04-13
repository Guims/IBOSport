.class public final Landroidx/fragment/app/d;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/X;

.field public final synthetic e:Landroidx/fragment/app/f;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/X;Landroidx/fragment/app/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/d;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/d;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/d;->d:Landroidx/fragment/app/X;

    iput-object p5, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/fragment/app/d;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/fragment/app/d;->c:Z

    iget-object v1, p0, Landroidx/fragment/app/d;->d:Landroidx/fragment/app/X;

    if-eqz p1, :cond_0

    iget p1, v1, Landroidx/fragment/app/X;->a:I

    invoke-static {v0, p1}, LB/f;->a(Landroid/view/View;I)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/g;->d()V

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/K;->G(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
