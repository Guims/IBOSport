.class public Lz4/t;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Landroid/widget/Button;

.field public B0:Landroid/widget/Button;

.field public C0:Landroid/widget/TextView;

.field public D0:Landroidx/recyclerview/widget/RecyclerView;

.field public E0:Landroid/content/Context;

.field public F0:Ls4/o;

.field public G0:Lib/player/models/WordModels;

.field public H0:I

.field public I0:LD0/f;

.field public z0:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/t;->G0:Lib/player/models/WordModels;

    const/4 v0, 0x0

    iput v0, p0, Lz4/t;->H0:I

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
    .locals 4

    const v0, 0x7f0e004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lz4/t;->E0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/t;->G0:Lib/player/models/WordModels;

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/t;->A0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/t;->B0:Landroid/widget/Button;

    const p2, 0x7f0b03e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/t;->C0:Landroid/widget/TextView;

    const p2, 0x7f0b030a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lz4/t;->D0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lz4/t;->A0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/t;->G0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/t;->B0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/t;->G0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/t;->C0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/t;->G0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChange_language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Ls4/o;

    iget-object v0, p0, Lz4/t;->z0:Ljava/util/List;

    iget v1, p0, Lz4/t;->H0:I

    new-instance v2, Lk5/o;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Lk5/o;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {p2, v3}, Ls4/o;-><init>(I)V

    iput-object v0, p2, Ls4/o;->e:Ljava/lang/Object;

    iput v1, p2, Ls4/o;->f:I

    iput-object v2, p2, Ls4/o;->g:Ld5/p;

    iput-object p2, p0, Lz4/t;->F0:Ls4/o;

    iget-object p2, p0, Lz4/t;->D0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p2, p0, Lz4/t;->D0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lz4/t;->F0:Ls4/o;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p2, p0, Lz4/t;->D0:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lz4/t;->H0:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->e0(I)V

    iget-object p2, p0, Lz4/t;->D0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Lz4/t;->A0:Landroid/widget/Button;

    new-instance v0, Lz4/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz4/s;-><init>(Lz4/t;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/t;->B0:Landroid/widget/Button;

    new-instance v0, Lz4/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz4/s;-><init>(Lz4/t;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
