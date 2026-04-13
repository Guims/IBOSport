.class public Lz4/L;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Lib/player/base/view/LiveVerticalGridView;

.field public C0:Ls4/o;

.field public D0:Landroid/widget/Button;

.field public E0:Landroid/widget/Button;

.field public F0:[Ljava/lang/String;

.field public G0:[Ljava/lang/String;

.field public H0:I

.field public I0:I

.field public J0:Z

.field public K0:Landroid/content/Context;

.field public L0:Lib/player/models/WordModels;

.field public M0:Lib/player/base/helper/y;

.field public N0:Ljava/lang/String;

.field public O0:Ljava/lang/String;

.field public P0:I

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz4/L;->H0:I

    iput v0, p0, Lz4/L;->I0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/L;->J0:Z

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/L;->L0:Lib/player/models/WordModels;

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

    const v0, 0x7f0e0058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lz4/L;->K0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/L;->L0:Lib/player/models/WordModels;

    const p2, 0x7f0b03e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/L;->A0:Landroid/widget/TextView;

    const p2, 0x7f0b0408

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/L;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b030e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lib/player/base/view/LiveVerticalGridView;

    iput-object p2, p0, Lz4/L;->B0:Lib/player/base/view/LiveVerticalGridView;

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/L;->D0:Landroid/widget/Button;

    new-instance v0, Lz4/K;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lz4/K;-><init>(Lz4/L;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/L;->E0:Landroid/widget/Button;

    new-instance v0, Lz4/K;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lz4/K;-><init>(Lz4/L;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/L;->D0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/L;->L0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/L;->E0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/L;->L0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/L;->K0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x5

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz4/L;->B0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    iget-object p2, p0, Lz4/L;->B0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2, v1}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object p2, p0, Lz4/L;->B0:Lib/player/base/view/LiveVerticalGridView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lz4/L;->B0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_0
    iget-boolean p2, p0, Lz4/L;->J0:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lz4/L;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/L;->L0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getSubtitel_color()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lz4/L;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/L;->L0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getSubtitel_background()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030002

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lz4/L;->F0:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030001

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lz4/L;->G0:[Ljava/lang/String;

    iget-boolean v0, p0, Lz4/L;->J0:Z

    if-eqz v0, :cond_4

    iget-object p2, p0, Lz4/L;->N0:Ljava/lang/String;

    iget-object v0, p0, Lz4/L;->F0:[Ljava/lang/String;

    move v2, v1

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iput v1, p0, Lz4/L;->H0:I

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lz4/L;->O0:Ljava/lang/String;

    move v2, v1

    :goto_4
    array-length v3, p2

    if-ge v2, v3, :cond_6

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iput v1, p0, Lz4/L;->H0:I

    :goto_6
    iget-object p2, p0, Lz4/L;->z0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/L;->O0:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lz4/L;->z0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/L;->N0:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lz4/L;->z0:Landroid/widget/TextView;

    iget v0, p0, Lz4/L;->P0:I

    int-to-float v0, v0

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p2, Ls4/o;

    iget-boolean v0, p0, Lz4/L;->J0:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lz4/L;->F0:[Ljava/lang/String;

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lz4/L;->G0:[Ljava/lang/String;

    :goto_7
    iget v1, p0, Lz4/L;->H0:I

    new-instance v2, Lk5/o;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0}, Lk5/o;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x2

    invoke-direct {p2, v3}, Ls4/o;-><init>(I)V

    iput-object v0, p2, Ls4/o;->e:Ljava/lang/Object;

    iput v1, p2, Ls4/o;->f:I

    iput-object v2, p2, Ls4/o;->g:Ld5/p;

    iput-object p2, p0, Lz4/L;->C0:Ls4/o;

    iget-object v0, p0, Lz4/L;->B0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
