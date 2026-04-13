.class public final LJ/d0;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, LJ/d0;->a:I

    iput-object p1, p0, LJ/d0;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ/d0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz1/l;Ln/e;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LJ/d0;->a:I

    iput-object p1, p0, LJ/d0;->b:Ljava/lang/Object;

    iput-object p2, p0, LJ/d0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LJ/d0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, LJ/d0;->c:Ljava/lang/Object;

    check-cast p1, LJ/f0;

    invoke-interface {p1}, LJ/f0;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LJ/d0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/d0;->c:Ljava/lang/Object;

    check-cast v0, Ln/e;

    invoke-virtual {v0, p1}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LJ/d0;->b:Ljava/lang/Object;

    check-cast v0, Lz1/l;

    iget-object v0, v0, Lz1/l;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, LJ/d0;->c:Ljava/lang/Object;

    check-cast p1, LJ/n0;

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object p1, p1, LJ/n0;->a:LJ/m0;

    invoke-virtual {p1, v0}, LJ/m0;->d(F)V

    iget-object p1, p0, LJ/d0;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, LJ/j0;->e(Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object p1, p0, LJ/d0;->c:Ljava/lang/Object;

    check-cast p1, LJ/f0;

    invoke-interface {p1}, LJ/f0;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LJ/d0;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LJ/d0;->b:Ljava/lang/Object;

    check-cast v0, Lz1/l;

    iget-object v0, v0, Lz1/l;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object p1, p0, LJ/d0;->c:Ljava/lang/Object;

    check-cast p1, LJ/f0;

    invoke-interface {p1}, LJ/f0;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
