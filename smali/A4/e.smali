.class public final synthetic LA4/e;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/base/BaseFragment;

.field public final synthetic r:Lio/realm/O;


# direct methods
.method public synthetic constructor <init>(Lib/player/base/BaseFragment;Lio/realm/O;I)V
    .locals 0

    iput p3, p0, LA4/e;->b:I

    iput-object p1, p0, LA4/e;->q:Lib/player/base/BaseFragment;

    iput-object p2, p0, LA4/e;->r:Lio/realm/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LA4/e;->b:I

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "-"

    const/4 v5, 0x0

    iget-object v6, p0, LA4/e;->r:Lio/realm/O;

    iget-object v7, p0, LA4/e;->q:Lib/player/base/BaseFragment;

    packed-switch v0, :pswitch_data_0

    check-cast v7, Lib/player/pages/series/j;

    check-cast v6, Lib/player/models/SeriesModel;

    check-cast p1, Lib/player/models/InfoSerie;

    sget-object v0, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, v6}, Lib/player/pages/series/j;->W(Lib/player/models/InfoSerie;Lib/player/models/SeriesModel;)V

    return-object v5

    :pswitch_0
    check-cast v7, LD4/x;

    check-cast v6, Lib/player/models/MovieModel;

    check-cast p1, Lib/player/models/MovieInfoResponse;

    sget-object v0, LD4/x;->D0:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    move-object p1, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lib/player/models/MovieInfoResponse;->getInfo()Lib/player/models/MovieInfo;

    move-result-object p1

    :goto_0
    invoke-virtual {v7, p1, v6}, LD4/x;->Y(Lib/player/models/MovieInfo;Lib/player/models/MovieModel;)V

    return-object v5

    :pswitch_1
    check-cast v7, LA4/p;

    check-cast v6, Lib/player/models/MovieModel;

    check-cast p1, Lib/player/models/MovieInfoResponse;

    if-nez p1, :cond_1

    move-object p1, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lib/player/models/MovieInfoResponse;->getInfo()Lib/player/models/MovieInfo;

    move-result-object p1

    :goto_1
    invoke-virtual {v6}, Lio/realm/O;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getBackdropPath()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getBackdropPath()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getBackdropPath()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getCoverBig()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getCoverBig()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getCoverBig()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getMovieImage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getMovieImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getMovieImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lib/player/models/MovieModel;->getStreamIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    invoke-virtual {v7, v0}, LA4/p;->W(Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Lib/player/models/MovieModel;->isIs_favorite()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->L:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_9

    goto/16 :goto_8

    :cond_9
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->D:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getPlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->F:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->Q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getReleasedate()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getReleasedate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getReleasedate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    :cond_c
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getDuration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getDuration()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_d
    array-length v1, v0

    const/4 v4, 0x2

    if-le v1, v4, :cond_e

    iget-object v1, v7, LA4/p;->u0:Lx4/g;

    iget-object v1, v1, Lx4/g;->O:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->O:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_7
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->M:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->P:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getRating()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getActors()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getDirector()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getRatingMpaa()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_f
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->H:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getRatingMpaa()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv4/c;->q(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_8
    return-object v5

    :pswitch_2
    check-cast v7, LA4/p;

    check-cast v6, Lib/player/models/SeriesModel;

    check-cast p1, Lib/player/models/InfoSerie;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getInfo()Lib/player/models/InfoSerie$Info;

    move-result-object v8

    invoke-virtual {v8}, Lib/player/models/InfoSerie$Info;->getBackdrop_path()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_9
    invoke-virtual {v7, v0}, LA4/p;->W(Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->isIs_favorite()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_13
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->L:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->D:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getPlot()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_14
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->F:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getGenre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->Q:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_c

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    const-string v4, " \u2022"

    invoke-static {v1, v3, v4}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, LA4/p;->u0:Lx4/g;

    iget-object v0, v0, Lx4/g;->O:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getSeasons()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lv4/c;->o(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_17
    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->O:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->O:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->N:Landroid/widget/TextView;

    const-string v0, "HD"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->M:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->P:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->B:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getCast()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, v7, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->E:Landroid/widget/TextView;

    invoke-virtual {v6}, Lib/player/models/SeriesModel;->getDirector()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv4/c;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
