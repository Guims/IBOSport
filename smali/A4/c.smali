.class public final synthetic LA4/c;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA4/c;->b:I

    iput-object p2, p0, LA4/c;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LA4/c;->b:I

    const-string v3, "-"

    const/16 v4, 0x8

    const v5, 0x7f08008e

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, LA4/c;->q:Ljava/lang/Object;

    check-cast v2, Lib/player/pages/series/j;

    check-cast v1, Lib/player/models/InfoSerie;

    if-eqz v1, :cond_0

    iget-object v3, v2, Lib/player/pages/series/j;->q0:Lio/realm/T;

    invoke-virtual {v3, v7}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/SeriesModel;

    invoke-virtual {v2, v1, v3}, Lib/player/pages/series/j;->W(Lib/player/models/InfoSerie;Lib/player/models/SeriesModel;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-object v8

    :pswitch_0
    iget-object v2, v0, LA4/c;->q:Ljava/lang/Object;

    check-cast v2, Lib/player/pages/series/h;

    check-cast v1, Lib/player/models/InfoSerie;

    if-eqz v1, :cond_b

    iput-object v1, v2, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    iget-object v9, v2, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lib/player/models/InfoSerie;->getInfo()Lib/player/models/InfoSerie$Info;

    move-result-object v11

    invoke-virtual {v11}, Lib/player/models/InfoSerie$Info;->getBackdrop_path()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iput-object v10, v2, Lib/player/pages/series/h;->w0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v5

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v5

    iget-object v10, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v10, v10, Lx4/s;->J:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_4
    iget-object v10, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v10, v10, Lx4/s;->J:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v5, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v5, v5, Lx4/s;->L:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v9, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v9}, Lib/player/models/SeriesModel;->isIs_favorite()Z

    move-result v5

    iput-boolean v5, v2, Lib/player/pages/series/h;->m0:Z

    invoke-virtual {v2}, Lib/player/pages/series/h;->Y()V

    sget-object v5, Lio/realm/y;->A:Ljava/lang/Object;

    sget-object v10, Lio/realm/d;->v:Landroid/content/Context;

    iget-object v5, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v11, v5, Lx4/s;->M:Landroid/widget/ImageView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x546

    const/16 v17, 0x28

    const v13, 0x7f0801de

    const v14, 0x7f0801dd

    const/16 v15, 0x384

    invoke-static/range {v10 .. v17}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    iget-object v5, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v5, v5, Lx4/s;->S:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v5, v5, Lx4/s;->G:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getPlot()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lib/player/pages/series/h;->t0:Landroid/os/Handler;

    if-eqz v5, :cond_6

    iget-object v10, v2, Lib/player/pages/series/h;->v0:Lib/player/pages/series/e;

    if-eqz v10, :cond_6

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, v2, Lib/player/pages/series/h;->t0:Landroid/os/Handler;

    iget-object v10, v2, Lib/player/pages/series/h;->v0:Lib/player/pages/series/e;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v5, v5, Lx4/s;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v4, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v4, v4, Lx4/s;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v4, v4, Lx4/s;->I:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v4, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v4, v4, Lx4/s;->X:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    const-string v6, " \u2022"

    invoke-static {v5, v3, v6}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v3, v3, Lx4/s;->V:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v3, v3, Lx4/s;->V:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v6}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v5}, Lib/player/models/WordModels;->getSeasons()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lv4/c;->o(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->V:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->V:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->U:Landroid/widget/TextView;

    const-string v3, "HD"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->T:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getAge()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->W:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getRating()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->B:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getCast()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->H:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/SeriesModel;->getDirector()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v2}, Lib/player/pages/series/h;->Z()V

    goto :goto_7

    :cond_b
    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->J:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->S:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->X:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->U:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->V:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->T:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v1, v1, Lx4/s;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v2, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getNo_episode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_7
    return-object v8

    :pswitch_1
    iget-object v2, v0, LA4/c;->q:Ljava/lang/Object;

    check-cast v2, LT4/c;

    if-ne v1, v2, :cond_c

    const-string v1, "(this Collection)"

    goto :goto_8

    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    :pswitch_2
    iget-object v2, v0, LA4/c;->q:Ljava/lang/Object;

    check-cast v2, LD4/x;

    check-cast v1, Lib/player/models/MovieInfoResponse;

    iget-object v3, v2, LD4/x;->q0:Lio/realm/T;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v1, :cond_d

    move-object v1, v8

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, Lib/player/models/MovieInfoResponse;->getInfo()Lib/player/models/MovieInfo;

    move-result-object v1

    :goto_9
    iget-object v3, v2, LD4/x;->q0:Lio/realm/T;

    invoke-virtual {v3, v7}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/MovieModel;

    invoke-virtual {v2, v1, v3}, LD4/x;->Y(Lib/player/models/MovieInfo;Lib/player/models/MovieModel;)V

    :cond_e
    return-object v8

    :pswitch_3
    iget-object v2, v0, LA4/c;->q:Ljava/lang/Object;

    check-cast v2, LD4/h;

    check-cast v1, Lib/player/models/MovieInfoResponse;

    if-eqz v1, :cond_22

    iput-object v1, v2, LD4/h;->s0:Lib/player/models/MovieInfoResponse;

    invoke-virtual {v1}, Lib/player/models/MovieInfoResponse;->getInfo()Lib/player/models/MovieInfo;

    move-result-object v1

    iget-object v9, v2, LD4/h;->r0:Lib/player/models/MovieModel;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getBackdropPath()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getBackdropPath()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getBackdropPath()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_10
    :goto_a
    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getCoverBig()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getCoverBig()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getCoverBig()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_11
    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getMovieImage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getMovieImage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getMovieImage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    invoke-virtual {v9}, Lib/player/models/MovieModel;->getStreamIcon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_b
    iput-object v10, v2, LD4/h;->B0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-virtual {v2}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v5

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v5

    iget-object v10, v2, LD4/h;->m0:Lx4/m;

    iget-object v10, v10, Lx4/m;->K:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    goto :goto_c

    :cond_15
    iget-object v10, v2, LD4/h;->m0:Lx4/m;

    iget-object v10, v10, Lx4/m;->K:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_c
    sget-object v5, Lio/realm/y;->A:Ljava/lang/Object;

    sget-object v10, Lio/realm/d;->v:Landroid/content/Context;

    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v11, v5, Lx4/m;->N:Landroid/widget/ImageView;

    invoke-virtual {v9}, Lib/player/models/MovieModel;->getStreamIcon()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x640

    const/16 v17, 0x28

    const v13, 0x7f0801de

    const v14, 0x7f0801dd

    const/16 v15, 0x384

    invoke-static/range {v10 .. v17}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    invoke-virtual {v9}, Lib/player/models/MovieModel;->isIs_favorite()Z

    move-result v5

    iput-boolean v5, v2, LD4/h;->u0:Z

    invoke-virtual {v2}, LD4/h;->V()V

    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->M:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->S:Landroid/widget/TextView;

    invoke-virtual {v9}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_16

    goto/16 :goto_14

    :cond_16
    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getYoutube_trailer()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_d

    :cond_17
    move v5, v7

    goto :goto_e

    :cond_18
    :goto_d
    move v5, v9

    :goto_e
    iget-object v10, v2, LD4/h;->m0:Lx4/m;

    iget-object v10, v10, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    const v5, 0x1

    invoke-virtual {v10, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v10, v2, LD4/h;->m0:Lx4/m;

    iget-object v10, v10, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v10, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v10, v2, LD4/h;->m0:Lx4/m;

    iget-object v10, v10, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v10, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v10, v2, LD4/h;->m0:Lx4/m;

    iget-object v10, v10, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v5, :cond_19

    const v5, 0x7f080096

    goto :goto_f

    :cond_19
    const v5, 0x7f080121

    :goto_f
    invoke-virtual {v10, v5}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getPlot()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, LD4/h;->y0:Landroid/os/Handler;

    if-eqz v5, :cond_1a

    iget-object v10, v2, LD4/h;->A0:LD4/f;

    if-eqz v10, :cond_1a

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, v2, LD4/h;->y0:Landroid/os/Handler;

    iget-object v10, v2, LD4/h;->A0:LD4/f;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getGenre()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_1b
    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->J:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getGenre()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->X:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getReleasedate()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getReleasedate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getReleasedate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v7

    :cond_1d
    :goto_11
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getDuration()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getDuration()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_1e
    array-length v5, v3

    const/4 v6, 0x2

    if-le v5, v6, :cond_1f

    iget-object v5, v2, LD4/h;->m0:Lx4/m;

    iget-object v5, v5, Lx4/m;->V:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_12

    :cond_1f
    iget-object v3, v2, LD4/h;->m0:Lx4/m;

    iget-object v3, v3, Lx4/m;->V:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_12
    iget-object v3, v2, LD4/h;->m0:Lx4/m;

    iget-object v3, v3, Lx4/m;->T:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getAge()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v3, v2, LD4/h;->m0:Lx4/m;

    iget-object v3, v3, Lx4/m;->W:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getRating()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v3, v2, LD4/h;->m0:Lx4/m;

    iget-object v3, v3, Lx4/m;->B:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getActors()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v3, v2, LD4/h;->m0:Lx4/m;

    iget-object v3, v3, Lx4/m;->I:Landroid/widget/TextView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getDirector()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getRatingMpaa()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    iget-object v3, v2, LD4/h;->m0:Lx4/m;

    iget-object v3, v3, Lx4/m;->L:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    :cond_20
    iget-object v3, v2, LD4/h;->m0:Lx4/m;

    iget-object v3, v3, Lx4/m;->L:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getRatingMpaa()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lv4/c;->q(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_13
    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getTmdb_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v1}, Lib/player/models/MovieInfo;->getTmdb_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, LD4/h;->n0:Ljava/lang/String;

    iget-object v1, v2, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->v()Lib/player/models/AppInfoModel;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, LD4/h;->n0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/credits?api_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lib/player/models/AppInfoModel;->getTmdbKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lib/player/base/n;->k:Ljava/lang/String;

    invoke-static {v3}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v3

    invoke-interface {v3, v1}, Lu4/a;->w(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v3, LD4/g;

    invoke-direct {v3, v2}, LD4/g;-><init>(LD4/h;)V

    invoke-interface {v1, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_21
    iget-object v1, v2, LD4/h;->m0:Lx4/m;

    iget-object v1, v1, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_14

    :cond_22
    invoke-virtual {v2}, LD4/h;->W()V

    :goto_14
    return-object v8

    :pswitch_4
    iget-object v2, v0, LA4/c;->q:Ljava/lang/Object;

    check-cast v2, LA4/p;

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, v2, LA4/p;->s0:Lib/player/pages/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lib/player/pages/MainActivity;->y0:Z

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
