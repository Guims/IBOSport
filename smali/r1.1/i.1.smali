.class public final Lr1/i;
.super Lv1/y;


# instance fields
.field public final synthetic d:I

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lr1/i;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ld5/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr1/i;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lr1/i;->e:I

    iput-object p1, p0, Lr1/i;->f:Ljava/lang/Object;

    iput-object p2, p0, Lr1/i;->g:Ljava/lang/Object;

    iput-object p3, p0, Lr1/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILA4/b;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lr1/i;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p1, p0, Lr1/i;->g:Ljava/lang/Object;

    iput-object p2, p0, Lr1/i;->f:Ljava/lang/Object;

    iput p3, p0, Lr1/i;->e:I

    iput-object p4, p0, Lr1/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;LB4/d;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lr1/i;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr1/i;->e:I

    iput-object p1, p0, Lr1/i;->f:Ljava/lang/Object;

    iput-object p3, p0, Lr1/i;->g:Ljava/lang/Object;

    iput-object p2, p0, Lr1/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr1/r;[Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr1/i;->d:I

    iput-object p1, p0, Lr1/i;->h:Ljava/lang/Object;

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p2, p0, Lr1/i;->f:Ljava/lang/Object;

    iput-object p3, p0, Lr1/i;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lr1/i;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr1/i;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lr1/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lr1/i;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    return v0

    :pswitch_2
    iget-object v0, p0, Lr1/i;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    return v0

    :pswitch_3
    iget-object v0, p0, Lr1/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    return v0

    :pswitch_4
    iget-object v0, p0, Lr1/i;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)J
    .locals 2

    iget v0, p0, Lr1/i;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lv1/y;->b(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    int-to-long v0, p1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lv1/X;I)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v4, p2

    iget v0, v1, Lr1/i;->d:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ls4/L;

    iget-object v2, v0, Ls4/L;->u:Landroid/widget/ImageView;

    iget-object v3, v0, Ls4/L;->w:Landroid/widget/ImageView;

    iget-object v5, v0, Lv1/X;->a:Landroid/view/View;

    iget-object v6, v1, Lr1/i;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lib/player/base/p;

    iget v6, v6, Lib/player/base/p;->b:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Ls4/L;->v:Landroid/widget/TextView;

    iget-object v2, v1, Lr1/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/base/p;

    iget-object v2, v2, Lib/player/base/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lr1/i;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lr1/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/base/p;

    iget-object v2, v2, Lib/player/base/p;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget v0, v1, Lr1/i;->e:I

    if-ne v0, v4, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/4 v0, -0x1

    iput v0, v1, Lr1/i;->e:I

    :cond_1
    new-instance v0, Ls4/K;

    invoke-direct {v0, v1, v4}, Ls4/K;-><init>(Lr1/i;I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lr1/h;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lr1/h;-><init>(Lv1/y;II)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    move-object/from16 v2, p1

    check-cast v2, Ls4/f;

    iget-object v0, v1, Lr1/i;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, v1, Lr1/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lib/player/models/Season;

    iget-object v7, v2, Ls4/f;->u:Landroid/widget/TextView;

    iget-object v8, v2, Ls4/f;->v:Landroid/view/View;

    iget-object v9, v2, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v3}, Lib/player/models/Season;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lib/player/models/Season;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lib/player/models/Season;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Season "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LA4/m;

    const/16 v5, 0xc

    invoke-direct/range {v0 .. v5}, LA4/m;-><init>(Lv1/y;Lv1/X;Ljava/io/Serializable;II)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, LA4/l;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v3, v2}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f060390

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_4
    const v0, 0x7f06038b

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    iget v0, v1, Lr1/i;->e:I

    if-ne v4, v0, :cond_5

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06038e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060394

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    :pswitch_1
    move-object/from16 v2, p1

    check-cast v2, Ls4/B;

    iget-object v0, v1, Lr1/i;->g:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, v1, Lr1/i;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lib/player/models/EPGChannel;

    iget-object v7, v2, Ls4/B;->u:Landroid/widget/TextView;

    iget-object v8, v2, Ls4/B;->A:Landroid/widget/ImageView;

    iget-object v0, v2, Ls4/B;->y:Landroid/widget/ImageView;

    iget-object v5, v2, Ls4/B;->z:Landroid/widget/ImageView;

    iget-object v9, v2, Ls4/B;->x:Landroid/widget/ImageView;

    iget-object v10, v2, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v3}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v2, Ls4/B;->v:Landroid/widget/TextView;

    invoke-virtual {v3}, Lib/player/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-eqz v11, :cond_6

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-virtual {v3}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    invoke-virtual {v3}, Lib/player/models/EPGChannel;->getTv_archive()Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_8
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-object v0, v1, Lr1/i;->g:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/content/Context;

    iget-object v15, v2, Ls4/B;->w:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lib/player/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x208

    const/16 v20, 0x190

    const v17, 0x7f080233

    const v18, 0x7f080233

    invoke-static/range {v14 .. v20}, LQ5/d;->n(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIII)V

    new-instance v0, LA4/l;

    const/16 v5, 0xb

    invoke-direct {v0, v1, v4, v3, v5}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LA4/m;

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, LA4/m;-><init>(Lv1/y;Lv1/X;Ljava/io/Serializable;II)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Ls4/A;

    invoke-direct {v0, v1, v3, v4}, Ls4/A;-><init>(Lr1/i;Lib/player/models/EPGChannel;I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v0, v1, Lr1/i;->e:I

    if-ne v0, v4, :cond_9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06038e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_9
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060394

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ls4/H;

    iget-object v2, v1, Lr1/i;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/MovieCreditModel;

    iget-object v3, v0, Ls4/H;->u:Landroid/widget/TextView;

    invoke-virtual {v2}, Lib/player/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lr1/i;->g:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lib/player/pages/movie/MovieCreditActivity;

    iget-object v6, v0, Ls4/H;->v:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lib/player/base/n;->m:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lib/player/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x3c0

    const/16 v12, 0x28

    const v8, 0x7f0801de

    const v9, 0x7f0801dd

    const/16 v10, 0x2c6

    invoke-static/range {v5 .. v12}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    iget-object v3, v0, Lv1/X;->a:Landroid/view/View;

    new-instance v5, LA4/l;

    const/4 v6, 0x7

    invoke-direct {v5, v1, v4, v2, v6}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Ls4/q;

    invoke-direct {v5, v1, v0, v2, v4}, Ls4/q;-><init>(Lr1/i;Ls4/H;Lib/player/models/MovieCreditModel;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Ls4/r;

    invoke-direct {v5, v1, v0, v2, v4}, Ls4/r;-><init>(Lr1/i;Ls4/H;Lib/player/models/MovieCreditModel;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v0, v1, Lr1/i;->e:I

    if-ne v0, v4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_a
    return-void

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ls4/f;

    iget-object v2, v1, Lr1/i;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CatchupModel;

    iget-object v3, v0, Ls4/f;->u:Landroid/widget/TextView;

    invoke-virtual {v2}, Lib/player/models/CatchupModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lv1/X;->a:Landroid/view/View;

    new-instance v5, Ls4/e;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v0, v4, v6}, Ls4/e;-><init>(Lv1/y;Lv1/X;II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, LA4/l;

    const/4 v6, 0x4

    invoke-direct {v5, v1, v4, v2, v6}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v0, v4, v2}, Lr1/i;->k(Ls4/f;IZ)V

    return-void

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lr1/l;

    iget-object v2, v0, Lr1/l;->v:Landroid/view/View;

    iget-object v3, v0, Lv1/X;->a:Landroid/view/View;

    iget-object v5, v1, Lr1/i;->f:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_b

    iget-object v0, v0, Lr1/l;->u:Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget v0, v1, Lr1/i;->e:I

    const/4 v5, 0x0

    if-ne v4, v0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_c
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    new-instance v0, Lr1/h;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lr1/h;-><init>(Lv1/y;II)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    iget p2, p0, Lr1/i;->d:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ls4/L;

    const v0, 0x7f0e0073

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b01f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/L;->u:Landroid/widget/ImageView;

    const v0, 0x7f0b0403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/L;->v:Landroid/widget/TextView;

    const v0, 0x7f0b01f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/L;->w:Landroid/widget/ImageView;

    return-object p2

    :pswitch_0
    new-instance p2, Ls4/f;

    const v0, 0x7f0e0065

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/f;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_1
    new-instance p2, Ls4/B;

    const v0, 0x7f0e006f

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/B;->u:Landroid/widget/TextView;

    const v0, 0x7f0b03f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/B;->v:Landroid/widget/TextView;

    const v0, 0x7f0b01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/B;->w:Landroid/widget/ImageView;

    const v0, 0x7f0b01e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/B;->x:Landroid/widget/ImageView;

    const v0, 0x7f0b01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/B;->y:Landroid/widget/ImageView;

    const v0, 0x7f0b01e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/B;->z:Landroid/widget/ImageView;

    const v0, 0x7f0b0427

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/B;->A:Landroid/widget/ImageView;

    return-object p2

    :pswitch_2
    new-instance p2, Ls4/H;

    const v0, 0x7f0e006c

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/H;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_3
    new-instance p2, Ls4/f;

    const v0, 0x7f0e0065

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/f;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_4
    iget-object p2, p0, Lr1/i;->h:Ljava/lang/Object;

    check-cast p2, Lr1/r;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0040

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr1/l;

    invoke-direct {p2, p1}, Lr1/l;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ls4/f;IZ)V
    .locals 6

    iget-object v0, p1, Ls4/f;->v:Landroid/view/View;

    iget-object v1, p1, Ls4/f;->u:Landroid/widget/TextView;

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v2, p0, Lr1/i;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lr1/i;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/CatchupModel;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lr1/i;->h:Ljava/lang/Object;

    check-cast p3, Ld5/q;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v3, v4, v5}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f060390

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p3, 0x7f06038b

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget p1, p0, Lr1/i;->e:I

    if-ne p2, p1, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06038e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060394

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public l(ILjava/util/List;)V
    .locals 0

    iput-object p2, p0, Lr1/i;->f:Ljava/lang/Object;

    iput p1, p0, Lr1/i;->e:I

    invoke-virtual {p0}, Lv1/y;->d()V

    return-void
.end method
