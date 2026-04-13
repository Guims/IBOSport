.class public LA4/p;
.super Lib/player/base/BaseFragment;


# instance fields
.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:Ljava/util/ArrayList;

.field public r0:Ljava/lang/String;

.field public s0:Lib/player/pages/MainActivity;

.field public t0:Ljava/util/ArrayList;

.field public u0:Lx4/g;

.field public v0:Landroid/os/Handler;

.field public w0:LA4/f;

.field public x0:Ljava/lang/Runnable;

.field public y0:LA4/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LA4/p;->m0:I

    iput v0, p0, LA4/p;->n0:I

    iput v0, p0, LA4/p;->o0:I

    iput v0, p0, LA4/p;->p0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LA4/p;->q0:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LA4/p;->r0:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LA4/p;->t0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, LA4/p;->v0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, LA4/p;->w0:LA4/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget v0, p0, LA4/p;->m0:I

    iput v0, p0, LA4/p;->o0:I

    iget v0, p0, LA4/p;->n0:I

    iput v0, p0, LA4/p;->p0:I

    return-void
.end method

.method public final C()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, LA4/p;->v0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, LA4/p;->w0:LA4/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LA4/p;->v0:Landroid/os/Handler;

    new-instance v1, LA4/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, LA4/p;->w0:LA4/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, LA4/p;->T()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LA4/p;->q0:Ljava/util/ArrayList;

    invoke-virtual {p0}, LA4/p;->S()V

    iget v0, p0, LA4/p;->o0:I

    iget v1, p0, LA4/p;->p0:I

    invoke-virtual {p0, v0, v1}, LA4/p;->U(II)Z

    return-void
.end method

.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, LA4/p;->m0:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    iget p1, p0, LA4/p;->m0:I

    iget-object v0, p0, LA4/p;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final R()Z
    .locals 2

    iget v0, p0, LA4/p;->m0:I

    iget v1, p0, LA4/p;->n0:I

    invoke-virtual {p0, v0, v1}, LA4/p;->U(II)Z

    move-result v0

    return v0
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    iget v0, p0, LA4/p;->o0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, LA4/p;->m0:I

    :cond_0
    invoke-virtual {p0, v0}, LA4/p;->V(I)V

    return-void
.end method

.method public final T()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->A()I

    move-result v1

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->z()I

    move-result v2

    sget-object v3, Lib/player/app/MyApp;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    sget-object v3, Lib/player/app/MyApp;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lib/player/app/MyApp;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    sget-object v1, Lib/player/app/MyApp;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final U(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LA4/p;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    move p1, v0

    :cond_1
    filled-new-array {p2}, [I

    move-result-object p2

    iget-object v1, p0, LA4/p;->u0:Lx4/g;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, LA4/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, LA4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v1, v2, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final V(I)V
    .locals 5

    iget-object v0, p0, LA4/p;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, LA4/p;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CategoryModel;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getType()Lib/player/base/m;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, " "

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->z()I

    move-result p1

    iget-object v2, p0, LA4/p;->u0:Lx4/g;

    iget-object v2, v2, Lx4/g;->C:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getLatest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lib/player/app/MyApp;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CategoryModel;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->A()I

    move-result p1

    iget-object v2, p0, LA4/p;->u0:Lx4/g;

    iget-object v2, v2, Lx4/g;->C:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getLatest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Lib/player/app/MyApp;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CategoryModel;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object p1, p0, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->C:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getLatest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannels()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final W(Ljava/util/ArrayList;)V
    .locals 2

    iput-object p1, p0, LA4/p;->t0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object p1

    iget-object v0, p0, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    return-void

    :cond_1
    iget-object p1, p0, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->G:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

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
    invoke-virtual {p0}, LA4/p;->T()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, LA4/p;->q0:Ljava/util/ArrayList;

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    iget-object v0, p0, LA4/p;->u0:Lx4/g;

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1

    :cond_0
    sget v0, Lx4/g;->S:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e004d

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/g;

    iput-object p1, p0, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    new-instance v3, LA4/k;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, LA4/p;->q0:Ljava/util/ArrayList;

    new-instance v7, LA4/b;

    invoke-direct {v7, v2, p0}, LA4/b;-><init>(ILandroidx/fragment/app/t;)V

    new-instance v8, LA4/c;

    invoke-direct {v8, v2, p0}, LA4/c;-><init>(ILjava/lang/Object;)V

    new-instance v9, LA4/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, LA4/k;-><init>(LA4/p;Landroid/content/Context;Ljava/util/ArrayList;LA4/b;LA4/c;LA4/d;)V

    iput-object v3, v4, LA4/p;->y0:LA4/k;

    iget-object p1, v4, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p1

    new-instance p2, LA3/d;

    invoke-direct {p2, v0, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/K;->Z(Lib/player/base/BaseFragment;Landroidx/fragment/app/O;)V

    iget-object p1, v4, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method
