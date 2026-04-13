.class public Lz4/i;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Landroidx/recyclerview/widget/RecyclerView;

.field public B0:Landroid/widget/ImageButton;

.field public C0:Leightbitlab/com/blurview/BlurView;

.field public D0:Ljava/lang/String;

.field public E0:Lib/player/models/WordModels;

.field public F0:Landroid/content/Context;

.field public G0:LE4/b;

.field public z0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/i;->E0:Lib/player/models/WordModels;

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

    const v0, 0x7f0e0046

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lz4/i;->F0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/i;->E0:Lib/player/models/WordModels;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/i;->z0:Ljava/util/ArrayList;

    new-instance v0, Lib/player/base/p;

    iget-object v1, p0, Lz4/i;->E0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getConnect()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz4/i;->z0:Ljava/util/ArrayList;

    new-instance v0, Lib/player/base/p;

    iget-object v1, p0, Lz4/i;->E0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getEdit()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz4/i;->z0:Ljava/util/ArrayList;

    new-instance v0, Lib/player/base/p;

    iget-object v1, p0, Lz4/i;->E0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getDelete()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p2, 0x7f0b03f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lz4/i;->D0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b0318

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lz4/i;->A0:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b01d5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lz4/i;->B0:Landroid/widget/ImageButton;

    const p2, 0x7f0b0076

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Leightbitlab/com/blurview/BlurView;

    iput-object p2, p0, Lz4/i;->C0:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v1, p0, Lz4/i;->C0:Leightbitlab/com/blurview/BlurView;

    new-instance v2, Lr4/a;

    iget v3, v1, Leightbitlab/com/blurview/BlurView;->q:I

    invoke-direct {v2, v3, v1, v0}, Lr4/a;-><init>(ILandroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v0, v1, Leightbitlab/com/blurview/BlurView;->b:Lr4/c;

    invoke-interface {v0}, Lr4/c;->destroy()V

    iput-object v2, v1, Leightbitlab/com/blurview/BlurView;->b:Lr4/c;

    iput-object p2, v2, Lr4/a;->B:Landroid/graphics/drawable/Drawable;

    new-instance p2, LS2/f;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LS2/f;-><init>(Landroid/content/Context;)V

    iput-object p2, v2, Lr4/a;->q:Lr4/b;

    const/high16 p2, 0x41a00000    # 20.0f

    iput p2, v2, Lr4/a;->b:F

    const/4 p2, 0x1

    invoke-virtual {v2, p2}, Lr4/a;->b(Z)Lr4/c;

    iput-boolean p2, v2, Lr4/a;->C:Z

    new-instance v0, Ls4/d;

    iget-object v1, p0, Lz4/i;->z0:Ljava/util/ArrayList;

    new-instance v2, LB4/d;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, LB4/d;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ls4/d;-><init>(I)V

    iput-object v1, v0, Ls4/d;->e:Ljava/lang/Object;

    iput-object v2, v0, Ls4/d;->f:Ljava/lang/Object;

    iget-object v1, p0, Lz4/i;->A0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object v0, p0, Lz4/i;->A0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p2, p0, Lz4/i;->B0:Landroid/widget/ImageButton;

    new-instance v0, LB4/u;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
