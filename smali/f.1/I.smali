.class public final Lf/I;
.super LE5/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf/K;


# direct methods
.method public synthetic constructor <init>(Lf/K;I)V
    .locals 0

    iput p2, p0, Lf/I;->a:I

    iput-object p1, p0, Lf/I;->b:Lf/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    iget v0, p0, Lf/I;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lf/I;->b:Lf/K;

    packed-switch v0, :pswitch_data_0

    iput-object v1, v2, Lf/K;->s:Li/j;

    iget-object v0, v2, Lf/K;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_0
    iget-boolean v0, v2, Lf/K;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lf/K;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v2, Lf/K;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, v2, Lf/K;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, v2, Lf/K;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iput-object v1, v2, Lf/K;->s:Li/j;

    iget-object v0, v2, Lf/K;->k:LY1/c;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lf/K;->j:Lf/J;

    invoke-virtual {v0, v3}, LY1/c;->K(Li/a;)V

    iput-object v1, v2, Lf/K;->j:Lf/J;

    iput-object v1, v2, Lf/K;->k:LY1/c;

    :cond_1
    iget-object v0, v2, Lf/K;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    sget-object v1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LJ/F;->c(Landroid/view/View;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
