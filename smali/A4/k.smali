.class public final LA4/k;
.super Lv1/y;


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Ljava/util/List;

.field public final f:LA4/b;

.field public final g:LA4/c;

.field public final h:LA4/d;

.field public final synthetic i:LA4/p;


# direct methods
.method public constructor <init>(LA4/p;Landroid/content/Context;Ljava/util/ArrayList;LA4/b;LA4/c;LA4/d;)V
    .locals 0

    iput-object p1, p0, LA4/k;->i:LA4/p;

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p2, p0, LA4/k;->d:Landroid/content/Context;

    iput-object p3, p0, LA4/k;->e:Ljava/util/List;

    iput-object p4, p0, LA4/k;->f:LA4/b;

    iput-object p5, p0, LA4/k;->g:LA4/c;

    iput-object p6, p0, LA4/k;->h:LA4/d;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LA4/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g(Lv1/X;I)V
    .locals 9

    check-cast p1, LA4/j;

    iget-object v0, p1, LA4/j;->u:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v1, p0, LA4/k;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lib/player/models/CategoryModel;

    invoke-virtual {v3}, Lib/player/models/CategoryModel;->getType()Lib/player/base/m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, ""

    iget-object v4, p0, LA4/k;->i:LA4/p;

    const/4 v8, 0x1

    if-eq v1, v8, :cond_1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    invoke-virtual {v4}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    iget-object v1, v4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->B()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, ""

    invoke-virtual/range {v2 .. v7}, Lib/player/base/helper/w;->l(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v1

    new-instance v2, LA4/i;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, LA4/i;-><init>(LA4/j;I)V

    invoke-virtual {v1, v2}, Lio/realm/T;->b(Lio/realm/H;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v4, v4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->B()Z

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v8}, Lib/player/base/helper/w;->t(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v1

    new-instance v2, LA4/i;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, LA4/i;-><init>(LA4/j;I)V

    invoke-virtual {v1, v2}, Lio/realm/T;->b(Lio/realm/H;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v4, v4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->B()Z

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v8}, Lib/player/base/helper/w;->p(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v1

    new-instance v2, LA4/i;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, LA4/i;-><init>(LA4/j;I)V

    invoke-virtual {v1, v2}, Lio/realm/T;->b(Lio/realm/H;)V

    :goto_0
    iget-object p1, p0, LA4/k;->d:Landroid/content/Context;

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Lib/player/base/view/LiveHorizontalGridView;->setLoop(Z)V

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_1
    new-instance p1, LA4/o;

    new-instance v2, LA4/g;

    invoke-direct {v2, p0, p2}, LA4/g;-><init>(LA4/k;I)V

    new-instance v3, LA4/h;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, LA4/h;-><init>(LA4/k;I)V

    new-instance v4, LA4/h;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, LA4/h;-><init>(LA4/k;I)V

    invoke-direct {p1}, Lv1/y;-><init>()V

    iput-object v1, p1, LA4/o;->d:Ljava/util/List;

    iput-object v2, p1, LA4/o;->e:LA4/g;

    iput p2, p1, LA4/o;->h:I

    iput-object v3, p1, LA4/o;->f:LA4/h;

    iput-object v4, p1, LA4/o;->g:LA4/h;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    new-instance p2, LA4/j;

    const v0, 0x7f0e006a

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lib/player/base/view/LiveHorizontalGridView;

    iput-object v0, p2, LA4/j;->u:Lib/player/base/view/LiveHorizontalGridView;

    const v0, 0x7f0b021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p2, LA4/j;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p2
.end method
