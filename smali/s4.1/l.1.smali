.class public final Ls4/l;
.super Lv1/y;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/util/List;

.field public f:I

.field public g:I

.field public h:Landroid/content/Context;

.field public i:LS4/a;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ls4/l;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ls4/l;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls4/l;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Ls4/l;->e:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lv1/X;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v3, p2

    iget v0, v1, Ls4/l;->d:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ls4/s;

    iget-object v2, v1, Ls4/l;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EpisodeModel;

    iget-object v4, v0, Ls4/s;->u:Landroid/widget/TextView;

    iget-object v5, v0, Lv1/X;->a:Landroid/view/View;

    iget v6, v1, Ls4/l;->g:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "S%d .E%d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Ls4/l;->h:Landroid/content/Context;

    new-instance v7, Lcom/google/gson/j;

    invoke-direct {v7}, Lcom/google/gson/j;-><init>()V

    const-string v7, "PREF"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    :try_start_0
    const-string v7, "is_m3u"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v11, v6

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v6

    invoke-virtual {v6}, Lib/player/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :goto_2
    iget-object v9, v1, Ls4/l;->h:Landroid/content/Context;

    iget-object v10, v0, Ls4/s;->v:Landroid/widget/ImageView;

    const/16 v15, 0x226

    const/16 v16, 0x3c

    const v12, 0x7f0800cc

    const v13, 0x7f0800cc

    const/16 v14, 0x44c

    invoke-static/range {v9 .. v16}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    new-instance v0, LA4/l;

    const/16 v6, 0x8

    invoke-direct {v0, v1, v2, v3, v6}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, v1, Ls4/l;->f:I

    if-ne v0, v3, :cond_2

    const v0, 0x7f080155

    invoke-virtual {v4, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const v0, 0x7f080239

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f080236

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    return-void

    :pswitch_0
    move-object/from16 v4, p1

    check-cast v4, Ls4/k;

    iget-object v0, v1, Ls4/l;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lib/player/models/EpisodeModel;

    iget-object v0, v4, Ls4/k;->u:Landroid/widget/TextView;

    iget-object v6, v4, Ls4/k;->w:Landroid/widget/ImageView;

    iget-object v7, v4, Lv1/X;->a:Landroid/view/View;

    iget v5, v1, Ls4/l;->g:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "S%d .E%d"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Ls4/l;->h:Landroid/content/Context;

    check-cast v0, Lib/player/pages/series/SeriesPlayerActivity;

    new-instance v5, Lcom/google/gson/j;

    invoke-direct {v5}, Lcom/google/gson/j;-><init>()V

    const-string v5, "PREF"

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_1
    const-string v5, "is_m3u"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move v0, v8

    :goto_4
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v11, v0

    goto :goto_6

    :cond_3
    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_6
    iget-object v0, v1, Ls4/l;->h:Landroid/content/Context;

    move-object v9, v0

    check-cast v9, Lib/player/pages/series/SeriesPlayerActivity;

    iget-object v10, v4, Ls4/k;->v:Landroid/widget/ImageView;

    const/16 v15, 0x226

    const/16 v16, 0x3c

    const v12, 0x7f0800cc

    const v13, 0x7f0800cc

    const/16 v14, 0x44c

    invoke-static/range {v9 .. v16}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    new-instance v0, LA4/l;

    const/4 v5, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LA4/m;

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, LA4/m;-><init>(Lv1/y;Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget v0, v1, Ls4/l;->f:I

    if-ne v0, v3, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    iget p2, p0, Ls4/l;->d:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ls4/s;

    const v0, 0x7f0e0068

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/s;->u:Landroid/widget/TextView;

    const v0, 0x7f0b01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/s;->v:Landroid/widget/ImageView;

    return-object p2

    :pswitch_0
    new-instance p2, Ls4/k;

    const v0, 0x7f0e0068

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/k;->u:Landroid/widget/TextView;

    const v0, 0x7f0b01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/k;->v:Landroid/widget/ImageView;

    const v0, 0x7f0b01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/k;->w:Landroid/widget/ImageView;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
