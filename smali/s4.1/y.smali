.class public final Ls4/y;
.super Lv1/y;


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Ljava/util/List;

.field public final f:Ld5/q;

.field public g:I

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/ArrayList;Ld5/q;)V
    .locals 1

    invoke-direct {p0}, Lv1/y;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ls4/y;->g:I

    iput-object p1, p0, Ls4/y;->d:Landroid/content/Context;

    iput-boolean p2, p0, Ls4/y;->h:Z

    iput-object p3, p0, Ls4/y;->e:Ljava/util/List;

    iput-object p4, p0, Ls4/y;->f:Ld5/q;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ls4/y;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g(Lv1/X;I)V
    .locals 12

    move-object v4, p1

    check-cast v4, Ls4/x;

    iget-object p1, p0, Ls4/y;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lib/player/models/CatchUpEpg;

    iget-object p1, v4, Ls4/x;->w:Landroid/widget/TextView;

    iget-object v0, v4, Ls4/x;->A:Landroid/widget/ImageView;

    iget-object v1, v4, Ls4/x;->u:Landroid/widget/TextView;

    iget-object v3, v4, Ls4/x;->v:Landroid/widget/TextView;

    iget-object v5, v4, Ls4/x;->z:Landroid/widget/ImageView;

    iget-object v6, v4, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v2}, Lib/player/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lv4/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v4, Ls4/x;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Lib/player/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iget-object v11, p0, Ls4/y;->d:Landroid/content/Context;

    invoke-static {v7, v8, v11}, Lv4/c;->c(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v4, Ls4/x;->y:Landroid/widget/TextView;

    invoke-virtual {v2}, Lib/player/models/CatchUpEpg;->getStop_timestamp()J

    move-result-wide v7

    mul-long/2addr v7, v9

    invoke-static {v7, v8, v11}, Lv4/c;->c(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lib/player/models/CatchUpEpg;->getHas_archive()I

    move-result p1

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-ne p1, v7, :cond_0

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget p1, p0, Ls4/y;->g:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v2}, Lib/player/models/CatchUpEpg;->getReadableDuration()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const-string p1, ""

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    new-instance v0, LA4/m;

    const/4 v5, 0x5

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, LA4/m;-><init>(Lv1/y;Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, LA4/l;

    const/16 p2, 0x9

    invoke-direct {p1, p0, v2, v3, p2}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v6, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    new-instance p2, Ls4/x;

    const v0, 0x7f0e0072

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Ls4/y;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Ls4/y;->h:Z

    if-eqz v1, :cond_0

    const v1, 0x7f070274

    goto :goto_0

    :cond_0
    const v1, 0x7f07020b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b03cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/x;->u:Landroid/widget/TextView;

    const v0, 0x7f0b03ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/x;->v:Landroid/widget/TextView;

    const v0, 0x7f0b03f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/x;->w:Landroid/widget/TextView;

    const v0, 0x7f0b0404

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/x;->x:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/x;->y:Landroid/widget/TextView;

    const v0, 0x7f0b00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/x;->z:Landroid/widget/ImageView;

    const v0, 0x7f0b01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/x;->A:Landroid/widget/ImageView;

    return-object p2
.end method

.method public final k(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ls4/y;->e:Ljava/util/List;

    invoke-virtual {p0}, Lv1/y;->d()V

    return-void
.end method
