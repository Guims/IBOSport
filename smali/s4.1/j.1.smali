.class public final Ls4/j;
.super Lv1/y;


# instance fields
.field public d:Landroid/content/Context;

.field public e:Ljava/util/List;

.field public f:I

.field public g:I

.field public h:Lib/player/pages/series/c;

.field public i:Ljava/util/ArrayList;


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ls4/j;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g(Lv1/X;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p1

    check-cast v4, Ls4/i;

    iget-object v0, v1, Ls4/j;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lib/player/models/EpisodeModel;

    iget-object v0, v4, Ls4/i;->v:Landroid/widget/TextView;

    iget-object v6, v4, Ls4/i;->y:Landroid/widget/ImageView;

    iget-object v7, v4, Lv1/X;->a:Landroid/view/View;

    iget-object v5, v4, Ls4/i;->w:Landroid/widget/TextView;

    iget-object v8, v4, Ls4/i;->z:Landroid/widget/ProgressBar;

    iget v9, v1, Ls4/j;->g:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string v11, "S%d .E%d"

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Ls4/i;->u:Landroid/widget/TextView;

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    const-string v9, "0h 0m"

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/models/EpisodeInfoModel;->getDuration()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/models/EpisodeInfoModel;->getDuration()Ljava/lang/String;

    move-result-object v0

    const-string v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v12, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const-string v15, "h "

    if-ne v12, v13, :cond_0

    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v0, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "m "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    array-length v12, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "m"

    if-ne v12, v14, :cond_1

    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v0, v11

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v12, v0

    if-ne v12, v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v9

    :goto_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x8

    if-eqz v9, :cond_3

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, v1, Ls4/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    iget-object v0, v1, Ls4/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v12, v0

    const-wide/16 v14, 0x0

    cmpl-double v0, v12, v14

    if-lez v0, :cond_4

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x64

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    double-to-int v0, v12

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, v1, Ls4/j;->d:Landroid/content/Context;

    new-instance v5, Lcom/google/gson/j;

    invoke-direct {v5}, Lcom/google/gson/j;-><init>()V

    const-string v5, "PREF"

    invoke-virtual {v0, v5, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_3
    const-string v5, "is_m3u"

    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move v0, v11

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v5, v4, Ls4/i;->x:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v8, Ls4/h;

    invoke-direct {v8, v1, v4, v0}, Ls4/h;-><init>(Ls4/j;Ls4/i;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v0, LA4/l;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v3, v5}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LA4/m;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, LA4/m;-><init>(Lv1/y;Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget v0, v1, Ls4/j;->f:I

    if-ne v0, v3, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    new-instance p2, Ls4/i;

    const v0, 0x7f0e0067

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/i;->u:Landroid/widget/TextView;

    const v0, 0x7f0b03ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/i;->v:Landroid/widget/TextView;

    const v0, 0x7f0b01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/i;->y:Landroid/widget/ImageView;

    const v0, 0x7f0b01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/i;->x:Landroid/widget/ImageView;

    const v0, 0x7f0b03e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/i;->w:Landroid/widget/TextView;

    const v0, 0x7f0b033e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p2, Ls4/i;->z:Landroid/widget/ProgressBar;

    return-object p2
.end method
