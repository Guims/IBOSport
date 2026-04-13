.class public final synthetic Lk5/o;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk5/o;->b:I

    iput-object p2, p0, Lk5/o;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk5/o;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/N;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2}, Landroidx/fragment/app/m;->P(ZZ)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lz4/N;->F0:I

    iget-object p2, v0, Lz4/N;->G0:Lz4/M;

    invoke-interface {p2, p1}, Lz4/M;->a(I)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/L;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lz4/L;->H0:I

    iget-boolean p2, v0, Lz4/L;->J0:Z

    if-eqz p2, :cond_1

    iget-object p2, v0, Lz4/L;->z0:Landroid/widget/TextView;

    iget-object v0, v0, Lz4/L;->F0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lz4/L;->z0:Landroid/widget/TextView;

    iget-object v0, v0, Lz4/L;->G0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lz4/L;->I0:I

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/J;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2}, Landroidx/fragment/app/m;->P(ZZ)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lz4/J;->F0:I

    iget-object p2, v0, Lz4/J;->G0:Lz4/I;

    invoke-interface {p2, p1}, Lz4/I;->a(I)V

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/w;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lz4/w;->H0:I

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/t;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lz4/t;->H0:I

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_4
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/r;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v0, Lz4/r;->J0:Ls4/b;

    iget v1, v0, Lz4/r;->O0:I

    iget-object v2, p2, Ls4/b;->f:Ljava/lang/Object;

    check-cast v2, [Z

    aget-boolean v3, v2, v1

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v2, v1

    invoke-virtual {p2, v1}, Lv1/y;->e(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lz4/r;->O0:I

    :cond_6
    const/4 p1, 0x0

    return-object p1

    :pswitch_5
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/q;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v0, Lz4/q;->I0:Ljava/util/List;

    iget-object v1, v0, Lz4/q;->G0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, v0, Lz4/q;->I0:Ljava/util/List;

    iget-object v0, v0, Lz4/q;->G0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object p2, v0, Lz4/q;->I0:Ljava/util/List;

    iget-object v1, v0, Lz4/q;->G0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, v0, Lz4/q;->I0:Ljava/util/List;

    iget-object v0, v0, Lz4/q;->G0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/p;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lz4/p;->H0:I

    :cond_9
    const/4 p1, 0x0

    return-object p1

    :pswitch_7
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/k;

    check-cast p1, Lib/player/models/EpisodeModel;

    check-cast p2, Ljava/lang/Integer;

    iget-object p1, v0, Lz4/k;->I0:Lib/player/pages/series/l;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Lib/player/pages/series/l;->q:Lib/player/pages/series/SeriesMobilePlayerActivity;

    iget-object v0, p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->G0:Lz4/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/m;->P(ZZ)V

    iget v0, p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    if-eq v0, p2, :cond_a

    iput p2, p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-virtual {p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    iget p2, p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-virtual {p1, p2}, Lib/player/pages/series/SeriesMobilePlayerActivity;->C(I)V

    :cond_a
    const/4 p1, 0x0

    return-object p1

    :pswitch_8
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, Lz4/h;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, v0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v1, v0, Lz4/h;->J0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, v0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v0, v0, Lz4/h;->J0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_b
    iget-object p2, v0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v1, v0, Lz4/h;->J0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, v0, Lz4/h;->I0:Ljava/util/ArrayList;

    iget-object v0, v0, Lz4/h;->J0:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :pswitch_9
    iget-object v0, p0, Lk5/o;->q:Ljava/lang/Object;

    check-cast v0, [C

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v1, "$this$DelimitedRangesSequence"

    invoke-static {p1, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lk5/f;->N(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_3

    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, LS4/d;

    invoke-direct {v0, p1, p2}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
