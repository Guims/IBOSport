.class public LG4/d;
.super Lib/player/base/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public m0:Lx4/u;

.field public n0:Lib/player/base/helper/w;

.field public o0:Lib/player/models/AppInfoModel;

.field public p0:Ljava/util/ArrayList;

.field public q0:Lr1/i;

.field public r0:I

.field public s0:Lz4/f;

.field public final t0:Ljava/text/SimpleDateFormat;

.field public u0:J

.field public v0:Lib/player/pages/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LG4/d;->r0:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LG4/d;->t0:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LG4/d;->u0:J

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {p0}, LG4/d;->R()Z

    return-void
.end method

.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x13

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_1
    iget p1, p0, LG4/d;->r0:I

    iget-object v0, p0, LG4/d;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-le p1, v0, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_3
    iget p1, p0, LG4/d;->r0:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_4

    :goto_0
    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final R()Z
    .locals 2

    iget-object v0, p0, LG4/d;->m0:Lx4/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, LG4/d;->m0:Lx4/u;

    iget-object v0, v0, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, LG4/d;->r0:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final S()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    iget-object v0, p0, LG4/d;->m0:Lx4/u;

    iget-object v0, v0, Lx4/u;->G:Landroid/widget/TextView;

    const-string v1, "1.0 (35)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LG4/d;->m0:Lx4/u;

    iget-object v0, v0, Lx4/u;->F:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, ""

    :try_start_0
    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v4, "device_key"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p0, v0}, LG4/d;->T(Lib/player/models/WordModels;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LG4/d;->p0:Ljava/util/ArrayList;

    iget-object v1, p0, LG4/d;->q0:Lr1/i;

    if-eqz v1, :cond_0

    iget v2, p0, LG4/d;->r0:I

    iput-object v0, v1, Lr1/i;->f:Ljava/lang/Object;

    iput v2, v1, Lr1/i;->e:I

    invoke-virtual {v1}, Lv1/y;->d()V

    :cond_0
    return-void
.end method

.method public final T(Lib/player/models/WordModels;)Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, LG4/d;->m0:Lx4/u;

    iget-object v0, v0, Lx4/u;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LG4/d;->m0:Lx4/u;

    iget-object v0, v0, Lx4/u;->B:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lib/player/models/WordModels;->getPay_with_google_pay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "($"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LG4/d;->o0:Lib/player/models/AppInfoModel;

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getChange_language()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080167

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getParent_control()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013b

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getChange_playlist()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080156

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LG4/d;->o0:Lib/player/models/AppInfoModel;

    invoke-static {v1}, Lv4/c;->f(Lib/player/models/AppInfoModel;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getAdd_playlist()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getLive_sort()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08015e

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getLive_stream_format()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080147

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getHide_live_category()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013f

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getClear_history_channels()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f080140

    invoke-direct {v1, v2, v4}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getHide_vod_category()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getClear_history_movies()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getHide_series_category()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getClear_history_series()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    iget-object v2, p0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v4, "hide_live"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lib/player/models/WordModels;->getShow_live()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lib/player/models/WordModels;->getHide_live()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    iget-object v2, p0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v4, "hide_vod"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lib/player/models/WordModels;->getShow_movies()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lib/player/models/WordModels;->getHide_movies()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    iget-object v2, p0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v4, "hide_series"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lib/player/models/WordModels;->getShow_series()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lib/player/models/WordModels;->getHide_series()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    iget-object v2, p0, LG4/d;->n0:Lib/player/base/helper/w;

    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v3, "show_clock"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lib/player/models/WordModels;->getHide_clock()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lib/player/models/WordModels;->getShow_clock()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const v3, 0x7f0800ab

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getHomeVod()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080125

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getHomeSeries()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LG4/d;->o0:Lib/player/models/AppInfoModel;

    invoke-static {v1}, Lv4/c;->e(Lib/player/models/AppInfoModel;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getUpdate_now()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080164

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getAllow_protocol()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080158

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getExternal_player()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080168

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getAutomatic()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08012d

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getTime_format()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080163

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getSubtitle_settings()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080188

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getSelect_device_type()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013a

    invoke-direct {v1, v2, v3}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lib/player/base/p;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getRate_us()Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f08015f

    invoke-direct {v1, p1, v2}, Lib/player/base/p;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final U(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_clear_history"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v3, p1, v0}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lz4/h;

    invoke-direct {v3}, Lz4/h;-><init>()V

    iput-object v1, v3, Lz4/h;->z0:Landroid/content/Context;

    iput p1, v3, Lz4/h;->O0:I

    invoke-virtual {v3, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final V(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_hide_category"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v3, p1, v0}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lz4/q;

    invoke-direct {v3}, Lz4/q;-><init>()V

    iput-object v1, v3, Lz4/q;->N0:Landroid/content/Context;

    iput p1, v3, Lz4/q;->O0:I

    new-instance v1, LG4/b;

    invoke-direct {v1, p0, p1}, LG4/b;-><init>(LG4/d;I)V

    iput-object v1, v3, Lz4/q;->J0:LG4/b;

    invoke-virtual {v3, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final W(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_home_category"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v3, p1, v0}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lz4/r;

    invoke-direct {v3}, Lz4/r;-><init>()V

    iput-object v1, v3, Lz4/r;->M0:Landroid/content/Context;

    iput p1, v3, Lz4/r;->N0:I

    new-instance v1, LG4/b;

    invoke-direct {v1, p0, p1}, LG4/b;-><init>(LG4/d;I)V

    iput-object v1, v3, Lz4/r;->I0:LG4/b;

    invoke-virtual {v3, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lib/player/base/BaseFragment;->v(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->l0:Ljava/lang/String;

    :cond_0
    new-instance p1, Lib/player/base/helper/w;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->v()Lib/player/models/AppInfoModel;

    move-result-object p1

    iput-object p1, p0, LG4/d;->o0:Lib/player/models/AppInfoModel;

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    sget v0, Lx4/u;->H:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e005b

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/u;

    iput-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->E:Landroid/widget/TextView;

    iget-object p2, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getSettings()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->B:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->C:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x2

    invoke-direct {p2, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(II)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    invoke-virtual {p0}, LG4/d;->S()V

    new-instance p1, Lr1/i;

    iget-object p2, p0, LG4/d;->p0:Ljava/util/ArrayList;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getUpdate_now()Ljava/lang/String;

    move-result-object v1

    new-instance v3, LB4/d;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, LB4/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2, v1, v3}, Lr1/i;-><init>(Ljava/util/ArrayList;Ljava/lang/String;LB4/d;)V

    iput-object p1, p0, LG4/d;->q0:Lr1/i;

    iget-object p2, p0, LG4/d;->m0:Lx4/u;

    iget-object p2, p2, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    iget p2, p0, LG4/d;->r0:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->e0(I)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->D:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->B:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->C:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->C:Landroidx/appcompat/widget/AppCompatButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->B:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object p1, p0, LG4/d;->t0:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, LG4/d;->o0:Lib/player/models/AppInfoModel;

    invoke-virtual {v1}, Lib/player/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, LG4/d;->u0:J

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, LG4/d;->u0:J

    :goto_0
    iget-object p1, p0, LG4/d;->o0:Lib/player/models/AppInfoModel;

    invoke-virtual {p1}, Lib/player/models/AppInfoModel;->getIs_trial()I

    move-result p1

    if-eq p1, v0, :cond_1

    iget-wide v0, p0, LG4/d;->u0:J

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    :cond_1
    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Lx4/u;->B:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, LG4/d;->m0:Lx4/u;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method

.method public final x()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method
