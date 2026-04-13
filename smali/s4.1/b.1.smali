.class public final Ls4/b;
.super Lv1/y;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ls4/b;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[ZLd5/p;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls4/b;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p1, p0, Ls4/b;->e:Ljava/lang/Object;

    iput-object p2, p0, Ls4/b;->f:Ljava/lang/Object;

    iput-object p3, p0, Ls4/b;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ls4/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls4/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Ls4/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Ls4/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    return v0

    :pswitch_2
    iget-object v0, p0, Ls4/b;->e:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    return v0

    :pswitch_3
    iget-object v0, p0, Ls4/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)J
    .locals 2

    iget v0, p0, Ls4/b;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lv1/y;->b(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    int-to-long v0, p1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lv1/X;I)V
    .locals 13

    iget v0, p0, Ls4/b;->d:I

    packed-switch v0, :pswitch_data_0

    move-object v3, p1

    check-cast v3, Ls4/H;

    iget-object p1, p0, Ls4/b;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lib/player/models/MovieModel;

    iget-object p1, v3, Ls4/H;->u:Landroid/widget/TextView;

    invoke-virtual {v4}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ls4/b;->e:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    iget-object v6, v3, Ls4/H;->v:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lib/player/models/MovieModel;->getStreamIcon()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x3c0

    const/16 v12, 0x28

    const v8, 0x7f0801de

    const v9, 0x7f0801dd

    const/16 v10, 0x2c6

    invoke-static/range {v5 .. v12}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    iget-object p1, v3, Lv1/X;->a:Landroid/view/View;

    new-instance v1, LA4/m;

    const/16 v6, 0xb

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, LA4/m;-><init>(Lv1/y;Lv1/X;Ljava/io/Serializable;II)V

    move-object v8, v2

    move v11, v5

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, LA4/l;

    const/16 v0, 0xf

    invoke-direct {p2, p0, v4, v11, v0}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ls4/C;

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Ls4/C;-><init>(Lv1/y;Lv1/X;Lio/realm/O;II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_0
    move-object v8, p0

    move v11, p2

    move-object v9, p1

    check-cast v9, Ls4/E;

    iget-object p1, v8, Ls4/b;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lib/player/models/SeriesModel;

    iget-object p1, v9, Ls4/E;->u:Landroid/widget/TextView;

    invoke-virtual {v10}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v8, Ls4/b;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, v9, Ls4/E;->v:Landroid/widget/ImageView;

    invoke-virtual {v10}, Lib/player/models/SeriesModel;->getStream_icon()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x3c0

    const/16 v7, 0x28

    const v3, 0x7f0801de

    const v4, 0x7f0801dd

    const/16 v5, 0x2c6

    invoke-static/range {v0 .. v7}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    iget-object p1, v9, Lv1/X;->a:Landroid/view/View;

    new-instance v7, LA4/m;

    const/16 v12, 0x9

    invoke-direct/range {v7 .. v12}, LA4/m;-><init>(Lv1/y;Lv1/X;Ljava/io/Serializable;II)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, LA4/l;

    const/16 v0, 0xd

    invoke-direct {p2, p0, v10, v11, v0}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Ls4/C;

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Ls4/C;-><init>(Lv1/y;Lv1/X;Lio/realm/O;II)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_1
    move-object v8, p0

    move v11, p2

    move-object v9, p1

    check-cast v9, Ls4/D;

    iget-object p1, v8, Ls4/b;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lib/player/models/EPGChannel;

    iget-object p1, v9, Ls4/D;->u:Landroid/widget/TextView;

    invoke-virtual {v10}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v8, Ls4/b;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, v9, Ls4/D;->v:Landroid/widget/ImageView;

    invoke-virtual {v10}, Lib/player/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x258

    const/16 v6, 0x190

    const v3, 0x7f080233

    const v4, 0x7f080233

    invoke-static/range {v0 .. v6}, LQ5/d;->n(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIII)V

    iget-object p1, v9, Lv1/X;->a:Landroid/view/View;

    new-instance v7, LA4/m;

    const/16 v12, 0x8

    invoke-direct/range {v7 .. v12}, LA4/m;-><init>(Lv1/y;Lv1/X;Ljava/io/Serializable;II)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, LA4/l;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v10, v11, v0}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Ls4/C;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Ls4/C;-><init>(Lv1/y;Lv1/X;Lio/realm/O;II)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_2
    move-object v8, p0

    move v11, p2

    check-cast p1, Ls4/m;

    iget-object p2, p1, Ls4/m;->u:Landroid/widget/CheckedTextView;

    iget-object v0, v8, Ls4/b;->e:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Ls4/b;->f:Ljava/lang/Object;

    check-cast v0, [Z

    aget-boolean v0, v0, v11

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p2, p1, Lv1/X;->a:Landroid/view/View;

    new-instance v0, Lr1/h;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v11, v1}, Lr1/h;-><init>(Lv1/y;II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ll3/a;

    invoke-direct {v0, v1, p1}, Ll3/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :pswitch_3
    move-object v8, p0

    move v11, p2

    check-cast p1, Ls4/a;

    iget-object p2, p1, Ls4/a;->v:Landroid/widget/ImageView;

    iget-object v0, v8, Ls4/b;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, v8, Ls4/b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lib/player/models/CastModel;

    invoke-virtual {v9}, Lib/player/models/CastModel;->getProfile_path()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08009b

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Lib/player/models/CastModel;->getProfile_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lib/player/base/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lib/player/models/CastModel;->getProfile_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0, v2}, LZ1/a;->j(I)LZ1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LR1/p;->b:LR1/p;

    new-instance v1, LR1/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, LZ1/a;->s(LR1/k;)LZ1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    invoke-virtual {v0, v2}, LZ1/a;->e(I)LZ1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LR1/p;->b:LR1/p;

    new-instance v1, LR1/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, LZ1/a;->s(LR1/k;)LZ1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    :goto_0
    iget-object p2, p1, Ls4/a;->u:Landroid/widget/TextView;

    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v9}, Lib/player/models/CastModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, LA4/m;

    const/4 v12, 0x2

    move v10, v11

    move-object v11, p1

    invoke-direct/range {v7 .. v12}, LA4/m;-><init>(Lv1/y;Ljava/lang/Object;ILjava/lang/Object;I)V

    move v11, v10

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, LA4/l;

    const/4 p2, 0x3

    invoke-direct {p1, p0, v9, v11, p2}, LA4/l;-><init>(Lv1/y;Ljava/io/Serializable;II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    iget p2, p0, Ls4/b;->d:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ls4/H;

    const v0, 0x7f0e006c

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/H;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_0
    new-instance p2, Ls4/E;

    const v0, 0x7f0e006c

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/E;->u:Landroid/widget/TextView;

    const v0, 0x7f0b01ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/E;->v:Landroid/widget/ImageView;

    return-object p2

    :pswitch_1
    new-instance p2, Ls4/D;

    const v0, 0x7f0e006b

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/D;->u:Landroid/widget/TextView;

    const v0, 0x7f0b01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/D;->v:Landroid/widget/ImageView;

    return-object p2

    :pswitch_2
    new-instance p2, Ls4/m;

    const v0, 0x7f0e0069

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p2, Ls4/m;->u:Landroid/widget/CheckedTextView;

    return-object p2

    :pswitch_3
    new-instance p2, Ls4/a;

    const v0, 0x7f0e0062

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/a;->u:Landroid/widget/TextView;

    const v0, 0x7f0b01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/a;->v:Landroid/widget/ImageView;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ls4/b;->e:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ls4/b;->f:Ljava/lang/Object;

    check-cast v1, [Z

    aput-boolean p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv1/y;->d()V

    return-void
.end method
