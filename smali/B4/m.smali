.class public final LB4/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LB4/s;


# direct methods
.method public synthetic constructor <init>(LB4/s;I)V
    .locals 0

    iput p2, p0, LB4/m;->b:I

    iput-object p1, p0, LB4/m;->q:LB4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final b(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final c(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final d(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget v0, p0, LB4/m;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, LB4/m;->q:LB4/s;

    iget-object v0, p1, LB4/s;->u0:[I

    invoke-virtual {p1}, LB4/s;->C0()V

    iget-object v1, p1, LB4/s;->r0:Ls4/z;

    iget-object v2, p1, LB4/s;->n0:Ljava/util/List;

    iput-object v2, v1, Ls4/z;->e:Ljava/util/List;

    invoke-virtual {v1}, Lv1/y;->d()V

    iget-object v1, p1, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p1, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LB4/m;->q:LB4/s;

    iget-object v1, v0, LB4/s;->u0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    sget v4, Lib/player/app/MyApp;->y:I

    add-int/lit8 v5, v4, -0x1

    if-le v3, v5, :cond_4

    iget-object v5, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v5}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_4

    iget-object v3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v3

    aget v1, v1, v2

    sub-int/2addr v1, v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2, v1}, Lib/player/base/helper/w;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lib/player/base/helper/w;->f(Ljava/lang/String;Ljava/util/List;)Lio/realm/T;

    move-result-object p1

    iput-object p1, v0, LB4/s;->o0:Lio/realm/T;

    new-instance v1, LB4/n;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LB4/n;-><init>(LB4/s;I)V

    invoke-virtual {p1, v1}, Lio/realm/T;->b(Lio/realm/H;)V

    goto :goto_1

    :cond_4
    new-instance p1, LB4/f;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, LB4/f;-><init>(LB4/s;I)V

    invoke-virtual {v0, p1}, LB4/s;->D0(Ld5/a;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, LB4/m;->b:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, LB4/m;->b:I

    return-void
.end method
