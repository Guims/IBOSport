.class public final Ls4/z;
.super Lv1/y;


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Ljava/util/List;

.field public final f:Ld5/q;

.field public final g:Z

.field public h:I

.field public final i:Lib/player/base/helper/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZILd5/q;)V
    .locals 0

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p1, p0, Ls4/z;->d:Landroid/content/Context;

    iput-object p2, p0, Ls4/z;->e:Ljava/util/List;

    iput-object p5, p0, Ls4/z;->f:Ld5/q;

    iput-boolean p3, p0, Ls4/z;->g:Z

    iput p4, p0, Ls4/z;->h:I

    new-instance p2, Lib/player/base/helper/w;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Ls4/z;->i:Lib/player/base/helper/w;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ls4/z;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g(Lv1/X;I)V
    .locals 13

    move-object v2, p1

    check-cast v2, Ls4/F;

    iget-object p1, p0, Ls4/z;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lib/player/models/CategoryModel;

    iget-object p1, v2, Ls4/F;->u:Landroid/widget/TextView;

    iget-object v9, v2, Ls4/F;->w:Landroid/view/View;

    iget-object v10, v2, Lv1/X;->a:Landroid/view/View;

    iget-object v11, v2, Ls4/F;->v:Landroid/widget/TextView;

    invoke-virtual {v3}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lib/player/app/MyApp;->y:I

    add-int/lit8 v1, v0, -0x1

    iget-object v12, p0, Ls4/z;->d:Landroid/content/Context;

    if-le p2, v1, :cond_1

    iget-object v1, p0, Ls4/z;->i:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v0

    if-ge p2, v4, :cond_1

    invoke-virtual {v1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v4

    sub-int v0, p2, v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v12}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4, v0}, Lib/player/base/helper/w;->g(Ljava/lang/String;Ljava/util/List;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->b()J

    move-result-wide v0

    :goto_0
    move-object v4, v3

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0xa

    goto :goto_0

    :cond_1
    move-object v4, v3

    invoke-static {v12}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, ""

    iget-boolean v6, p0, Ls4/z;->g:Z

    invoke-virtual/range {v3 .. v8}, Lib/player/base/helper/w;->l(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->b()J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, LA4/m;

    const/4 v5, 0x6

    move-object v1, p0

    move-object v3, v4

    move v4, p2

    invoke-direct/range {v0 .. v5}, LA4/m;-><init>(Lv1/y;Lv1/X;Ljava/io/Serializable;II)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, LA4/l;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v4, v3, v0}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v10, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p2, v1, Ls4/z;->h:I

    if-ne p2, v4, :cond_2

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06038e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060394

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    invoke-virtual {v9, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    new-instance p2, Ls4/F;

    const v0, 0x7f0e006d

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/F;-><init>(Landroid/view/View;)V

    return-object p2
.end method
