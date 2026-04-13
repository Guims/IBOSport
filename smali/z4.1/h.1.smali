.class public Lz4/h;
.super Landroidx/fragment/app/m;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroidx/recyclerview/widget/RecyclerView;

.field public C0:Landroid/widget/Button;

.field public D0:Landroid/widget/Button;

.field public E0:Landroid/widget/Button;

.field public F0:Ljava/util/ArrayList;

.field public G0:Ljava/util/List;

.field public H0:Ljava/util/List;

.field public I0:Ljava/util/ArrayList;

.field public J0:[Ljava/lang/String;

.field public K0:[Z

.field public L0:Ls4/b;

.field public M0:Lib/player/base/helper/w;

.field public N0:Lib/player/models/WordModels;

.field public O0:I

.field public z0:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz4/h;->G0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz4/h;->H0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/h;->N0:Lib/player/models/WordModels;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0b008a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lz4/h;->J0:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz4/h;->L0:Ls4/b;

    invoke-virtual {v0, v3}, Ls4/b;->k(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object v0, p0, Lz4/h;->L0:Ls4/b;

    invoke-virtual {v0, v4}, Ls4/b;->k(Z)V

    iget-object v0, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v2, p0, Lz4/h;->J0:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0b009c

    if-ne v0, v2, :cond_a

    iget v0, p0, Lz4/h;->O0:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v3, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, p0, Lz4/h;->z0:Landroid/content/Context;

    invoke-static {v8}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v8

    new-instance v9, LE4/b;

    invoke-direct {v9, p0, v0, v2}, LE4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v8, v6, v7, v9}, Lib/player/base/helper/w;->d(Ljava/lang/String;ZLib/player/base/helper/x;)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :cond_3
    :goto_1
    if-ge v5, v3, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lib/player/models/ResumeModel;

    invoke-virtual {v8}, Lib/player/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v4, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/ResumeModel;

    iget-object v5, p0, Lz4/h;->z0:Landroid/content/Context;

    invoke-static {v5}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v7

    invoke-virtual {v4}, Lib/player/models/ResumeModel;->getStream_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lib/player/models/ResumeModel;->getTmdb_id()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Lz4/g;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, v0

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lz4/g;-><init>(Lz4/h;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;I)V

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v14}, Lib/player/base/helper/w;->a(Ljava/lang/String;Ljava/lang/String;ZJILib/player/base/helper/x;)V

    move-object v0, v4

    goto :goto_2

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :cond_7
    :goto_3
    if-ge v5, v3, :cond_9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lib/player/models/ResumeSeriesModel;

    invoke-virtual {v8}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v4, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/ResumeSeriesModel;

    iget-object v5, p0, Lz4/h;->z0:Landroid/content/Context;

    invoke-static {v5}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v7

    invoke-virtual {v4}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Lz4/g;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lz4/g;-><init>(Lz4/h;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lib/player/base/helper/w;->e(Ljava/lang/String;ZIILib/player/base/helper/x;)V

    move-object v0, v4

    goto :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0b008d

    if-ne v0, v2, :cond_b

    invoke-virtual {p0, v4, v4}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_b
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

    iput-object p2, p0, Lz4/h;->A0:Landroid/widget/TextView;

    const p2, 0x7f0b030a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lz4/h;->B0:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/h;->C0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/h;->D0:Landroid/widget/Button;

    const p2, 0x7f0b008a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/h;->E0:Landroid/widget/Button;

    iget-object p2, p0, Lz4/h;->C0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/h;->D0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/h;->E0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/h;->z0:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lz4/h;->M0:Lib/player/base/helper/w;

    iget-object p2, p0, Lz4/h;->z0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/h;->N0:Lib/player/models/WordModels;

    iget v0, p0, Lz4/h;->O0:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz4/h;->A0:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getClear_series_header()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz4/h;->A0:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getClear_movie_header()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz4/h;->A0:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getClear_channel_header()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lz4/h;->C0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/h;->N0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/h;->E0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/h;->N0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getSelect_all()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/h;->D0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/h;->N0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lz4/h;->O0:I

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/h;->H0:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object p2, p0, Lz4/h;->M0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->R()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lz4/h;->J0:[Ljava/lang/String;

    iget-object p2, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lz4/h;->K0:[Z

    :goto_1
    iget-object p2, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    iget-object p2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v0, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/ResumeSeriesModel;

    invoke-virtual {v0}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz4/h;->J0:[Ljava/lang/String;

    iget-object v0, p0, Lz4/h;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/ResumeSeriesModel;

    invoke-virtual {v0}, Lib/player/models/ResumeSeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/h;->G0:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object p2, p0, Lz4/h;->M0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->S()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lz4/h;->J0:[Ljava/lang/String;

    iget-object p2, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lz4/h;->K0:[Z

    :goto_2
    iget-object p2, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    iget-object p2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v0, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/ResumeModel;

    invoke-virtual {v0}, Lib/player/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz4/h;->J0:[Ljava/lang/String;

    iget-object v0, p0, Lz4/h;->G0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/ResumeModel;

    invoke-virtual {v0}, Lib/player/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object p2, p0, Lz4/h;->z0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p2

    invoke-virtual {p2}, Lib/player/base/helper/w;->q()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lz4/h;->J0:[Ljava/lang/String;

    iget-object p2, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lz4/h;->K0:[Z

    :goto_3
    iget-object p2, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    iget-object p2, p0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v0, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz4/h;->J0:[Ljava/lang/String;

    iget-object v0, p0, Lz4/h;->F0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    new-instance p2, Ls4/b;

    iget-object v0, p0, Lz4/h;->J0:[Ljava/lang/String;

    iget-object v1, p0, Lz4/h;->K0:[Z

    new-instance v2, Lk5/o;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p0}, Lk5/o;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v0, v1, v2}, Ls4/b;-><init>([Ljava/lang/String;[ZLd5/p;)V

    iput-object p2, p0, Lz4/h;->L0:Ls4/b;

    iget-object p2, p0, Lz4/h;->B0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p2, p0, Lz4/h;->B0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lz4/h;->L0:Ls4/b;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
