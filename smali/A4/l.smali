.class public final synthetic LA4/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Lv1/y;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lv1/y;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, LA4/l;->b:I

    iput-object p1, p0, LA4/l;->r:Lv1/y;

    iput p2, p0, LA4/l;->q:I

    iput-object p3, p0, LA4/l;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv1/y;Ljava/io/Serializable;II)V
    .locals 0

    iput p4, p0, LA4/l;->b:I

    iput-object p1, p0, LA4/l;->r:Lv1/y;

    iput-object p2, p0, LA4/l;->s:Ljava/lang/Object;

    iput p3, p0, LA4/l;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, LA4/l;->b:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, LA4/l;->s:Ljava/lang/Object;

    iget v4, p0, LA4/l;->q:I

    iget-object v5, p0, LA4/l;->r:Lv1/y;

    packed-switch p1, :pswitch_data_0

    check-cast v5, Ls4/J;

    check-cast v3, Lib/player/models/MovieModel;

    iget p1, v5, Ls4/J;->j:I

    iput v4, v5, Ls4/J;->j:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget p1, v5, Ls4/J;->j:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget-object p1, v5, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Le4/c;

    iget-object p1, p1, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LD4/x;

    iget v0, p1, LD4/x;->s0:I

    const/4 v5, 0x1

    if-gt v0, v5, :cond_4

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v7}, Lib/player/base/helper/w;->B()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "xxx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "porn"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "adult"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    goto :goto_1

    :cond_2
    sget-object v0, Lib/player/base/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v5

    const-string v6, "fragment_lock"

    invoke-virtual {v0, v6}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v5, v7, v1, v2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_3
    iget-object v1, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz4/y;->T(Ljava/lang/String;)Lz4/y;

    move-result-object v1

    new-instance v2, LA/j;

    invoke-direct {v2, p1, v4, v3}, LA/j;-><init>(LD4/x;ILib/player/models/MovieModel;)V

    iput-object v2, v1, Lz4/y;->A0:Lz4/x;

    invoke-virtual {v1, v0, v6}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, p1, LD4/x;->p0:Ljava/util/ArrayList;

    iget v1, p1, LD4/x;->s0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CategoryModel;

    invoke-virtual {v0}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "external_player"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getExtension()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v4, v6, v7}, Lib/player/base/helper/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v2, :cond_a

    const-string v1, "android.intent.action.VIEW"

    if-eq v2, v5, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lv4/c;->m(Landroid/content/Context;)LB3/c;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, v2, LB3/c;->b:Ljava/lang/String;

    iget-object v2, v2, LB3/c;->c:Ljava/lang/String;

    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "application/x-mpegURL"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p1, v3}, LD4/x;->X(I)V

    goto/16 :goto_5

    :cond_8
    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lv4/c;->u(Landroid/content/Context;)Lt1/i;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "org.videolan.vlc"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "video/*"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "from_start"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "position"

    const-wide/32 v4, 0x15f90

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "org.videolan.vlc.gui.video.VideoPlayerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p1, v5}, LD4/x;->X(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lib/player/pages/movie/MoviePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lib/player/pages/movie/MovieMobilePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_3
    const-string v1, "name"

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "stream_id"

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->B()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v3}, Lib/player/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Lib/player/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv4/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v2, "category_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    goto :goto_5

    :cond_d
    invoke-static {p1, v3}, LD4/x;->T(LD4/x;Lib/player/models/MovieModel;)V

    :catch_1
    :goto_5
    return-void

    :pswitch_0
    check-cast v5, Ls4/J;

    check-cast v3, Lib/player/models/SeriesModel;

    iget p1, v5, Ls4/J;->j:I

    iput v4, v5, Ls4/J;->j:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    invoke-virtual {v5, v4}, Lv1/y;->e(I)V

    iget-object p1, v5, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/f;

    iget-object p1, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lib/player/pages/series/j;

    invoke-virtual {v3}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v5}, Lib/player/base/helper/w;->B()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Lib/player/models/SeriesModel;->getCategory_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_e
    invoke-virtual {v3}, Lib/player/models/SeriesModel;->getCategory_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv4/c;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    iget-object v5, p1, Lib/player/pages/series/j;->v0:Lib/player/pages/MainActivity;

    invoke-static {v0, v4, v3, v5}, Lib/player/pages/series/h;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/player/base/o;)Lib/player/pages/series/h;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p1

    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const p1, 0x7f0b017d

    invoke-virtual {v3, p1, v0, v1}, Landroidx/fragment/app/a;->i(ILib/player/base/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/fragment/app/a;->e(Z)I

    return-void

    :pswitch_1
    check-cast v5, Lr1/i;

    check-cast v3, Lib/player/models/Season;

    iget p1, v5, Lr1/i;->e:I

    iput v4, v5, Lr1/i;->e:I

    if-eq p1, v0, :cond_f

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    :cond_f
    iget p1, v5, Lr1/i;->e:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget-object p1, v5, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, Lib/player/pages/series/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1}, Lib/player/pages/series/c;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    check-cast v5, Ls4/b;

    check-cast v3, Lib/player/models/MovieModel;

    iget-object p1, v5, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    check-cast v5, Ls4/G;

    check-cast v3, Lib/player/models/CategoryModel;

    iget p1, v5, Ls4/G;->g:I

    iput v4, v5, Ls4/G;->g:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget p1, v5, Ls4/G;->g:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget-object p1, v5, Ls4/G;->f:Ld5/q;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3, v0, v1}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_4
    check-cast v5, Ls4/b;

    check-cast v3, Lib/player/models/SeriesModel;

    iget-object p1, v5, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_5
    check-cast v5, Ls4/b;

    check-cast v3, Lib/player/models/EPGChannel;

    iget-object p1, v5, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_6
    check-cast v5, Lr1/i;

    check-cast v3, Lib/player/models/EPGChannel;

    iget p1, v5, Lr1/i;->e:I

    iput v4, v5, Lr1/i;->e:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget p1, v5, Lr1/i;->e:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget-object p1, v5, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, LA4/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1, v2}, LA4/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_7
    check-cast v5, Ls4/z;

    check-cast v3, Lib/player/models/CategoryModel;

    iget p1, v5, Ls4/z;->h:I

    iput v4, v5, Ls4/z;->h:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget p1, v5, Ls4/z;->h:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget-object p1, v5, Ls4/z;->f:Ld5/q;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3, v0, v1}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_8
    check-cast v5, Ls4/y;

    check-cast v3, Lib/player/models/CatchUpEpg;

    iget-object p1, v5, Ls4/y;->f:Ld5/q;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3, v0, v1}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_9
    check-cast v5, Ls4/l;

    check-cast v3, Lib/player/models/EpisodeModel;

    iget-object p1, v5, Ls4/l;->i:LS4/a;

    check-cast p1, Lk5/o;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lk5/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_a
    check-cast v5, Lr1/i;

    check-cast v3, Lib/player/models/MovieCreditModel;

    iget p1, v5, Lr1/i;->e:I

    iput v4, v5, Lr1/i;->e:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget p1, v5, Lr1/i;->e:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget-object p1, v5, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, LD4/a;

    iget-object p1, p1, LD4/a;->q:Lib/player/pages/movie/MovieCreditActivity;

    sget v0, Lib/player/pages/movie/MovieCreditActivity;->d0:I

    invoke-virtual {p1, v3}, Lib/player/pages/movie/MovieCreditActivity;->w(Lib/player/models/MovieCreditModel;)V

    return-void

    :pswitch_b
    check-cast v5, Ls4/l;

    check-cast v3, Lib/player/models/EpisodeModel;

    iget-object p1, v5, Ls4/l;->i:LS4/a;

    check-cast p1, LB4/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_c
    check-cast v5, Ls4/j;

    check-cast v3, Lib/player/models/EpisodeModel;

    iget-object p1, v5, Ls4/j;->h:Lib/player/pages/series/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1}, Lib/player/pages/series/c;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_d
    check-cast v5, Lr1/i;

    check-cast v3, Lib/player/models/CatchupModel;

    iget p1, v5, Lr1/i;->e:I

    iput v4, v5, Lr1/i;->e:I

    if-eq p1, v0, :cond_10

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    :cond_10
    iget p1, v5, Lr1/i;->e:I

    invoke-virtual {v5, p1}, Lv1/y;->e(I)V

    iget-object p1, v5, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, Ld5/q;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3, v0, v1}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_e
    check-cast v5, Ls4/b;

    check-cast v3, Lib/player/models/CastModel;

    iget-object p1, v5, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LB4/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_f
    check-cast v5, Lib/player/pages/e;

    check-cast v3, Lib/player/pages/g;

    iget-object p1, v5, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast p1, LB4/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v3, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v3, Lib/player/pages/g;->d:Ljava/lang/String;

    iput-object p1, v5, Lib/player/pages/e;->g:Ljava/lang/Object;

    invoke-virtual {v5}, Lv1/y;->d()V

    return-void

    :pswitch_10
    check-cast v5, Lib/player/pages/e;

    check-cast v3, Lib/player/pages/g;

    iget-object p1, v5, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast p1, LB4/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v3, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_11
    check-cast v5, LA4/o;

    check-cast v3, Lib/player/models/BaseModel;

    iget-object p1, v5, LA4/o;->e:LA4/g;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1, v3}, LA4/g;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
