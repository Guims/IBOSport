.class public Lib/player/pages/series/h;
.super Lib/player/base/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public m0:Z

.field public n0:I

.field public o0:I

.field public p0:Ls4/j;

.field public q0:Lx4/s;

.field public r0:Lib/player/models/SeriesModel;

.field public s0:Lib/player/base/o;

.field public t0:Landroid/os/Handler;

.field public u0:Lib/player/pages/series/e;

.field public v0:Lib/player/pages/series/e;

.field public w0:Ljava/util/ArrayList;

.field public x0:Ljava/lang/String;

.field public y0:Lib/player/models/InfoSerie;

.field public z0:Lr1/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lib/player/pages/series/h;->m0:Z

    iput v0, p0, Lib/player/pages/series/h;->n0:I

    iput v0, p0, Lib/player/pages/series/h;->o0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lib/player/pages/series/h;->w0:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lib/player/pages/series/h;->x0:Ljava/lang/String;

    return-void
.end method

.method public static T(Lib/player/pages/series/h;Ljava/util/ArrayList;Ljava/lang/String;)Lib/player/models/Season;
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lib/player/models/Season;

    invoke-virtual {v2}, Lib/player/models/Season;->getSeason_number()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    new-instance p1, Lib/player/models/Season;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p0}, Lib/player/models/WordModels;->getSeason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, ""

    invoke-direct {p1, p0, p2, v0}, Lib/player/models/Season;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/player/base/o;)Lib/player/pages/series/h;
    .locals 4

    new-instance v0, Lib/player/pages/series/h;

    invoke-direct {v0}, Lib/player/pages/series/h;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tag"

    const-string v3, "series_details"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "series_id"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "category_name"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, v0, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/t;->N(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {p0}, Lib/player/pages/series/h;->Z()V

    return-void
.end method

.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_a

    const-wide/16 v3, 0xc8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lib/player/pages/series/h;->o0:I

    iget-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/f;->e0(I)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v0, Lib/player/pages/series/a;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lib/player/pages/series/a;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lib/player/pages/series/h;->n0:I

    iget-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/Season;

    invoke-virtual {v0}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/f;->e0(I)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v0, Lib/player/pages/series/a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lib/player/pages/series/a;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :pswitch_1
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lib/player/pages/series/h;->o0:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->e0(I)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v0, Lib/player/pages/series/a;

    const/4 v5, 0x2

    invoke-direct {v0, p0, v5}, Lib/player/pages/series/a;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lib/player/pages/series/h;->n0:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    iget-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/Season;

    invoke-virtual {v0}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->e0(I)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v0, Lib/player/pages/series/a;

    const/4 v5, 0x3

    invoke-direct {v0, p0, v5}, Lib/player/pages/series/a;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p1, p0, Lib/player/pages/series/h;->s0:Lib/player/base/o;

    check-cast p1, Lib/player/pages/MainActivity;

    iget-boolean p1, p1, Lib/player/pages/MainActivity;->y0:Z

    if-eqz p1, :cond_b

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_3
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->D:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_5
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_0
    return v2

    :cond_6
    :goto_1
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :pswitch_3
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_7
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_8
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->D:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_9
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    return v2

    :cond_b
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()Z
    .locals 1

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p0}, Lib/player/pages/series/h;->Y()V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->Y:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSeriesOne()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getPlay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getTrailer_series()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final U(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->V()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/ResumeModel;

    invoke-virtual {v3}, Lib/player/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/ResumeModel;

    invoke-virtual {p1}, Lib/player/models/ResumeModel;->getPro()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final W(ILib/player/models/EpisodeModel;)V
    .locals 7

    iput p1, p0, Lib/player/pages/series/h;->n0:I

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v0, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lib/player/pages/series/h;->o0:I

    new-instance v6, Lib/player/pages/series/d;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lib/player/pages/series/d;-><init>(Lib/player/pages/series/h;I)V

    const/4 v3, 0x1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lib/player/base/helper/w;->e(Ljava/lang/String;ZIILib/player/base/helper/x;)V

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string v1, "external_player"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lib/player/models/EpisodeModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lib/player/models/EpisodeModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lib/player/models/EpisodeModel;->getContainer_extension()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v2, v3, v4}, Lib/player/base/helper/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "position"

    if-eqz v0, :cond_5

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->m(Landroid/content/Context;)LB3/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p2, v0, LB3/c;->b:Ljava/lang/String;

    iget-object v0, v0, LB3/c;->c:Ljava/lang/String;

    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "application/x-mpegURL"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lib/player/pages/series/h;->a0(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->u(Landroid/content/Context;)Lt1/i;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.videolan.vlc"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "video/*"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "from_start"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-wide/32 p1, 0x15f90

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "org.videolan.vlc.gui.video.VideoPlayerActivity"

    invoke-direct {p1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    return-void

    :cond_4
    invoke-virtual {p0, v3}, Lib/player/pages/series/h;->a0(I)V

    return-void

    :cond_5
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object p2, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {p2}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/Season;

    invoke-virtual {p2}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p2

    iget-object v0, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p1, p1, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/j;

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "episode_models"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lib/player/pages/series/SeriesPlayerActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lib/player/pages/series/SeriesMobilePlayerActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    iget-object p2, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p2

    const-string v0, "stream_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "season_pos"

    iget v0, p0, Lib/player/pages/series/h;->o0:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "series_name"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {p2}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/Season;

    invoke-virtual {p2}, Lib/player/models/Season;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "season_name"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getTmdb()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tmdb_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    return-void
.end method

.method public final X(Lib/player/models/Season;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lib/player/pages/series/h;->n0:I

    iput p2, p0, Lib/player/pages/series/h;->o0:I

    iget-object v0, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getSeason_pos()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p2}, Lib/player/models/SeriesModel;->getEpisode_pos()I

    move-result p2

    invoke-virtual {p1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getEpisode_pos()I

    move-result p1

    iput p1, p0, Lib/player/pages/series/h;->n0:I

    :cond_0
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    new-instance p2, Lib/player/pages/series/a;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lib/player/pages/series/a;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    iget p2, p0, Lib/player/pages/series/h;->n0:I

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/f;->e0(I)V

    return-void
.end method

.method public final Y()V
    .locals 2

    iget-boolean v0, p0, Lib/player/pages/series/h;->m0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->N:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->D:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->N:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->D:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Z()V
    .locals 6

    iget-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lib/player/pages/series/h;->z0:Lr1/i;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lib/player/pages/series/h;->o0:I

    iput-object v0, v1, Lr1/i;->g:Ljava/lang/Object;

    iput v2, v1, Lr1/i;->e:I

    invoke-virtual {v1}, Lv1/y;->d()V

    iget-object v0, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getSeason_pos()I

    move-result v0

    iput v0, p0, Lib/player/pages/series/h;->o0:I

    iget-object v1, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lib/player/pages/series/h;->o0:I

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/Season;

    invoke-virtual {v1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EpisodeModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v4}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v4}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/Season;

    invoke-virtual {v4}, Lib/player/models/Season;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lib/player/pages/series/h;->U(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lib/player/pages/series/h;->p0:Ls4/j;

    iget-object v2, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v2}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/Season;

    invoke-virtual {v2}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v3}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/Season;

    invoke-virtual {v3}, Lib/player/models/Season;->getName()Ljava/lang/String;

    iget v3, p0, Lib/player/pages/series/h;->o0:I

    iput-object v2, v1, Ls4/j;->e:Ljava/util/List;

    iput v3, v1, Ls4/j;->g:I

    iput-object v0, v1, Ls4/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lv1/y;->d()V

    iget-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/Season;

    iget v1, p0, Lib/player/pages/series/h;->o0:I

    invoke-virtual {p0, v0, v1}, Lib/player/pages/series/h;->X(Lib/player/models/Season;I)V

    iget-object v0, p0, Lib/player/pages/series/h;->z0:Lr1/i;

    iget v1, p0, Lib/player/pages/series/h;->o0:I

    iget v2, v0, Lr1/i;->e:I

    iput v1, v0, Lr1/i;->e:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lv1/y;->e(I)V

    :cond_3
    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    iget v1, p0, Lib/player/pages/series/h;->o0:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final a0(I)V
    .locals 5

    new-instance v0, Lf/e;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getInstall_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/e;->setTitle(Ljava/lang/CharSequence;)Lf/e;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getWant_external_player()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lf/e;->a:Lf/b;

    iput-object v1, v2, Lf/b;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v2, Lf/b;->k:Z

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v1

    new-instance v3, LD4/e;

    const/4 v4, 0x2

    invoke-direct {v3, p0, p1, v4}, LD4/e;-><init>(Lib/player/base/BaseFragment;II)V

    iput-object v1, v2, Lf/b;->g:Ljava/lang/CharSequence;

    iput-object v3, v2, Lf/b;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p1

    new-instance v1, LD4/c;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, LD4/c;-><init>(I)V

    iput-object p1, v2, Lf/b;->i:Ljava/lang/CharSequence;

    iput-object v1, v2, Lf/b;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, Lf/e;->create()Lf/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {p1}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/Season;

    invoke-virtual {p1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lib/player/pages/series/h;->n0:I

    iget-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0}, Lib/player/models/InfoSerie;->getSeasons()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lib/player/pages/series/h;->o0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/Season;

    invoke-virtual {v0}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lib/player/pages/series/h;->n0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EpisodeModel;

    invoke-virtual {p0, p1, v0}, Lib/player/pages/series/h;->W(ILib/player/models/EpisodeModel;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_episode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_episode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00a8

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getYoutube()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lv4/c;->A(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_trailer()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_trailer()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0092

    if-ne v0, v1, :cond_8

    iget-boolean p1, p0, Lib/player/pages/series/h;->m0:Z

    if-eqz p1, :cond_7

    iput-boolean v2, p0, Lib/player/pages/series/h;->m0:Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v0, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lib/player/pages/series/d;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lib/player/pages/series/d;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0, v2, v1}, Lib/player/base/helper/w;->c(Ljava/lang/String;ZLib/player/base/helper/x;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lib/player/pages/series/h;->m0:Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lib/player/pages/series/d;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lib/player/pages/series/d;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {v0, v1, p1, v2}, Lib/player/base/helper/w;->c(Ljava/lang/String;ZLib/player/base/helper/x;)V

    :goto_1
    invoke-virtual {p0}, Lib/player/pages/series/h;->Y()V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b008c

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/t;->I()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    :cond_9
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lib/player/base/BaseFragment;->v(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->l0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    sget v0, Lx4/s;->Z:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e005a

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/s;

    iput-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string p2, "tag"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->l0:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    const-string p2, "series_id"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    const-class v1, Lib/player/models/SeriesModel;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    invoke-static {v0, v1, p2, p1}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    iput-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Lio/realm/y;

    invoke-static {p1, v1, v0, p2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/SeriesModel;

    iput-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    :goto_1
    iget-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lib/player/pages/series/h;->S()V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->D:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getYoutube()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move p1, p2

    :goto_3
    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    const p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz p1, :cond_5

    const p1, 0x7f080096

    goto :goto_4

    :cond_5
    const p1, 0x7f080121

    :goto_4
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->E:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lib/player/pages/series/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lib/player/pages/series/b;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->F:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lib/player/pages/series/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lib/player/pages/series/b;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->D:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lib/player/pages/series/b;

    invoke-direct {v0, p0, v2}, Lib/player/pages/series/b;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->C:Landroid/widget/ImageButton;

    new-instance v0, Lib/player/pages/series/b;

    invoke-direct {v0, p0, p2}, Lib/player/pages/series/b;-><init>(Lib/player/pages/series/h;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lr1/i;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lib/player/pages/series/c;

    invoke-direct {v3, p0, v2}, Lib/player/pages/series/c;-><init>(Lib/player/pages/series/h;I)V

    const/4 v4, 0x4

    invoke-direct {p1, v4}, Lr1/i;-><init>(I)V

    const/4 v5, -0x1

    iput v5, p1, Lr1/i;->e:I

    iput-object v0, p1, Lr1/i;->f:Ljava/lang/Object;

    iput-object v1, p1, Lr1/i;->g:Ljava/lang/Object;

    iput-object v3, p1, Lr1/i;->h:Ljava/lang/Object;

    iput-object p1, p0, Lib/player/pages/series/h;->z0:Lr1/i;

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/HorizontalGridView;->setNumRows(I)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveHorizontalGridView;->setLoop(Z)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->Q:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_5
    new-instance p1, Ls4/j;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lib/player/pages/series/h;->n0:I

    iget-object v5, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v5}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lib/player/pages/series/c;

    invoke-direct {v6, p0, p2}, Lib/player/pages/series/c;-><init>(Lib/player/pages/series/h;I)V

    invoke-direct {p1}, Lv1/y;-><init>()V

    iput-object v0, p1, Ls4/j;->d:Landroid/content/Context;

    iput-object v1, p1, Ls4/j;->e:Ljava/util/List;

    iput v3, p1, Ls4/j;->f:I

    iput-object v5, p1, Ls4/j;->i:Ljava/util/ArrayList;

    iput-object v6, p1, Ls4/j;->h:Lib/player/pages/series/c;

    iput-object p1, p0, Lib/player/pages/series/h;->p0:Ls4/j;

    iget-object v0, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object v0, v0, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/HorizontalGridView;->setNumRows(I)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveHorizontalGridView;->setLoop(Z)V

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Lx4/s;->P:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_6
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p1

    new-instance v0, LA4/c;

    invoke-direct {v0, v4, p0}, LA4/c;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v1

    iget-object v3, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, p1}, Lu4/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lib/player/pages/series/g;

    invoke-direct {v1, p0, v0}, Lib/player/pages/series/g;-><init>(Lib/player/pages/series/h;LA4/c;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v0, p0, Lib/player/pages/series/h;->r0:Lib/player/models/SeriesModel;

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lib/player/base/helper/w;->s(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lib/player/models/InfoSerie;

    invoke-direct {v0}, Lib/player/models/InfoSerie;-><init>()V

    iput-object v0, p0, Lib/player/pages/series/h;->y0:Lib/player/models/InfoSerie;

    invoke-virtual {v0, p1}, Lib/player/models/InfoSerie;->setSeasons(Ljava/util/List;)V

    invoke-virtual {p0}, Lib/player/pages/series/h;->Z()V

    :goto_7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lib/player/pages/series/h;->t0:Landroid/os/Handler;

    new-instance v0, Lib/player/pages/series/e;

    invoke-direct {v0, p0, v2}, Lib/player/pages/series/e;-><init>(Lib/player/pages/series/h;I)V

    iput-object v0, p0, Lib/player/pages/series/h;->u0:Lib/player/pages/series/e;

    new-instance v1, Lib/player/pages/series/e;

    invoke-direct {v1, p0, p2}, Lib/player/pages/series/e;-><init>(Lib/player/pages/series/h;I)V

    iput-object v1, p0, Lib/player/pages/series/h;->v0:Lib/player/pages/series/e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lib/player/pages/series/h;->q0:Lx4/s;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, Lib/player/pages/series/h;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lib/player/pages/series/h;->u0:Lib/player/pages/series/e;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lib/player/pages/series/h;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lib/player/pages/series/h;->v0:Lib/player/pages/series/e;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
