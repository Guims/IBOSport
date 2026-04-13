.class public Lz4/k;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/ImageButton;

.field public C0:Landroidx/recyclerview/widget/RecyclerView;

.field public D0:Ls4/l;

.field public E0:Ljava/util/List;

.field public F0:I

.field public G0:I

.field public H0:Lib/player/models/WordModels;

.field public I0:Lib/player/pages/series/l;

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/k;->H0:Lib/player/models/WordModels;

    return-void
.end method


# virtual methods
.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v0, 0x7f0e0048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/k;->H0:Lib/player/models/WordModels;

    const p2, 0x7f0b036e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/k;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b0401

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/k;->A0:Landroid/widget/TextView;

    const p2, 0x7f0b008f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lz4/k;->B0:Landroid/widget/ImageButton;

    const p2, 0x7f0b0311

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lz4/k;->C0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lz4/k;->z0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/k;->H0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getStr_more_episodes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/k;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/k;->H0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getSee_all()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/k;->B0:Landroid/widget/ImageButton;

    new-instance v0, Lz4/j;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lz4/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lz4/k;->A0:Landroid/widget/TextView;

    new-instance v0, Lz4/j;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lz4/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p2, Ls4/l;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lz4/k;->E0:Ljava/util/List;

    iget v3, p0, Lz4/k;->F0:I

    iget v4, p0, Lz4/k;->G0:I

    new-instance v5, Lk5/o;

    const/4 v6, 0x2

    invoke-direct {v5, v6, p0}, Lk5/o;-><init>(ILjava/lang/Object;)V

    const/4 v6, 0x1

    invoke-direct {p2, v6}, Ls4/l;-><init>(I)V

    iput-object v0, p2, Ls4/l;->h:Landroid/content/Context;

    iput-object v2, p2, Ls4/l;->e:Ljava/util/List;

    iput v3, p2, Ls4/l;->g:I

    iput v4, p2, Ls4/l;->f:I

    iput-object v5, p2, Ls4/l;->i:LS4/a;

    iput-object p2, p0, Lz4/k;->D0:Ls4/l;

    iget-object p2, p0, Lz4/k;->C0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p2, p0, Lz4/k;->C0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lz4/k;->D0:Ls4/l;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p2, p0, Lz4/k;->C0:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lz4/k;->G0:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->e0(I)V

    iget-object p2, p0, Lz4/k;->C0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
