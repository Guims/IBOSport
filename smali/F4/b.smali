.class public final synthetic LF4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/q;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LF4/e;


# direct methods
.method public synthetic constructor <init>(LF4/e;I)V
    .locals 0

    iput p2, p0, LF4/b;->b:I

    iput-object p1, p0, LF4/b;->q:LF4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, LF4/b;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lib/player/models/SeriesModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, LF4/b;->q:LF4/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p3

    iget-object v3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->B()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getCategory_name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lib/player/models/SeriesModel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv4/c;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v3, v0, LF4/e;->u0:Lib/player/base/o;

    invoke-static {p2, p3, p1, v3}, Lib/player/pages/series/h;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/player/base/o;)Lib/player/pages/series/h;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p2

    new-instance p3, Landroidx/fragment/app/a;

    invoke-direct {p3, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const p2, 0x7f0b017d

    invoke-virtual {p3, p2, p1, v2}, Landroidx/fragment/app/a;->i(ILib/player/base/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroidx/fragment/app/a;->e(Z)I

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    :cond_1
    iget-object p1, v0, LF4/e;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v3, 0x2

    aput p3, p1, v3

    iput v3, v0, LF4/e;->w0:I

    iget-object p1, v0, LF4/e;->u0:Lib/player/base/o;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean v1, p1, Lib/player/pages/MainActivity;->y0:Z

    :goto_1
    return-object v2

    :pswitch_0
    check-cast p1, Lib/player/models/MovieModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, LF4/b;->q:LF4/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    iget-object v4, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p3, "xxx"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "porn"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "adult"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    sget-object p2, Lib/player/base/n;->v:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p2

    invoke-static {p2, p2}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object p3

    const-string v3, "fragment_lock"

    invoke-virtual {p2, v3}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {p3, v4, v1, v2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    iget-object p3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p3}, Lib/player/base/helper/w;->P()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lz4/y;->T(Ljava/lang/String;)Lz4/y;

    move-result-object p3

    new-instance v2, LA/j;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-direct {v2, v0, p1, v4, v5}, LA/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v2, p3, Lz4/y;->A0:Lz4/x;

    invoke-virtual {p3, p2, v3}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, LF4/e;->U(Lib/player/models/MovieModel;)V

    goto :goto_3

    :cond_8
    iget-object p1, v0, LF4/e;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p1, v3

    iput v3, v0, LF4/e;->w0:I

    iget-object p1, v0, LF4/e;->u0:Lib/player/base/o;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_9

    move v2, v3

    :cond_9
    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean v2, p1, Lib/player/pages/MainActivity;->y0:Z

    :goto_3
    return-object v1

    :pswitch_1
    check-cast p1, Lib/player/models/EPGChannel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v0, p0, LF4/b;->q:LF4/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_12

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p2

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p3

    new-instance v3, LA3/b;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, LA3/b;-><init>(I)V

    invoke-virtual {p2, p3, v1, v3}, Lib/player/base/helper/w;->d(Ljava/lang/String;ZLib/player/base/helper/x;)V

    iget-object p2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->C()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p3

    iget-object v3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-static {p2, p3, v3}, Lib/player/base/n;->a(Ljava/util/List;Landroid/content/Context;Lib/player/base/helper/w;)V

    sget-object p2, Lib/player/app/MyApp;->u:Ljava/util/ArrayList;

    iget-object p3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p3}, Lib/player/base/helper/w;->B()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object p3

    move v3, v2

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/CategoryModel;

    invoke-virtual {v4}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    move v3, v2

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p3

    move v3, v2

    move v4, v3

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/CategoryModel;

    invoke-virtual {v5}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v3, v4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lib/player/models/CategoryModel;

    iget-object p2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->B()Z

    move-result v7

    iget-object p2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->L()I

    move-result v8

    const/4 v9, 0x0

    const-string v6, ""

    invoke-virtual/range {v4 .. v9}, Lib/player/base/helper/w;->k(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/T;

    move-result-object p2

    move p3, v2

    :goto_7
    invoke-virtual {p2}, Lio/realm/T;->size()I

    move-result v4

    if-ge p3, v4, :cond_10

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/EPGChannel;

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v2, p3

    goto :goto_8

    :cond_f
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    iget-object p1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1, v3}, Lib/player/base/helper/w;->h0(I)V

    iget-object p1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1, v2}, Lib/player/base/helper/w;->i0(I)V

    iget-object p1, v0, LF4/e;->u0:Lib/player/base/o;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "is_full"

    const-string v2, "tag"

    const-string v3, "live_tv"

    if-eqz p2, :cond_11

    iget-object p2, v0, LF4/e;->u0:Lib/player/base/o;

    new-instance v4, LB4/t;

    invoke-direct {v4}, LB4/t;-><init>()V

    iput-object p2, v4, LB4/s;->L0:Lib/player/base/o;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, p2}, Landroidx/fragment/app/t;->N(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_11
    iget-object p2, v0, LF4/e;->u0:Lib/player/base/o;

    new-instance v4, LB4/v;

    invoke-direct {v4}, LB4/v;-><init>()V

    iput-object p2, v4, LB4/s;->L0:Lib/player/base/o;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, p2}, Landroidx/fragment/app/t;->N(Landroid/os/Bundle;)V

    :goto_9
    check-cast p1, Lib/player/pages/MainActivity;

    invoke-virtual {p1, v3, v4}, Lib/player/pages/MainActivity;->e0(Ljava/lang/String;LB4/s;)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->D:Lib/player/base/view/LiveHorizontalGridView;

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->E:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p1, v0, LF4/e;->v0:Lx4/e;

    iget-object p1, p1, Lx4/e;->F:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_b

    :cond_12
    iget-object p1, v0, LF4/e;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p1, v2

    iput v2, v0, LF4/e;->w0:I

    iget-object p1, v0, LF4/e;->u0:Lib/player/base/o;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_13

    goto :goto_a

    :cond_13
    move v1, v2

    :goto_a
    check-cast p1, Lib/player/pages/MainActivity;

    iput-boolean v1, p1, Lib/player/pages/MainActivity;->y0:Z

    :goto_b
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
