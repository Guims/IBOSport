.class public final synthetic LB4/d;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/q;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB4/d;->b:I

    iput-object p2, p0, LB4/d;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, LB4/d;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, LB4/d;->q:Ljava/lang/Object;

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast v7, Lz4/i;

    check-cast p1, Lib/player/base/p;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v8}, Landroidx/fragment/app/m;->P(ZZ)V

    iget-object p1, v7, Lz4/i;->G0:LE4/b;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p1, LE4/b;->q:Ljava/lang/Object;

    check-cast p3, Lib/player/pages/playlist/PlaylistActivity;

    iget v0, p1, LE4/b;->b:I

    iget-object p1, p1, LE4/b;->r:Ljava/lang/Object;

    check-cast p1, Lib/player/models/AppInfoModel$UrlModel;

    sget v1, Lib/player/pages/playlist/PlaylistActivity;->J0:I

    if-eqz p2, :cond_4

    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p2

    invoke-static {p2, p2}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    const-string v1, "fragment_delete"

    invoke-virtual {p2, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0, v2, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getDelete_playlist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p3, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getWant_delete_playlist()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lz4/n;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;

    move-result-object v0

    new-instance v2, LE4/d;

    invoke-direct {v2, p3, v0, p1}, LE4/d;-><init>(Lib/player/pages/playlist/PlaylistActivity;Lz4/n;Lib/player/models/AppInfoModel$UrlModel;)V

    iput-object v2, v0, Lz4/n;->D0:Lz4/m;

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lib/player/models/AppInfoModel$UrlModel;->getIs_protected()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p3, Lib/player/base/k;->O:Lib/player/models/WordModels;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getPlaylist_protected()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Lib/player/pages/playlist/PlaylistActivity;->c0(I)V

    goto :goto_0

    :cond_4
    iget-boolean p2, p3, Lib/player/pages/playlist/PlaylistActivity;->G0:Z

    if-eqz p2, :cond_5

    iget p2, p3, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    if-ne p2, v0, :cond_5

    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    iput v0, p3, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    invoke-virtual {p3, p1}, Lib/player/base/k;->S(Lib/player/models/AppInfoModel$UrlModel;)V

    :goto_0
    return-object v6

    :pswitch_0
    check-cast v7, Lib/player/pages/series/SeriesPlayerActivity;

    check-cast p1, Lib/player/models/EpisodeModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    sget p1, Lib/player/pages/series/SeriesPlayerActivity;->V0:I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, v7, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p1, p3, :cond_7

    invoke-virtual {v7}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v7, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {v7, p1}, Lib/player/pages/series/SeriesPlayerActivity;->E(I)V

    invoke-virtual {v7, v8}, Lib/player/pages/series/SeriesPlayerActivity;->K(Z)V

    iget-object p1, v7, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v7, Lib/player/pages/series/SeriesPlayerActivity;->B0:I

    iget-object p1, v7, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object p2, v7, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    :cond_7
    :goto_1
    return-object v6

    :pswitch_1
    check-cast v7, Lib/player/pages/series/j;

    check-cast p1, Lib/player/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    sget-object p1, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, v7, Lib/player/pages/series/j;->s0:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p1, p3, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v7, Lib/player/pages/series/j;->s0:I

    new-instance p1, LB4/o;

    invoke-direct {p1, v2, v7}, LB4/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, p1}, Lib/player/pages/series/j;->Y(LB4/o;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v7, Lib/player/pages/series/j;->t0:I

    iget-object p1, v7, Lib/player/pages/series/j;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v8

    iput v8, v7, Lib/player/pages/series/j;->x0:I

    iget-object p1, v7, Lib/player/pages/series/j;->v0:Lib/player/pages/MainActivity;

    iput-boolean v5, p1, Lib/player/pages/MainActivity;->y0:Z

    :cond_9
    :goto_2
    return-object v6

    :pswitch_2
    check-cast v7, Lib/player/pages/MainActivity;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lib/player/pages/g;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v7, p2, p3}, Lib/player/pages/MainActivity;->a0(Lib/player/pages/MainActivity;Lib/player/pages/g;Ljava/lang/Boolean;)V

    return-object v6

    :pswitch_3
    const-string v0, "ts"

    check-cast v7, LG4/d;

    check-cast p1, Lib/player/base/p;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, LG4/d;->r0:I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_40

    iget-object p1, p1, Lib/player/base/p;->a:Ljava/lang/String;

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getAdd_playlist()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-static {p1, p1}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object p2

    const-string p3, "fragment_add"

    invoke-virtual {p1, p3}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_3
    invoke-static {p2, v0, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto/16 :goto_10

    :cond_a
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Le4/c;

    const/16 v2, 0x12

    invoke-direct {v0, v2, v7}, Le4/c;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lz4/f;

    invoke-direct {v2}, Lz4/f;-><init>()V

    iput-object p2, v2, Lz4/f;->M0:Landroid/content/Context;

    iput-object v0, v2, Lz4/f;->Y0:Lz4/e;

    iput v1, v2, Lz4/f;->R0:I

    iput-object v2, v7, LG4/d;->s0:Lz4/f;

    invoke-virtual {v2, p1, p3}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_b
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getParent_control()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-static {p1, p1}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object p2

    const-string p3, "fragment_parent"

    invoke-virtual {p1, p3}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance p2, Lz4/E;

    invoke-direct {p2}, Lz4/E;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_d
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getChange_playlist()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lib/player/pages/playlist/PlaylistActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "is_home"

    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, p1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    goto/16 :goto_10

    :cond_e
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getChange_language()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x4

    if-eqz p2, :cond_14

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lib/player/base/helper/w;

    invoke-direct {p2, p1, v8}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lib/player/base/helper/w;->G()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lib/player/base/helper/w;->H()Ljava/util/List;

    move-result-object v0

    move v1, v8

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/LanguageModel;

    invoke-virtual {v2}, Lib/player/models/LanguageModel;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    move v1, v8

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/LanguageModel;

    invoke-virtual {p1}, Lib/player/models/LanguageModel;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v2, "en"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p2, v2}, Lib/player/base/helper/w;->l0(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v1, v8

    :goto_6
    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->H()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p2

    invoke-static {p2, p2}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    const-string v2, "fragment_language"

    invoke-virtual {p2, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_13

    :goto_7
    invoke-static {v0, v3, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto/16 :goto_10

    :cond_13
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v3, LD0/f;

    invoke-direct {v3, v7, p3, p1}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p3, Lz4/t;

    invoke-direct {p3}, Lz4/t;-><init>()V

    iput-object v0, p3, Lz4/t;->E0:Landroid/content/Context;

    iput-object p1, p3, Lz4/t;->z0:Ljava/util/List;

    iput v1, p3, Lz4/t;->H0:I

    iput-object v3, p3, Lz4/t;->I0:LD0/f;

    invoke-virtual {p3, p2, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_14
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getChangeLayout()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string p2, "is_grid"

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move p1, v8

    :goto_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getList_layout()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getGrid_layout()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_layout"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_15

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getChangeLayout()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LG4/a;

    invoke-direct {v3, v7, v8}, LG4/a;-><init>(LG4/d;I)V

    invoke-static {v0, p2, p1, v2, v3}, Lz4/w;->T(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;LG4/a;)Lz4/w;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_16
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHide_live_category()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-virtual {v7, v8}, LG4/d;->V(I)V

    goto/16 :goto_10

    :cond_17
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHide_vod_category()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-virtual {v7, v5}, LG4/d;->V(I)V

    goto/16 :goto_10

    :cond_18
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHide_series_category()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-virtual {v7, v4}, LG4/d;->V(I)V

    goto/16 :goto_10

    :cond_19
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getClear_history_channels()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/base/helper/w;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {v7, v8}, LG4/d;->U(I)V

    goto/16 :goto_10

    :cond_1a
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getNo_recently_channels()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :cond_1b
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getClear_history_movies()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->S()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-virtual {v7, v5}, LG4/d;->U(I)V

    goto/16 :goto_10

    :cond_1c
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getNo_recently_movies()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :cond_1d
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getClear_history_series()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->R()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {v7, v4}, LG4/d;->U(I)V

    goto/16 :goto_10

    :cond_1e
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getNo_recently_series()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :cond_1f
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getLive_sort()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->L()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getStringDefault()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getSort_a_z()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getSort_z_a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_live_sort"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_20

    :goto_9
    invoke-static {v0, v2, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto/16 :goto_10

    :cond_20
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getLive_sort()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LG4/a;

    invoke-direct {v3, v7, v4}, LG4/a;-><init>(LG4/d;I)V

    invoke-static {v0, p2, p1, v2, v3}, Lz4/w;->T(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;LG4/a;)Lz4/w;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_21
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getLive_stream_format()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string p2, "live_stream_format"

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_23

    :catch_1
    :cond_22
    move-object p1, v0

    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "MPEG(ts)"

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "HLS(m3u8)"

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-static {p3, p3}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    const-string v1, "fragment_live_format"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_24

    goto :goto_9

    :cond_24
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getLive_stream_format()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LG4/a;

    const/4 v4, 0x6

    invoke-direct {v3, v7, v4}, LG4/a;-><init>(LG4/d;I)V

    invoke-static {v0, p2, p1, v2, v3}, Lz4/w;->T(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;LG4/a;)Lz4/w;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_25
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getAllow_protocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->F()Z

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getDeny()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getAllow_protocol()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_select_player"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_26

    goto/16 :goto_7

    :cond_26
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getAllow_protocol()Ljava/lang/String;

    move-result-object v3

    new-instance v4, LG4/a;

    invoke-direct {v4, v7, v2}, LG4/a;-><init>(LG4/d;I)V

    new-instance v2, Lz4/p;

    invoke-direct {v2}, Lz4/p;-><init>()V

    iput-object v0, v2, Lz4/p;->E0:Landroid/content/Context;

    iput-object p2, v2, Lz4/p;->z0:Ljava/util/ArrayList;

    iput p1, v2, Lz4/p;->H0:I

    iput-object v4, v2, Lz4/p;->J0:LG4/a;

    iput-object v3, v2, Lz4/p;->I0:Ljava/lang/String;

    invoke-virtual {v2, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_27
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getExternal_player()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string p2, "external_player"

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move p1, v8

    :goto_a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getStringDefault()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getVlc_player()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getMx_player()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_external_player"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_28

    goto/16 :goto_9

    :cond_28
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getExternal_player()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LG4/a;

    const/4 v4, 0x3

    invoke-direct {v3, v7, v4}, LG4/a;-><init>(LG4/d;I)V

    new-instance v4, Lz4/p;

    invoke-direct {v4}, Lz4/p;-><init>()V

    iput-object v0, v4, Lz4/p;->E0:Landroid/content/Context;

    iput-object p2, v4, Lz4/p;->z0:Ljava/util/ArrayList;

    iput p1, v4, Lz4/p;->H0:I

    iput-object v3, v4, Lz4/p;->J0:LG4/a;

    iput-object v2, v4, Lz4/p;->I0:Ljava/lang/String;

    invoke-virtual {v4, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_29
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getAutomatic()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->b0()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getAuto_update_everytime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getAuto_update_everyday()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getAuto_update_2day()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_automation"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_2a

    goto/16 :goto_9

    :cond_2a
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getAutomatic()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LG4/a;

    const/4 v4, 0x7

    invoke-direct {v3, v7, v4}, LG4/a;-><init>(LG4/d;I)V

    new-instance v4, Lz4/p;

    invoke-direct {v4}, Lz4/p;-><init>()V

    iput-object v0, v4, Lz4/p;->E0:Landroid/content/Context;

    iput-object p2, v4, Lz4/p;->z0:Ljava/util/ArrayList;

    iput p1, v4, Lz4/p;->H0:I

    iput-object v3, v4, Lz4/p;->J0:LG4/a;

    iput-object v2, v4, Lz4/p;->I0:Ljava/lang/String;

    invoke-virtual {v4, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2b
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getTime_format()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    iget-object p1, v7, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string p2, "time_format"

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->get_12_hour_format()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->get_24_hour_format()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_time_format"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_2c

    goto/16 :goto_9

    :cond_2c
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getTime_format()Ljava/lang/String;

    move-result-object v2

    new-instance v4, LG4/a;

    invoke-direct {v4, v7, v3}, LG4/a;-><init>(LG4/d;I)V

    invoke-static {v0, p2, p1, v2, v4}, Lz4/w;->T(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;LG4/a;)Lz4/w;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2d
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getSubtitle_settings()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-static {p1, p1}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object p2

    const-string p3, "fragment_subtitle_setting"

    invoke-virtual {p1, p3}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v0

    if-eqz v0, :cond_2e

    goto/16 :goto_3

    :cond_2e
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lz4/Q;

    invoke-direct {v0}, Lz4/Q;-><init>()V

    iput-object p2, v0, Lz4/Q;->z0:Landroid/content/Context;

    invoke-virtual {v0, p1, p3}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2f
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getSelect_device_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "TV"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lv4/c;->b()Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "Mobile"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_device_type"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-static {v1, v3, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto/16 :goto_10

    :cond_31
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getSelect_device_type()Ljava/lang/String;

    move-result-object v3

    new-instance v4, LG4/a;

    invoke-direct {v4, v7, p3}, LG4/a;-><init>(LG4/d;I)V

    invoke-static {v1, p2, p1, v3, v4}, Lz4/w;->T(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;LG4/a;)Lz4/w;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_32
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getUpdate_now()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/app/MyApp;->a(Landroid/content/Context;)Lib/player/app/MyApp;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lib/player/app/MyApp;->c()V

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/app/MyApp;->a(Landroid/content/Context;)Lib/player/app/MyApp;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/app/MyApp;->b()V

    iget-object p1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getUpdate()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v7, LG4/d;->o0:Lib/player/models/AppInfoModel;

    invoke-static {p2}, Lv4/c;->e(Lib/player/models/AppInfoModel;)Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getNew_software_update_available()Ljava/lang/String;

    move-result-object p2

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getUpdate_now()Ljava/lang/String;

    move-result-object p3

    iget-object v0, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    move v1, v5

    goto :goto_b

    :cond_33
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getApp_is_up_to_date()Ljava/lang/String;

    move-result-object p2

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object p3

    iget-object v0, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    move v1, v8

    :goto_b
    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v2

    invoke-static {v2, v2}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v3

    const-string v4, "fragment_update"

    invoke-virtual {v2, v4}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v9

    if-eqz v9, :cond_34

    invoke-static {v3, v9, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto/16 :goto_10

    :cond_34
    new-instance v3, Lz4/S;

    invoke-direct {v3}, Lz4/S;-><init>()V

    iput-object p1, v3, Lz4/S;->D0:Ljava/lang/String;

    iput-object p2, v3, Lz4/S;->E0:Ljava/lang/String;

    iput-boolean v1, v3, Lz4/S;->H0:Z

    iput-object p3, v3, Lz4/S;->F0:Ljava/lang/String;

    iput-object v0, v3, Lz4/S;->G0:Ljava/lang/String;

    new-instance p1, LG4/a;

    invoke-direct {p1, v7, v5}, LG4/a;-><init>(LG4/d;I)V

    iput-object p1, v3, Lz4/S;->I0:LG4/a;

    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_35
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getRate_us()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    const-string p1, "android.intent.action.VIEW"

    const-string p2, "market://details?id="

    invoke-virtual {v7}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "com.android.vending"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_10

    :catch_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "https://play.google.com/store/apps/details?id="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, p3}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    goto/16 :goto_10

    :cond_36
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHomeVod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-virtual {v7, v5}, LG4/d;->W(I)V

    goto/16 :goto_10

    :cond_37
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHomeSeries()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-virtual {v7, v4}, LG4/d;->W(I)V

    goto/16 :goto_10

    :cond_38
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getShow_clock()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHide_clock()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    goto/16 :goto_e

    :cond_39
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHide_live()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3e

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getShow_live()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3a

    goto/16 :goto_d

    :cond_3a
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHide_movies()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3d

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getShow_movies()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3b

    goto :goto_c

    :cond_3b
    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getHide_series()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3c

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getShow_series()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_42

    :cond_3c
    iget-object p2, v7, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getHide_series()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "hide_series"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, v7, LG4/d;->v0:Lib/player/pages/MainActivity;

    invoke-virtual {p1}, Lib/player/pages/MainActivity;->d0()Ljava/util/ArrayList;

    iget-object p1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v7, p1}, LG4/d;->T(Lib/player/models/WordModels;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v7, LG4/d;->p0:Ljava/util/ArrayList;

    iget-object p2, v7, LG4/d;->q0:Lr1/i;

    if-eqz p2, :cond_42

    iget p3, v7, LG4/d;->r0:I

    iput-object p1, p2, Lr1/i;->f:Ljava/lang/Object;

    iput p3, p2, Lr1/i;->e:I

    invoke-virtual {p2}, Lv1/y;->d()V

    goto/16 :goto_10

    :cond_3d
    :goto_c
    iget-object p2, v7, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getHide_movies()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "hide_vod"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, v7, LG4/d;->v0:Lib/player/pages/MainActivity;

    invoke-virtual {p1}, Lib/player/pages/MainActivity;->d0()Ljava/util/ArrayList;

    iget-object p1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v7, p1}, LG4/d;->T(Lib/player/models/WordModels;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v7, LG4/d;->p0:Ljava/util/ArrayList;

    iget-object p2, v7, LG4/d;->q0:Lr1/i;

    if-eqz p2, :cond_42

    iget p3, v7, LG4/d;->r0:I

    iput-object p1, p2, Lr1/i;->f:Ljava/lang/Object;

    iput p3, p2, Lr1/i;->e:I

    invoke-virtual {p2}, Lv1/y;->d()V

    goto/16 :goto_10

    :cond_3e
    :goto_d
    iget-object p2, v7, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getHide_live()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "hide_live"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, v7, LG4/d;->v0:Lib/player/pages/MainActivity;

    invoke-virtual {p1}, Lib/player/pages/MainActivity;->d0()Ljava/util/ArrayList;

    iget-object p1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v7, p1}, LG4/d;->T(Lib/player/models/WordModels;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v7, LG4/d;->p0:Ljava/util/ArrayList;

    iget-object p2, v7, LG4/d;->q0:Lr1/i;

    if-eqz p2, :cond_42

    iget p3, v7, LG4/d;->r0:I

    iput-object p1, p2, Lr1/i;->f:Ljava/lang/Object;

    iput p3, p2, Lr1/i;->e:I

    invoke-virtual {p2}, Lv1/y;->d()V

    goto :goto_10

    :cond_3f
    :goto_e
    iget-object p2, v7, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object p3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p3}, Lib/player/models/WordModels;->getShow_clock()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "show_clock"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, v7, LG4/d;->v0:Lib/player/pages/MainActivity;

    invoke-virtual {p1}, Lib/player/pages/MainActivity;->h0()V

    iget-object p1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v7, p1}, LG4/d;->T(Lib/player/models/WordModels;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v7, LG4/d;->p0:Ljava/util/ArrayList;

    iget-object p2, v7, LG4/d;->q0:Lr1/i;

    if-eqz p2, :cond_42

    iget p3, v7, LG4/d;->r0:I

    iput-object p1, p2, Lr1/i;->f:Ljava/lang/Object;

    iput p3, p2, Lr1/i;->e:I

    invoke-virtual {p2}, Lv1/y;->d()V

    goto :goto_10

    :cond_40
    iget-object p1, v7, LG4/d;->v0:Lib/player/pages/MainActivity;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/2addr p2, v4

    if-nez p2, :cond_41

    goto :goto_f

    :cond_41
    move v5, v8

    :goto_f
    iput-boolean v5, p1, Lib/player/pages/MainActivity;->y0:Z

    :cond_42
    :goto_10
    return-object v6

    :pswitch_4
    check-cast v7, Lib/player/pages/playlist/PlaylistActivity;

    check-cast p1, Lib/player/models/AppInfoModel$UrlModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    sget v0, Lib/player/pages/playlist/PlaylistActivity;->J0:I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_46

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, v7, Lib/player/pages/playlist/PlaylistActivity;->z0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_43

    invoke-virtual {v7, v1}, Lib/player/pages/playlist/PlaylistActivity;->c0(I)V

    goto :goto_11

    :cond_43
    iput-object p1, v7, Lib/player/pages/playlist/PlaylistActivity;->E0:Lib/player/models/AppInfoModel$UrlModel;

    invoke-virtual {p1}, Lib/player/models/AppInfoModel$UrlModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, v7, Lib/player/pages/playlist/PlaylistActivity;->E0:Lib/player/models/AppInfoModel$UrlModel;

    invoke-virtual {v7, p1}, Lib/player/base/k;->S(Lib/player/models/AppInfoModel$UrlModel;)V

    goto :goto_11

    :cond_44
    iget-object p1, v7, Lib/player/pages/playlist/PlaylistActivity;->E0:Lib/player/models/AppInfoModel$UrlModel;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v7}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p3

    invoke-static {p3, p3}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    const-string v1, "fragment_connect"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-static {v0, v2, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto :goto_11

    :cond_45
    invoke-virtual {p1}, Lib/player/models/AppInfoModel$UrlModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lz4/i;

    invoke-direct {v2}, Lz4/i;-><init>()V

    iput-object v7, v2, Lz4/i;->F0:Landroid/content/Context;

    iput-object v0, v2, Lz4/i;->D0:Ljava/lang/String;

    new-instance v0, LE4/b;

    invoke-direct {v0, v7, p2, p1}, LE4/b;-><init>(Lib/player/pages/playlist/PlaylistActivity;ILib/player/models/AppInfoModel$UrlModel;)V

    iput-object v0, v2, Lz4/i;->G0:LE4/b;

    invoke-virtual {v2, p3, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto :goto_11

    :cond_46
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v7, Lib/player/pages/playlist/PlaylistActivity;->C0:I

    :goto_11
    return-object v6

    :pswitch_5
    check-cast v7, LD4/x;

    check-cast p1, Lib/player/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    sget-object v0, LD4/x;->D0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v7, LD4/x;->t0:I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_49

    iget p3, v7, LD4/x;->s0:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p3, v0, :cond_4a

    sget-object p3, Lib/player/base/n;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v7}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p2

    invoke-static {p2, p2}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object p3

    const-string v0, "fragment_lock"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-static {p3, v1, v6, v8}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto :goto_12

    :cond_47
    iget-object p3, v7, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p3}, Lib/player/base/helper/w;->P()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lz4/y;->T(Ljava/lang/String;)Lz4/y;

    move-result-object p3

    new-instance v1, LE1/t;

    invoke-direct {v1, p1, v4, v7}, LE1/t;-><init>(IILjava/lang/Object;)V

    iput-object v1, p3, Lz4/y;->A0:Lz4/x;

    invoke-virtual {p3, p2, v0}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto :goto_12

    :cond_48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v7, LD4/x;->s0:I

    new-instance p1, LB4/o;

    invoke-direct {p1, v5, v7}, LB4/o;-><init>(ILjava/lang/Object;)V

    new-instance p2, LB4/a;

    invoke-direct {p2, v7, p1, v4}, LB4/a;-><init>(Lib/player/base/BaseFragment;Ljava/lang/Object;I)V

    invoke-virtual {v7, p2}, LD4/x;->a0(LB4/a;)V

    goto :goto_12

    :cond_49
    iget-object p1, v7, LD4/x;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v8

    iput v8, v7, LD4/x;->x0:I

    iget-object p1, v7, LD4/x;->v0:Lib/player/pages/MainActivity;

    iput-boolean v5, p1, Lib/player/pages/MainActivity;->y0:Z

    :cond_4a
    :goto_12
    return-object v6

    :pswitch_6
    check-cast v7, LD4/h;

    check-cast p1, Lib/player/models/CastModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4b

    invoke-virtual {p1}, Lib/player/models/CastModel;->getId()I

    move-result p2

    if-lez p2, :cond_4d

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lib/player/pages/movie/MovieCreditActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "person_id"

    invoke-virtual {p1}, Lib/player/models/CastModel;->getId()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, v7, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "name"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v7, LD4/h;->x0:Landroidx/fragment/app/n;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/n;->a(Landroid/os/Parcelable;)V

    goto :goto_14

    :cond_4b
    iget-object p1, v7, LD4/h;->w0:Lib/player/base/o;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_4c

    goto :goto_13

    :cond_4c
    move v5, v8

    :goto_13
    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean v5, p1, Lib/player/pages/MainActivity;->y0:Z

    :cond_4d
    :goto_14
    return-object v6

    :pswitch_7
    check-cast v7, LB4/s;

    check-cast p1, Lib/player/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    iget-object v0, v7, LB4/s;->u0:[I

    iget-object v1, v7, LB4/s;->v0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v8

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_52

    aget p3, v0, v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p3, v1, :cond_53

    sget-object p3, Lib/player/base/n;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "lock_id"

    if-nez p3, :cond_4f

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4e

    goto :goto_15

    :cond_4e
    invoke-virtual {v7, p2}, LB4/s;->l0(Ljava/lang/Integer;)V

    goto :goto_16

    :cond_4f
    :goto_15
    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, v7, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->K()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_50

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v7, p1}, LB4/s;->y0(I)V

    goto :goto_16

    :cond_50
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v8

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getStr_no_lock_channels()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_16

    :cond_51
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v7, p1}, LB4/s;->y0(I)V

    goto :goto_16

    :cond_52
    iput v8, v7, LB4/s;->q1:I

    iget-object p1, v7, LB4/s;->L0:Lib/player/base/o;

    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean v5, p1, Lib/player/pages/MainActivity;->y0:Z

    :cond_53
    :goto_16
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
