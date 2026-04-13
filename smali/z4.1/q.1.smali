.class public Lz4/q;
.super Landroidx/fragment/app/m;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A0:Landroidx/recyclerview/widget/RecyclerView;

.field public B0:Landroid/widget/Button;

.field public C0:Landroid/widget/Button;

.field public D0:Landroid/widget/Button;

.field public E0:Ljava/util/ArrayList;

.field public F0:[Ljava/lang/String;

.field public G0:[Ljava/lang/String;

.field public H0:[Z

.field public I0:Ljava/util/List;

.field public J0:LG4/b;

.field public K0:Ls4/b;

.field public L0:Lib/player/base/helper/w;

.field public M0:Lib/player/models/WordModels;

.field public N0:Landroid/content/Context;

.field public O0:I

.field public P0:I

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz4/q;->I0:Ljava/util/List;

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/q;->M0:Lib/player/models/WordModels;

    const/4 v0, 0x0

    iput v0, p0, Lz4/q;->P0:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b008a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lz4/q;->I0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lz4/q;->G0:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lz4/q;->K0:Ls4/b;

    invoke-virtual {p1, v3}, Ls4/b;->k(Z)V

    iget-object p1, p0, Lz4/q;->I0:Ljava/util/List;

    iget-object v0, p0, Lz4/q;->G0:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lz4/q;->K0:Ls4/b;

    invoke-virtual {p1, v2}, Ls4/b;->k(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz4/q;->I0:Ljava/util/List;

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009c

    if-ne v0, v1, :cond_5

    iget p1, p0, Lz4/q;->O0:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lz4/q;->I0:Ljava/util/List;

    iget-object v0, p0, Lz4/q;->N0:Landroid/content/Context;

    iget-object v1, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-static {p1, v0, v1}, Lib/player/base/n;->a(Ljava/util/List;Landroid/content/Context;Lib/player/base/helper/w;)V

    iget-object p1, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/q;->I0:Ljava/util/List;

    iget-object v1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invisible_live_categories"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p1, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/j;

    invoke-virtual {p1, v0}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lz4/q;->I0:Ljava/util/List;

    iget-object v0, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-static {p1, v0}, Lib/player/base/n;->c(Ljava/util/List;Lib/player/base/helper/w;)V

    iget-object p1, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/q;->I0:Ljava/util/List;

    iget-object v1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invisible_vod_categories"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p1, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/j;

    invoke-virtual {p1, v0}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lz4/q;->I0:Ljava/util/List;

    iget-object v0, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-static {p1, v0}, Lib/player/base/n;->b(Ljava/util/List;Lib/player/base/helper/w;)V

    iget-object p1, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/q;->I0:Ljava/util/List;

    iget-object v1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invisible_series_categories"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p1, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/j;

    invoke-virtual {p1, v0}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_0
    iget-object p1, p0, Lz4/q;->J0:LG4/b;

    iget-object v0, p1, LG4/b;->a:LG4/d;

    iget p1, p1, LG4/b;->b:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "type"

    invoke-virtual {v1, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "refresh"

    invoke-virtual {v1, p1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/K;->Y(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b008d

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_6
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0e004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b03e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/q;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b030a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lz4/q;->A0:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/q;->B0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/q;->C0:Landroid/widget/Button;

    const p2, 0x7f0b008a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/q;->D0:Landroid/widget/Button;

    iget-object p2, p0, Lz4/q;->B0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/q;->C0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/q;->D0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/q;->N0:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    iget-object p2, p0, Lz4/q;->N0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/q;->M0:Lib/player/models/WordModels;

    iget-object v0, p0, Lz4/q;->z0:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getSelect_categories_you_want_to_hide()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/q;->B0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/q;->M0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/q;->D0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/q;->M0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getSelect_all()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/q;->C0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/q;->M0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lz4/q;->O0:I

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    sget p2, Lib/player/app/MyApp;->A:I

    iput p2, p0, Lz4/q;->P0:I

    move p2, v1

    :goto_0
    iget-object v2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->T()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lz4/q;->P0:I

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    iget-object v3, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->T()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lz4/q;->P0:I

    add-int/2addr v4, p2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/CategoryModel;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->D()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lz4/q;->I0:Ljava/util/List;

    goto/16 :goto_3

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    sget p2, Lib/player/app/MyApp;->z:I

    iput p2, p0, Lz4/q;->P0:I

    move p2, v1

    :goto_1
    iget-object v2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->e0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lz4/q;->P0:I

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_3

    iget-object v2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    iget-object v3, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->e0()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lz4/q;->P0:I

    add-int/2addr v4, p2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/CategoryModel;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->E()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lz4/q;->I0:Ljava/util/List;

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    sget p2, Lib/player/app/MyApp;->y:I

    iget-object v2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lz4/q;->P0:I

    move p2, v1

    :goto_2
    iget-object v2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lz4/q;->P0:I

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_5

    iget-object v2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    iget-object v3, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->u()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lz4/q;->P0:I

    add-int/2addr v4, p2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/CategoryModel;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lz4/q;->L0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->C()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lz4/q;->I0:Ljava/util/List;

    :goto_3
    iget-object p2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lz4/q;->F0:[Ljava/lang/String;

    iget-object p2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lz4/q;->G0:[Ljava/lang/String;

    iget-object p2, p0, Lz4/q;->F0:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lz4/q;->H0:[Z

    :goto_4
    iget-object p2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    iget-object p2, p0, Lz4/q;->E0:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/CategoryModel;

    iget-object v2, p0, Lz4/q;->F0:[Ljava/lang/String;

    invoke-virtual {p2}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lz4/q;->G0:[Ljava/lang/String;

    invoke-virtual {p2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lz4/q;->H0:[Z

    iget-object v3, p0, Lz4/q;->I0:Ljava/util/List;

    invoke-virtual {p2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    aput-boolean p2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    new-instance p2, Ls4/b;

    iget-object v1, p0, Lz4/q;->F0:[Ljava/lang/String;

    iget-object v2, p0, Lz4/q;->H0:[Z

    new-instance v3, Lk5/o;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, Lk5/o;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v1, v2, v3}, Ls4/b;-><init>([Ljava/lang/String;[ZLd5/p;)V

    iput-object p2, p0, Lz4/q;->K0:Ls4/b;

    iget-object p2, p0, Lz4/q;->A0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p2, p0, Lz4/q;->A0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lz4/q;->K0:Ls4/b;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
