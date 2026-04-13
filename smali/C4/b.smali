.class public LC4/b;
.super Lib/player/base/BaseFragment;


# instance fields
.field public A0:Lib/player/models/EPGChannel;

.field public final m0:[I

.field public n0:Lx4/c;

.field public o0:Ljava/util/List;

.field public p0:Ljava/util/List;

.field public q0:Ljava/util/ArrayList;

.field public final r0:Ljava/text/SimpleDateFormat;

.field public final s0:Ljava/text/SimpleDateFormat;

.field public t0:I

.field public u0:I

.field public v0:Lr1/i;

.field public w0:Ls4/y;

.field public x0:I

.field public y0:Landroid/os/Handler;

.field public z0:LA4/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, LC4/b;->m0:[I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM d, yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, LC4/b;->r0:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, LC4/b;->s0:Ljava/text/SimpleDateFormat;

    iput v0, p0, LC4/b;->t0:I

    iput v0, p0, LC4/b;->u0:I

    iput v0, p0, LC4/b;->x0:I

    return-void
.end method


# virtual methods
.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p1, p0, LC4/b;->t0:I

    if-nez p1, :cond_0

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, LC4/b;->u0:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_3

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    iget v0, p0, LC4/b;->u0:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v1

    :pswitch_2
    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, LC4/b;->u0:I

    if-ge p1, v0, :cond_1

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    iget v0, p0, LC4/b;->t0:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v1

    :cond_1
    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    return v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()Z
    .locals 4

    iget v0, p0, LC4/b;->x0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v2, p0, LC4/b;->m0:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_4

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v3

    invoke-virtual {v3, v2}, Lv1/G;->E0(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_3
    const-string v0, "ViewHolder for position "

    const-string v3, " not found in GridView "

    invoke-static {v0, v2, v3}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LC4/b;->x0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FocusState"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final S()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    return-void
.end method

.method public final T(Ljava/util/List;)V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC4/b;->q0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, p0, LC4/b;->r0:Ljava/text/SimpleDateFormat;

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lib/player/models/CatchUpEpg;

    add-int/2addr v5, v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v6}, Lib/player/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, LC4/b;->s0:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    :cond_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Lib/player/models/CatchupModel;

    invoke-direct {v10}, Lib/player/models/CatchupModel;-><init>()V

    invoke-virtual {v10, v2}, Lib/player/models/CatchupModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Lib/player/models/CatchupModel;->setDayofweek(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lib/player/models/CatchupModel;->setEpgEvents(Ljava/util/List;)V

    iget-object v0, p0, LC4/b;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    new-instance v4, Lib/player/models/CatchupModel;

    invoke-direct {v4}, Lib/player/models/CatchupModel;-><init>()V

    invoke-virtual {v4, v2}, Lib/player/models/CatchupModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lib/player/models/CatchupModel;->setDayofweek(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lib/player/models/CatchupModel;->setEpgEvents(Ljava/util/List;)V

    iget-object v7, p0, LC4/b;->q0:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->N:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->showPrevious()V

    iget-object p1, p0, LC4/b;->q0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_9

    iget-object p1, p0, LC4/b;->q0:Ljava/util/ArrayList;

    move v1, v3

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/CatchupModel;

    invoke-virtual {v4}, Lib/player/models/CatchupModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_2
    iput v1, p0, LC4/b;->t0:I

    iget-object p1, p0, LC4/b;->v0:Lr1/i;

    iget-object v2, p0, LC4/b;->q0:Ljava/util/ArrayList;

    iput-object v2, p1, Lr1/i;->g:Ljava/lang/Object;

    iput v1, p1, Lr1/i;->e:I

    invoke-virtual {p1}, Lv1/y;->d()V

    iget-object p1, p0, LC4/b;->q0:Ljava/util/ArrayList;

    iget v1, p0, LC4/b;->t0:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CatchupModel;

    invoke-virtual {p1}, Lib/player/models/CatchupModel;->getEpgEvents()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LC4/b;->p0:Ljava/util/List;

    move v1, v0

    move p1, v3

    :goto_3
    iget-object v2, p0, LC4/b;->p0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    iget-object v2, p0, LC4/b;->p0:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CatchUpEpg;

    invoke-virtual {v2}, Lib/player/models/CatchUpEpg;->getNow_playing()I

    move-result v2

    if-ne v2, v8, :cond_6

    move v1, p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    if-ne v1, v0, :cond_8

    iput v3, p0, LC4/b;->u0:I

    goto :goto_4

    :cond_8
    iput v1, p0, LC4/b;->u0:I

    :goto_4
    iget-object p1, p0, LC4/b;->w0:Ls4/y;

    iget-object v0, p0, LC4/b;->p0:Ljava/util/List;

    invoke-virtual {p1, v0}, Ls4/y;->k(Ljava/util/List;)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    iget v0, p0, LC4/b;->u0:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    iget-object p1, p0, LC4/b;->w0:Ls4/y;

    iget v0, p0, LC4/b;->u0:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget-object p1, p0, LC4/b;->w0:Ls4/y;

    iput v1, p1, Ls4/y;->g:I

    invoke-virtual {p1, v1}, Lv1/y;->e(I)V

    invoke-virtual {p0}, LC4/b;->U()V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    iget v0, p0, LC4/b;->t0:I

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, LC4/b;->v0:Lr1/i;

    iget-object v1, p0, LC4/b;->q0:Ljava/util/ArrayList;

    iput-object v1, p1, Lr1/i;->g:Ljava/lang/Object;

    iput v0, p1, Lr1/i;->e:I

    invoke-virtual {p1}, Lv1/y;->d()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LC4/b;->p0:Ljava/util/List;

    iget-object v0, p0, LC4/b;->w0:Ls4/y;

    invoke-virtual {v0, p1}, Ls4/y;->k(Ljava/util/List;)V

    invoke-virtual {p0}, LC4/b;->U()V

    return-void
.end method

.method public final U()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, LC4/b;->p0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LC4/b;->p0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, LC4/b;->u0:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, LC4/b;->p0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CatchUpEpg;

    iget-object v1, p0, LC4/b;->n0:Lx4/c;

    iget-object v1, v1, Lx4/c;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lv4/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LC4/b;->n0:Lx4/c;

    iget-object v1, v1, Lx4/c;->L:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, LC4/b;->n0:Lx4/c;

    iget-object v1, v1, Lx4/c;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lv4/c;->c(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LC4/b;->n0:Lx4/c;

    iget-object v1, v1, Lx4/c;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpg;->getStop_timestamp()J

    move-result-wide v3

    mul-long/2addr v3, v5

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lv4/c;->c(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LC4/b;->n0:Lx4/c;

    iget-object v1, v1, Lx4/c;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, LC4/b;->n0:Lx4/c;

    iget-object v1, v1, Lx4/c;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpg;->getReadableDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LC4/b;->n0:Lx4/c;

    iget-object v1, v1, Lx4/c;->I:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpg;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->K:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->L:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LC4/b;->n0:Lx4/c;

    iget-object v0, v0, Lx4/c;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, LC4/b;->y0:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, LC4/b;->z0:LA4/f;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LC4/b;->y0:Landroid/os/Handler;

    iget-object v1, p0, LC4/b;->z0:LA4/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lib/player/base/BaseFragment;->v(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->l0:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Lio/realm/y;

    const-class v2, Lib/player/models/EPGChannel;

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    iput-object p1, p0, LC4/b;->A0:Lib/player/models/EPGChannel;

    :cond_0
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    sget v0, Lx4/c;->P:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e0047

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/c;

    iput-object p1, p0, LC4/b;->n0:Lx4/c;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/HorizontalGridView;->setNumRows(I)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveHorizontalGridView;->setLoop(Z)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_0
    invoke-virtual {p0}, LC4/b;->S()V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->O:Landroid/view/View;

    new-instance p2, LB4/u;

    invoke-direct {p2, v0, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->H:Landroid/widget/TextView;

    iget-object p2, p0, LC4/b;->A0:Lib/player/models/EPGChannel;

    invoke-virtual {p2}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object v4, p1, Lx4/c;->F:Landroid/widget/ImageView;

    iget-object p1, p0, LC4/b;->A0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x12c

    const/16 v9, 0x12c

    const v6, 0x7f080233

    const v7, 0x7f080233

    invoke-static/range {v3 .. v9}, LQ5/d;->n(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIII)V

    new-instance p1, Lr1/i;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, LC4/a;

    invoke-direct {v3, p0, v2}, LC4/a;-><init>(LC4/b;I)V

    invoke-direct {p1, p2, v1, v3}, Lr1/i;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ld5/q;)V

    iput-object p1, p0, LC4/b;->v0:Lr1/i;

    iget-object p2, p0, LC4/b;->n0:Lx4/c;

    iget-object p2, p2, Lx4/c;->C:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    new-instance p1, Ls4/y;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v1, v1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v3, "time_format"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, LC4/a;

    invoke-direct {v4, p0, v0}, LC4/a;-><init>(LC4/b;I)V

    invoke-direct {p1, p2, v1, v3, v4}, Ls4/y;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;Ld5/q;)V

    iput-object p1, p0, LC4/b;->w0:Ls4/y;

    iget-object p2, p0, LC4/b;->n0:Lx4/c;

    iget-object p2, p2, Lx4/c;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget p1, p0, LC4/b;->t0:I

    iget-object p2, p0, LC4/b;->m0:[I

    aput p1, p2, v2

    iget p1, p0, LC4/b;->u0:I

    aput p1, p2, v0

    iput v0, p0, LC4/b;->x0:I

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Lx4/c;->N:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->showNext()V

    :try_start_0
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object p1

    iget-object p2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LC4/b;->A0:Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lu4/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Le4/c;

    const/16 v1, 0x8

    invoke-direct {p2, v1, p0}, Le4/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LC4/b;->o0:Ljava/util/List;

    invoke-virtual {p0, p1}, LC4/b;->T(Ljava/util/List;)V

    :goto_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LC4/b;->y0:Landroid/os/Handler;

    new-instance p1, LA4/f;

    invoke-direct {p1, v0, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LC4/b;->z0:LA4/f;

    iget-object p1, p0, LC4/b;->n0:Lx4/c;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, LC4/b;->y0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, LC4/b;->z0:LA4/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
