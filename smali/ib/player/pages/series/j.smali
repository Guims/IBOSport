.class public Lib/player/pages/series/j;
.super Lib/player/base/BaseFragment;


# static fields
.field public static D0:Ljava/util/ArrayList;


# instance fields
.field public A0:Landroid/os/Handler;

.field public B0:LA/o;

.field public final C0:Ljava/lang/String;

.field public final m0:[I

.field public n0:Ls4/G;

.field public o0:Ls4/J;

.field public p0:Ljava/util/ArrayList;

.field public q0:Lio/realm/T;

.field public r0:Ljava/util/ArrayList;

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:Lib/player/pages/MainActivity;

.field public w0:Lx4/q;

.field public x0:I

.field public y0:Ljava/util/ArrayList;

.field public z0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lib/player/pages/series/j;->m0:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lib/player/pages/series/j;->q0:Lio/realm/T;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lib/player/pages/series/j;->r0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lib/player/pages/series/j;->s0:I

    iput v1, p0, Lib/player/pages/series/j;->t0:I

    iput v1, p0, Lib/player/pages/series/j;->u0:I

    iput v0, p0, Lib/player/pages/series/j;->x0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lib/player/pages/series/j;->z0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/j;->C0:Ljava/lang/String;

    return-void
.end method

.method public static V(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public final C()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    sget-object v1, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lib/player/app/MyApp;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lib/player/pages/series/j;->U()V

    :cond_0
    iget-object v1, p0, Lib/player/pages/series/j;->n0:Ls4/G;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    iget-object v1, p0, Lib/player/pages/series/j;->n0:Ls4/G;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    iget-object v1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lib/player/pages/series/j;->R()Z

    return-void
.end method

.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x59

    const/16 v1, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object p1

    invoke-virtual {p1}, Lv1/y;->a()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_0
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->M:Lib/player/base/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :pswitch_1
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lib/player/pages/series/j;->u0:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->M:Lib/player/base/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_2
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :pswitch_2
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->M:Lib/player/base/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :pswitch_3
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lib/player/pages/series/j;->u0:I

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->M:Lib/player/base/view/CustomSpinner;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_3
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lib/player/pages/series/j;->t0:I

    iget-object v0, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    if-ge p1, v0, :cond_7

    iget p1, p0, Lib/player/pages/series/j;->t0:I

    add-int/2addr p1, v1

    iput p1, p0, Lib/player/pages/series/j;->t0:I

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lib/player/pages/series/j;->u0:I

    iget-object v0, p0, Lib/player/pages/series/j;->q0:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    if-ge p1, v0, :cond_7

    iget p1, p0, Lib/player/pages/series/j;->u0:I

    add-int/2addr p1, v1

    iput p1, p0, Lib/player/pages/series/j;->u0:I

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lib/player/pages/series/j;->t0:I

    if-le p1, v1, :cond_7

    sub-int/2addr p1, v1

    iput p1, p0, Lib/player/pages/series/j;->t0:I

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lib/player/pages/series/j;->u0:I

    if-le p1, v1, :cond_7

    sub-int/2addr p1, v1

    iput p1, p0, Lib/player/pages/series/j;->u0:I

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()Z
    .locals 6

    iget v0, p0, Lib/player/pages/series/j;->x0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lib/player/pages/series/j;->m0:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    :goto_0
    if-eqz v0, :cond_2

    new-instance v3, LA4/a;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v0, v2, v4}, LA4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    iget-object v1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->T:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final T(Ljava/lang/String;Ld5/l;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lu4/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, LD4/v;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, LD4/v;-><init>(Ld5/l;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final U()V
    .locals 6

    invoke-virtual {p0}, Lib/player/pages/series/j;->X()V

    iget-object v0, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v2, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    iget-object v3, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->B()Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v3, v5}, Lib/player/base/helper/w;->t(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iput v0, p0, Lib/player/pages/series/j;->s0:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, LB4/o;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, LB4/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lib/player/pages/series/j;->Y(LB4/o;)V

    return-void
.end method

.method public final W(Lib/player/models/InfoSerie;Lib/player/models/SeriesModel;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getInfo()Lib/player/models/InfoSerie$Info;

    move-result-object v1

    invoke-virtual {v1}, Lib/player/models/InfoSerie$Info;->getBackdrop_path()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iput-object v0, p0, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v1, v1, Lx4/q;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->F:Landroid/widget/ImageView;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->H:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Lib/player/models/SeriesModel;->isIs_favorite()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->N:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->C:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getPlot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->E:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->S:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    const-string v4, " \u2022"

    invoke-static {v1, v3, v4}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    :goto_4
    const-string v1, ""

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->Q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getSeasons()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lv4/c;->o(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->Q:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->Q:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->P:Landroid/widget/TextView;

    const-string v0, "HD"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->O:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lib/player/pages/series/j;->V(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->R:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lib/player/pages/series/j;->V(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->B:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getCast()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lib/player/pages/series/j;->V(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->D:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getDirector()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lib/player/pages/series/j;->V(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public final X()V
    .locals 2

    sget-object v0, Lib/player/app/MyApp;->w:Ljava/util/ArrayList;

    sput-object v0, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    iget-object v1, p0, Lib/player/pages/series/j;->n0:Ls4/G;

    if-eqz v1, :cond_0

    iput-object v0, v1, Ls4/G;->e:Ljava/util/List;

    invoke-virtual {v1}, Lv1/y;->d()V

    :cond_0
    return-void
.end method

.method public final Y(LB4/o;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    iget v2, p0, Lib/player/pages/series/j;->s0:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    iget-object v3, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v3, v3, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v4, "series_order"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lib/player/pages/series/j;->C0:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lib/player/base/helper/w;->t(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/j;->q0:Lio/realm/T;

    new-instance v1, LD4/w;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LD4/w;-><init>(Lib/player/base/BaseFragment;Ld5/a;I)V

    invoke-virtual {v0, v1}, Lio/realm/T;->b(Lio/realm/H;)V

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lib/player/base/BaseFragment;->v(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->l0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1

    :cond_0
    sget v0, Lx4/q;->U:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e0059

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/q;

    iput-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    invoke-virtual {p0}, Lib/player/pages/series/j;->S()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x5

    if-eqz p1, :cond_1

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_0
    invoke-virtual {p0}, Lib/player/pages/series/j;->U()V

    new-instance v3, Ls4/G;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lib/player/pages/series/j;->p0:Ljava/util/ArrayList;

    iget v6, p0, Lib/player/pages/series/j;->s0:I

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result v7

    new-instance v9, LB4/d;

    const/4 p1, 0x6

    invoke-direct {v9, p1, p0}, LB4/d;-><init>(ILjava/lang/Object;)V

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Ls4/G;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZZLd5/q;)V

    iput-object v3, p0, Lib/player/pages/series/j;->n0:Ls4/G;

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    iget v0, p0, Lib/player/pages/series/j;->s0:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->K:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    new-instance p1, Ls4/J;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/j;->q0:Lio/realm/T;

    invoke-direct {p1, v1, v2}, Ls4/J;-><init>(Lio/realm/OrderedRealmCollection;I)V

    const/4 v1, -0x1

    iput v1, p1, Ls4/J;->j:I

    iput-object v0, p1, Ls4/J;->i:Landroid/content/Context;

    iput-object p1, p0, Lib/player/pages/series/j;->o0:Ls4/J;

    new-instance v0, Lcom/bumptech/glide/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Ls4/J;->k:Ljava/lang/Object;

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->L:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-static {p1}, Lib/player/base/helper/d;->i(Lib/player/models/WordModels;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/j;->r0:Ljava/util/ArrayList;

    new-instance p1, Ls4/M;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/j;->r0:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Ls4/M;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v0, v0, Lx4/q;->M:Lib/player/base/view/CustomSpinner;

    invoke-virtual {v0, p1}, Lk/N;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->M:Lib/player/base/view/CustomSpinner;

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "series_order"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Lx4/q;->M:Lib/player/base/view/CustomSpinner;

    new-instance v0, LD4/u;

    invoke-direct {v0, p2, p0}, LD4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lib/player/pages/series/j;->A0:Landroid/os/Handler;

    new-instance p2, LA4/f;

    const/16 v0, 0x18

    invoke-direct {p2, v0, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method
