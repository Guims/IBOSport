.class public Lz4/u;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Lib/player/base/view/LiveVerticalGridView;

.field public B0:Lio/realm/T;

.field public C0:Landroid/content/Context;

.field public D0:Lib/player/models/CategoryModel;

.field public E0:Z

.field public F0:I

.field public G0:I

.field public H0:Lib/player/base/helper/w;

.field public I0:LB4/h;

.field public J0:Lib/player/models/WordModels;

.field public z0:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz4/u;->F0:I

    const/4 v0, -0x1

    iput v0, p0, Lz4/u;->G0:I

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/u;->J0:Lib/player/models/WordModels;

    return-void
.end method


# virtual methods
.method public final T(Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lz4/u;->F0:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lz4/u;->H0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lz4/u;->H0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lz4/u;->H0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lz4/u;->F0:I

    add-int/lit8 v1, v1, -0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lz4/u;->H0:Lib/player/base/helper/w;

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lz4/u;->C0:Landroid/content/Context;

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lib/player/base/helper/w;->f(Ljava/lang/String;Ljava/util/List;)Lio/realm/T;

    move-result-object p1

    iput-object p1, p0, Lz4/u;->B0:Lio/realm/T;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz4/u;->C0:Landroid/content/Context;

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v2, p0, Lz4/u;->D0:Lib/player/models/CategoryModel;

    iget-boolean v4, p0, Lz4/u;->E0:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lib/player/base/helper/w;->k(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/T;

    move-result-object p1

    iput-object p1, p0, Lz4/u;->B0:Lio/realm/T;

    :cond_1
    :goto_0
    new-instance p1, Lr1/i;

    iget-object v0, p0, Lz4/u;->C0:Landroid/content/Context;

    iget-object v1, p0, Lz4/u;->B0:Lio/realm/T;

    new-instance v2, LA4/b;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, LA4/b;-><init>(ILandroidx/fragment/app/t;)V

    const/4 v3, -0x1

    invoke-direct {p1, v0, v1, v3, v2}, Lr1/i;-><init>(Landroid/content/Context;Ljava/util/List;ILA4/b;)V

    iget-object v0, p0, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0e0057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/u;->C0:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lz4/u;->H0:Lib/player/base/helper/w;

    iget-object p2, p0, Lz4/u;->C0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/u;->J0:Lib/player/models/WordModels;

    new-instance p2, LB4/u;

    const/16 v0, 0x11

    invoke-direct {p2, v0, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b012c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lz4/u;->z0:Landroid/widget/EditText;

    const p2, 0x7f0b030d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lib/player/base/view/LiveVerticalGridView;

    iput-object p2, p0, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    iget-object p2, p0, Lz4/u;->C0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    iget-object p2, p0, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2, v1}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object p2, p0, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_0
    iget-object p2, p0, Lz4/u;->z0:Landroid/widget/EditText;

    new-instance v0, LF4/c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, LF4/c;-><init>(ILandroidx/fragment/app/t;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p2, ""

    invoke-virtual {p0, p2}, Lz4/u;->T(Ljava/lang/String;)V

    iget-object p2, p0, Lz4/u;->C0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lz4/u;->z0:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    iget-object p2, p0, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
