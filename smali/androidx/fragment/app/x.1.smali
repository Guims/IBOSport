.class public final Landroidx/fragment/app/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/S;

.field public final synthetic q:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y;Landroidx/fragment/app/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/y;

    iput-object p2, p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/S;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/S;

    iget-object v0, p1, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    invoke-virtual {p1}, Landroidx/fragment/app/S;->k()V

    iget-object p1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/y;

    iget-object v0, v0, Landroidx/fragment/app/y;->b:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->E()Lx2/f;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/fragment/app/i;->f(Landroid/view/ViewGroup;Lx2/f;)Landroidx/fragment/app/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/i;->e()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
