.class public final synthetic LA4/b;
.super Ljava/lang/Object;

# interfaces
.implements LS4/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/fragment/app/t;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/t;)V
    .locals 0

    iput p1, p0, LA4/b;->b:I

    iput-object p2, p0, LA4/b;->q:Landroidx/fragment/app/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LA4/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA4/b;->q:Landroidx/fragment/app/t;

    check-cast v0, Lz4/u;

    check-cast p1, Lib/player/models/EPGChannel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lz4/u;->G0:I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    iget p2, v0, Lz4/u;->F0:I

    const/4 p4, 0x4

    const/4 v1, 0x0

    if-eq p2, p4, :cond_0

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_0
    iget p2, v0, Lz4/u;->F0:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_6

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object p4

    iget-object v2, v0, Lz4/u;->H0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p2, "adult"

    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "xxx"

    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "porn"

    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    sget-object p4, Lib/player/base/n;->u:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_6

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p2

    invoke-static {p2, p2}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object p4

    const-string v2, "fragment_channel_lock"

    invoke-virtual {p2, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {p4, v3, p3, v1}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    iget-object p4, v0, Lz4/u;->H0:Lib/player/base/helper/w;

    invoke-virtual {p4}, Lib/player/base/helper/w;->P()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lz4/y;->T(Ljava/lang/String;)Lz4/y;

    move-result-object p4

    new-instance v1, Lp5/p;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v1, v0, p1, v3, v4}, Lp5/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v1, p4, Lz4/y;->A0:Lz4/x;

    invoke-virtual {p4, p2, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p2, v0, Lz4/u;->I0:LB4/h;

    invoke-virtual {p2, p1}, LB4/h;->a(Lib/player/models/EPGChannel;)V

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_7
    :goto_2
    return-object p3

    :pswitch_0
    iget-object v0, p0, LA4/b;->q:Landroidx/fragment/app/t;

    check-cast v0, Lib/player/pages/catchup/e;

    check-cast p1, Lib/player/models/EPGChannel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_a

    iget-object p3, v0, Lib/player/pages/catchup/e;->o0:Ljava/util/ArrayList;

    iget p4, v0, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lib/player/models/CategoryModel;

    invoke-virtual {p3}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "all_id"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p4, v2}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2, v1}, Lib/player/pages/catchup/e;->W(Lib/player/models/EPGChannel;II)V

    goto/16 :goto_3

    :cond_8
    iget-object p3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p4, v2}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, v0, Lib/player/pages/catchup/e;->o0:Ljava/util/ArrayList;

    iget p4, v0, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lib/player/models/CategoryModel;

    invoke-virtual {p3}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "lock_id"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2, v1}, Lib/player/pages/catchup/e;->W(Lib/player/models/EPGChannel;II)V

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lib/player/pages/catchup/e;->w0:I

    invoke-virtual {v0}, Lib/player/pages/catchup/e;->V()V

    goto :goto_3

    :cond_a
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object p3, Lib/player/base/n;->u:Ljava/util/ArrayList;

    iget-object v1, v0, Lib/player/pages/catchup/e;->o0:Ljava/util/ArrayList;

    iget v2, v0, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p3

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result v2

    xor-int/2addr p4, v2

    new-instance v2, Lib/player/pages/catchup/b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lib/player/pages/catchup/b;-><init>(Lib/player/pages/catchup/e;II)V

    iget-object p2, p3, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p2, Lio/realm/y;

    new-instance p3, Lib/player/base/helper/y;

    const/4 v0, 0x1

    invoke-direct {p3, v0, v1, p4}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    new-instance p4, LA3/d;

    const/16 v0, 0x12

    invoke-direct {p4, v0, v2}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3, p4}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    :cond_b
    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    goto :goto_3

    :cond_c
    iget-object p1, v0, Lib/player/pages/catchup/e;->m0:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, p4

    iput p4, v0, Lib/player/pages/catchup/e;->y0:I

    iget-object p1, v0, Lib/player/pages/catchup/e;->x0:Lib/player/pages/MainActivity;

    iput-boolean v1, p1, Lib/player/pages/MainActivity;->y0:Z

    :goto_3
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object v0, p0, LA4/b;->q:Landroidx/fragment/app/t;

    check-cast v0, LB4/s;

    check-cast p1, Lib/player/models/EPGChannel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    iget-object v1, v0, LB4/s;->E0:Landroid/os/Handler;

    iget-object v2, v0, LB4/s;->v0:[I

    iget-object v3, v0, LB4/s;->u0:[I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_12

    iget-boolean p3, v0, LB4/s;->D0:Z

    if-nez p3, :cond_15

    iget-object p3, v0, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p1, v0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    aget p2, v3, v5

    if-le p1, p2, :cond_d

    iget-object p1, v0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CategoryModel;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "resume_id"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    aput v5, v3, v6

    :cond_d
    invoke-virtual {v0, v6}, LB4/s;->t0(Z)V

    goto/16 :goto_7

    :cond_e
    iget-object p3, v0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    aget p4, v3, v5

    if-le p3, p4, :cond_f

    iget-object p3, v0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lib/player/models/CategoryModel;

    invoke-virtual {p3}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "all_id"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    iget-object p3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3, p4, v7}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p3, v5}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    goto :goto_4

    :cond_f
    iget-object p3, v0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    aget p4, v3, v5

    if-le p3, p4, :cond_10

    iget-object p3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3, p4, v7}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_10

    iget-object p3, v0, LB4/s;->n0:Ljava/util/List;

    aget p4, v3, v5

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lib/player/models/CategoryModel;

    invoke-virtual {p3}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "lock_id"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_10

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p3, v5}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    goto :goto_4

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, v3, v6

    invoke-virtual {v0, p1}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    :goto_4
    aget p3, v2, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_15

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v2, v6

    iput v6, v0, LB4/s;->q1:I

    iget-object p2, v0, LB4/s;->L0:Lib/player/base/o;

    check-cast p2, Lib/player/pages/MainActivity;

    iput-boolean v5, p2, Lib/player/pages/MainActivity;->y0:Z

    iget-object p2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->B()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, v0, LB4/s;->G0:LB4/b;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, LB4/s;->Y(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    invoke-virtual {v0, v4}, LB4/s;->w0(Ljava/util/List;)V

    :goto_5
    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, LB4/s;->z0:Ljava/lang/String;

    invoke-virtual {v0}, LB4/s;->E0()V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-virtual {v0, p1}, LB4/s;->x0(Z)V

    aget p1, v2, v6

    invoke-virtual {v0, p1}, LB4/s;->U(I)V

    goto :goto_7

    :cond_12
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_13

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, LB4/s;->W(Lib/player/models/EPGChannel;I)V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-virtual {v0, p1}, LB4/s;->x0(Z)V

    goto :goto_7

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v2, v6

    iput v6, v0, LB4/s;->q1:I

    iget-object p2, v0, LB4/s;->L0:Lib/player/base/o;

    check-cast p2, Lib/player/pages/MainActivity;

    iput-boolean v5, p2, Lib/player/pages/MainActivity;->y0:Z

    iget-boolean p2, v0, LB4/s;->D0:Z

    if-nez p2, :cond_15

    iget-object p2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->B()Z

    move-result p2

    if-nez p2, :cond_14

    iget-object p2, v0, LB4/s;->G0:LB4/b;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, LB4/s;->Y(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    invoke-virtual {v0, v4}, LB4/s;->w0(Ljava/util/List;)V

    :goto_6
    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, LB4/s;->z0:Ljava/lang/String;

    invoke-virtual {v0}, LB4/s;->E0()V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    invoke-virtual {v0, p1}, LB4/s;->x0(Z)V

    aget p1, v2, v6

    invoke-virtual {v0, p1}, LB4/s;->U(I)V

    :cond_15
    :goto_7
    return-object v4

    :pswitch_2
    iget-object v0, p0, LA4/b;->q:Landroidx/fragment/app/t;

    check-cast v0, LA4/p;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Lib/player/models/BaseModel;

    iget v1, v0, LA4/p;->m0:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, LA4/p;->m0:I

    invoke-virtual {v0, p1}, LA4/p;->V(I)V

    :cond_16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, LA4/p;->n0:I

    invoke-interface {p4}, Lib/player/models/BaseModel;->isValid()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_17

    goto/16 :goto_a

    :cond_17
    invoke-interface {p4}, Lib/player/models/BaseModel;->getCategoryType()Lib/player/base/m;

    move-result-object p1

    sget-object v1, Lib/player/base/m;->q:Lib/player/base/m;

    const-wide/16 v2, 0xfa

    const/high16 v4, 0x20000

    const/4 v5, 0x0

    const v6, 0x7f0b017d

    if-ne p1, v1, :cond_1b

    check-cast p4, Lib/player/models/MovieModel;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p4}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object p3

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->B()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p4}, Lib/player/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object p4

    goto :goto_8

    :cond_18
    invoke-virtual {p4}, Lib/player/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lv4/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_8
    iget-object v1, v0, LA4/p;->s0:Lib/player/pages/MainActivity;

    invoke-static {p1, p3, p4, v1}, LD4/h;->U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/player/base/o;)LD4/h;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p3

    new-instance p4, Landroidx/fragment/app/a;

    invoke-direct {p4, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    invoke-virtual {p4, v6, p1, p2}, Landroidx/fragment/app/a;->i(ILib/player/base/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {p4, v5}, Landroidx/fragment/app/a;->e(Z)I

    iget-object p1, v0, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto/16 :goto_a

    :cond_19
    iget-object p1, v0, LA4/p;->x0:Ljava/lang/Runnable;

    if-eqz p1, :cond_1a

    iget-object p3, v0, LA4/p;->v0:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    new-instance p1, LA/o;

    const/4 p3, 0x3

    invoke-direct {p1, v0, p3, p4}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p1, v0, LA4/p;->x0:Ljava/lang/Runnable;

    iget-object p3, v0, LA4/p;->v0:Landroid/os/Handler;

    invoke-virtual {p3, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    :cond_1b
    invoke-interface {p4}, Lib/player/models/BaseModel;->getCategoryType()Lib/player/base/m;

    move-result-object p1

    sget-object v1, Lib/player/base/m;->r:Lib/player/base/m;

    if-ne p1, v1, :cond_1f

    check-cast p4, Lib/player/models/SeriesModel;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p4}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object p3

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->B()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p4}, Lib/player/models/SeriesModel;->getCategory_name()Ljava/lang/String;

    move-result-object p4

    goto :goto_9

    :cond_1c
    invoke-virtual {p4}, Lib/player/models/SeriesModel;->getCategory_id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lv4/c;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_9
    iget-object v1, v0, LA4/p;->s0:Lib/player/pages/MainActivity;

    invoke-static {p1, p3, p4, v1}, Lib/player/pages/series/h;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/player/base/o;)Lib/player/pages/series/h;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p3

    new-instance p4, Landroidx/fragment/app/a;

    invoke-direct {p4, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    invoke-virtual {p4, v6, p1, p2}, Landroidx/fragment/app/a;->i(ILib/player/base/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {p4, v5}, Landroidx/fragment/app/a;->e(Z)I

    iget-object p1, v0, LA4/p;->u0:Lx4/g;

    iget-object p1, p1, Lx4/g;->R:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_a

    :cond_1d
    iget-object p1, v0, LA4/p;->x0:Ljava/lang/Runnable;

    if-eqz p1, :cond_1e

    iget-object p3, v0, LA4/p;->v0:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    new-instance p1, LA/o;

    const/4 p3, 0x2

    invoke-direct {p1, v0, p3, p4}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p1, v0, LA4/p;->x0:Ljava/lang/Runnable;

    iget-object p3, v0, LA4/p;->v0:Landroid/os/Handler;

    invoke-virtual {p3, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    :goto_a
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
