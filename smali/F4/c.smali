.class public final LF4/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/fragment/app/t;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/t;)V
    .locals 0

    iput p1, p0, LF4/c;->b:I

    iput-object p2, p0, LF4/c;->q:Landroidx/fragment/app/t;

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
    .locals 13

    iget v0, p0, LF4/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LF4/c;->q:Landroidx/fragment/app/t;

    check-cast v0, Lz4/u;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz4/u;->T(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LF4/c;->q:Landroidx/fragment/app/t;

    check-cast v0, LF4/e;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, LF4/e;->n0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, LF4/e;->v0:Lx4/e;

    iget-object v2, v2, Lx4/e;->B:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, LF4/e;->v0:Lx4/e;

    iget-object v2, v2, Lx4/e;->B:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, v0, LF4/e;->v0:Lx4/e;

    iget-object v2, v2, Lx4/e;->C:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    iget-object v1, v1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "porn"

    const-string v6, "adult"

    const-string v7, "xxx"

    const/4 v8, 0x1

    const-string v9, "category_name"

    const-string v10, "name"

    const/4 v11, 0x2

    const-class v12, Lib/player/models/EPGChannel;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v12}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v8, v2}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v1, v9, v11, v7}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v1, v9, v11, v6}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v1, v9, v11, v5}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v12}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v11, v2}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v2, Lib/player/base/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lio/realm/RealmQuery;->k(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v1

    :goto_2
    iput-object v1, v0, LF4/e;->o0:Lio/realm/T;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    iget-object v1, v1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v9, "category_id"

    :goto_3
    const-class v12, Lib/player/models/MovieModel;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v12}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v8, v2}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v1, v9, v11, v7}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v1, v9, v11, v6}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->j()V

    invoke-virtual {v1, v9, v11, v5}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v1

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v12}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v11, v2}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v2, Lib/player/base/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    :cond_5
    invoke-virtual {v1, v3}, Lio/realm/RealmQuery;->k(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object v1

    :goto_4
    iput-object v1, v0, LF4/e;->p0:Lio/realm/T;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v1, v1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/y;

    const-class v2, Lib/player/models/SeriesModel;

    invoke-virtual {v1, v2}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v10, v11, p1}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/realm/RealmQuery;->g()Lio/realm/T;

    move-result-object p1

    iput-object p1, v0, LF4/e;->q0:Lio/realm/T;

    iget-object p1, v0, LF4/e;->o0:Lio/realm/T;

    new-instance v1, LF4/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LF4/d;-><init>(LF4/e;I)V

    invoke-virtual {p1, v1}, Lio/realm/T;->b(Lio/realm/H;)V

    iget-object p1, v0, LF4/e;->p0:Lio/realm/T;

    new-instance v1, LF4/d;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LF4/d;-><init>(LF4/e;I)V

    invoke-virtual {p1, v1}, Lio/realm/T;->b(Lio/realm/H;)V

    iget-object p1, v0, LF4/e;->q0:Lio/realm/T;

    new-instance v1, LF4/d;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, LF4/d;-><init>(LF4/e;I)V

    invoke-virtual {p1, v1}, Lio/realm/T;->b(Lio/realm/H;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, LF4/c;->b:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, LF4/c;->b:I

    return-void
.end method
