.class public final Lib/player/pages/e;
.super Lv1/y;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lib/player/pages/e;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr1/r;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lib/player/pages/e;->d:I

    iput-object p1, p0, Lib/player/pages/e;->g:Ljava/lang/Object;

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p2, p0, Lib/player/pages/e;->h:Ljava/lang/Object;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lib/player/pages/e;->f:Ljava/lang/Object;

    iput-object p3, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lib/player/pages/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/e;->h:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lib/player/pages/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)J
    .locals 2

    iget v0, p0, Lib/player/pages/e;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lv1/y;->b(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    int-to-long v0, p1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lv1/X;I)V
    .locals 9

    iget v0, p0, Lib/player/pages/e;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr1/k;

    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {p0, p2}, Lib/player/pages/e;->l(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lv1/H;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lv1/H;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lv1/H;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lv1/H;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p1, Lr1/k;->u:Landroid/widget/TextView;

    iget-object v1, p1, Lr1/k;->w:Landroid/widget/ImageView;

    iget-object p1, p1, Lr1/k;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lib/player/pages/e;->h:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p2

    const/16 v2, 0x8

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    check-cast p1, [Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, p2

    if-nez p1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :pswitch_0
    check-cast p1, Lib/player/pages/f;

    iget-object v0, p1, Lib/player/pages/f;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lib/player/pages/e;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/pages/g;

    iget v2, v1, Lib/player/pages/g;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Lib/player/pages/g;->d:Ljava/lang/String;

    iget-object v3, p0, Lib/player/pages/e;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lib/player/pages/g;->b:I

    goto :goto_3

    :cond_3
    iget v2, v1, Lib/player/pages/g;->a:I

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    new-instance v0, LA4/l;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p2, v1, v2}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_1
    move-object v5, p1

    check-cast v5, Lib/player/pages/d;

    iget-object p1, v5, Lib/player/pages/d;->u:Landroid/widget/ImageView;

    iget-object v0, p0, Lib/player/pages/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lib/player/pages/g;

    iget v0, v7, Lib/player/pages/g;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    iget-object v0, v7, Lib/player/pages/g;->d:Ljava/lang/String;

    iget-object v1, p0, Lib/player/pages/e;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v7, Lib/player/pages/g;->b:I

    goto :goto_5

    :cond_5
    iget v0, v7, Lib/player/pages/g;->a:I

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object p1, v5, Lib/player/pages/d;->v:Landroid/widget/TextView;

    iget-object v0, v5, Lv1/X;->a:Landroid/view/View;

    iget-object v1, v7, Lib/player/pages/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, LA4/l;

    const/4 v1, 0x1

    invoke-direct {p1, p0, p2, v7, v1}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, LA4/m;

    const/4 v8, 0x1

    move-object v4, p0

    move v6, p2

    invoke-direct/range {v3 .. v8}, LA4/m;-><init>(Lv1/y;Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v2, v5}, Lib/player/pages/e;->k(ZLib/player/pages/d;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 3

    iget p2, p0, Lib/player/pages/e;->d:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lib/player/pages/e;->g:Ljava/lang/Object;

    check-cast p2, Lr1/r;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lr1/k;

    invoke-direct {v0, p2, p1}, Lr1/k;-><init>(Lr1/r;Landroid/view/View;)V

    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    new-instance p2, Lib/player/pages/f;

    iget-object v0, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b01ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lib/player/pages/f;->u:Landroid/widget/ImageView;

    const v0, 0x7f0b021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-object p2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    new-instance p2, Lib/player/pages/d;

    iget-object v0, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b01ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lib/player/pages/d;->u:Landroid/widget/ImageView;

    const v0, 0x7f0b03cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lib/player/pages/d;->v:Landroid/widget/TextView;

    const v0, 0x7f0b021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(ZLib/player/pages/d;)V
    .locals 1

    iget-object p2, p2, Lib/player/pages/d;->v:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object p1, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06038e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object p1, p0, Lib/player/pages/e;->e:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public l(I)Z
    .locals 4

    iget-object v0, p0, Lib/player/pages/e;->g:Ljava/lang/Object;

    check-cast v0, Lr1/r;

    iget-object v1, v0, Lr1/r;->y0:Landroidx/media3/common/Player;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    return v3

    :cond_1
    const/16 p1, 0x1e

    invoke-interface {v1, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lr1/r;->y0:Landroidx/media3/common/Player;

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    const/16 p1, 0xd

    invoke-interface {v1, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    return p1
.end method
