.class public LF4/e;
.super Lib/player/base/BaseFragment;


# instance fields
.field public A0:Z

.field public final m0:[I

.field public final n0:Ljava/util/ArrayList;

.field public o0:Lio/realm/T;

.field public p0:Lio/realm/T;

.field public q0:Lio/realm/T;

.field public r0:Ls4/b;

.field public s0:Ls4/b;

.field public t0:Ls4/b;

.field public u0:Lib/player/base/o;

.field public v0:Lx4/e;

.field public w0:I

.field public x0:Z

.field public y0:Z

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, LF4/e;->m0:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LF4/e;->n0:Ljava/util/ArrayList;

    iput v0, p0, LF4/e;->w0:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LF4/e;->x0:Z

    iput-boolean v0, p0, LF4/e;->y0:Z

    iput-boolean v0, p0, LF4/e;->z0:Z

    iput-boolean v0, p0, LF4/e;->A0:Z

    return-void
.end method

.method public static T(LF4/e;)V
    .locals 2

    iget-boolean v0, p0, LF4/e;->y0:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LF4/e;->z0:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LF4/e;->A0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LF4/e;->o0:Lio/realm/T;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, LF4/e;->p0:Lio/realm/T;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, LF4/e;->q0:Lio/realm/T;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p0}, Lib/player/models/WordModels;->getNo_result()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {p0}, LF4/e;->R()Z

    return-void
.end method

.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    iget-object v2, p0, LF4/e;->n0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-eq p1, v3, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-ge v0, v5, :cond_6

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v5

    :pswitch_1
    if-eq v0, v4, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    if-ge v0, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return v5

    :pswitch_2
    if-lez v0, :cond_4

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v5

    :cond_4
    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v5

    :cond_5
    iget-boolean p1, p0, LF4/e;->x0:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/t;->I()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    return v5

    :cond_6
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()Z
    .locals 6

    iget v0, p0, LF4/e;->w0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v2, p0, LF4/e;->m0:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_4

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    :goto_0
    if-eqz v0, :cond_3

    new-instance v3, LA4/a;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v2, v4}, LA4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return v1

    :cond_4
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

    iget-object v1, p0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getLive_tv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->C:Landroid/widget/EditText;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSearch_by_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    iget-object v0, v0, Lx4/e;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final U(Lib/player/models/MovieModel;)V
    .locals 3

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lib/player/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv4/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v2, p0, LF4/e;->u0:Lib/player/base/o;

    invoke-static {v0, v1, p1, v2}, LD4/h;->U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/player/base/o;)LD4/h;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const v0, 0x7f0b017d

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroidx/fragment/app/a;->i(ILib/player/base/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->e(Z)I

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lib/player/base/BaseFragment;->v(Landroid/os/Bundle;)V

    new-instance p1, Lib/player/base/helper/w;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

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
    .locals 7

    iget-object v0, p0, LF4/e;->v0:Lx4/e;

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1

    :cond_0
    sget v0, Lx4/e;->K:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e004b

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/e;

    iput-object p1, p0, LF4/e;->v0:Lx4/e;

    invoke-virtual {p0}, LF4/e;->S()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    check-cast p1, Lib/player/pages/MainActivity;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lib/player/pages/MainActivity;->g0:Ljava/lang/String;

    const-string p2, "search"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->B:Landroid/widget/ImageButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    const/4 p2, 0x1

    const-string v0, "search_key"

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iput-boolean p1, p0, LF4/e;->x0:Z

    :cond_3
    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->B:Landroid/widget/ImageButton;

    new-instance v1, LB4/u;

    const/4 v3, 0x3

    invoke-direct {v1, v3, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->B:Landroid/widget/ImageButton;

    new-instance v1, LF4/a;

    invoke-direct {v1, p0, v2}, LF4/a;-><init>(LF4/e;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object v1, p1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v4, p1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    iget-object p1, p1, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    filled-new-array {v1, v4, p1}, [Lib/player/base/view/LiveHorizontalGridView;

    move-result-object p1

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, p1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v2}, Lib/player/base/view/LiveHorizontalGridView;->setLoop(Z)V

    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_2

    :cond_4
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->C:Landroid/widget/EditText;

    new-instance v1, LF4/a;

    invoke-direct {v1, p0, p2}, LF4/a;-><init>(LF4/e;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->C:Landroid/widget/EditText;

    new-instance v1, LF4/c;

    invoke-direct {v1, v2, p0}, LF4/c;-><init>(ILandroidx/fragment/app/t;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Ls4/b;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, LF4/b;

    invoke-direct {v5, p0, v2}, LF4/b;-><init>(LF4/e;I)V

    const/4 v6, 0x2

    invoke-direct {p1, v6}, Ls4/b;-><init>(I)V

    iput-object v1, p1, Ls4/b;->e:Ljava/lang/Object;

    iput-object v4, p1, Ls4/b;->g:Ljava/lang/Object;

    iput-object v5, p1, Ls4/b;->f:Ljava/lang/Object;

    iput-object p1, p0, LF4/e;->r0:Ls4/b;

    iget-object v1, p0, LF4/e;->v0:Lx4/e;

    iget-object v1, v1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    new-instance p1, Ls4/b;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, LF4/b;

    invoke-direct {v5, p0, p2}, LF4/b;-><init>(LF4/e;I)V

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ls4/b;-><init>(I)V

    iput-object v1, p1, Ls4/b;->e:Ljava/lang/Object;

    iput-object v4, p1, Ls4/b;->g:Ljava/lang/Object;

    iput-object v5, p1, Ls4/b;->f:Ljava/lang/Object;

    iput-object p1, p0, LF4/e;->s0:Ls4/b;

    iget-object p2, p0, LF4/e;->v0:Lx4/e;

    iget-object p2, p2, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    new-instance p1, Ls4/b;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, LF4/e;->q0:Lio/realm/T;

    new-instance v4, LF4/b;

    invoke-direct {v4, p0, v6}, LF4/b;-><init>(LF4/e;I)V

    invoke-direct {p1, v3}, Ls4/b;-><init>(I)V

    iput-object p2, p1, Ls4/b;->e:Ljava/lang/Object;

    iput-object v1, p1, Ls4/b;->g:Ljava/lang/Object;

    iput-object v4, p1, Ls4/b;->f:Ljava/lang/Object;

    iput-object p1, p0, LF4/e;->t0:Ls4/b;

    iget-object p2, p0, LF4/e;->v0:Lx4/e;

    iget-object p2, p2, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, LF4/e;->v0:Lx4/e;

    iget-object p2, p2, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_7
    :goto_3
    iget-object p1, p0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method
