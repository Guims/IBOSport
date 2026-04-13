.class public final Ls4/G;
.super Lv1/y;


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Ljava/util/List;

.field public final f:Ld5/q;

.field public g:I

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IZZLd5/q;)V
    .locals 0

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p1, p0, Ls4/G;->d:Landroid/content/Context;

    iput-object p2, p0, Ls4/G;->e:Ljava/util/List;

    iput-object p6, p0, Ls4/G;->f:Ld5/q;

    iput p3, p0, Ls4/G;->g:I

    iput-boolean p5, p0, Ls4/G;->h:Z

    iput-boolean p4, p0, Ls4/G;->i:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ls4/G;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g(Lv1/X;I)V
    .locals 11

    move-object v4, p1

    check-cast v4, Ls4/F;

    iget-object p1, p0, Ls4/G;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lib/player/models/CategoryModel;

    iget-object p1, v4, Ls4/F;->u:Landroid/widget/TextView;

    iget-object v6, v4, Ls4/F;->w:Landroid/view/View;

    iget-object v7, v4, Lv1/X;->a:Landroid/view/View;

    iget-object v8, v4, Ls4/F;->v:Landroid/widget/TextView;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Ls4/G;->h:Z

    iget-boolean v1, p0, Ls4/G;->i:Z

    const/4 v9, 0x0

    const-string v3, ""

    iget-object v10, p0, Ls4/G;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v10}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1, v9}, Lib/player/base/helper/w;->p(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->b()J

    move-result-wide v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v10}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1, v9}, Lib/player/base/helper/w;->t(Lib/player/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->b()J

    move-result-wide v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, LA4/m;

    const/16 v5, 0xa

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, LA4/m;-><init>(Lv1/y;Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, LA4/l;

    const/16 v0, 0xe

    invoke-direct {p2, p0, v3, v2, v0}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v7, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p2, v1, Ls4/G;->g:I

    if-ne p2, v3, :cond_1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06038e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060394

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    invoke-virtual {v6, p1}, Landroid/view/View;->setVisibility(I)V

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
