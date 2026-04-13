.class public final Ls4/o;
.super Lv1/y;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:Ld5/p;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ls4/o;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILd5/p;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls4/o;->d:I

    invoke-direct {p0}, Lv1/y;-><init>()V

    iput-object p1, p0, Ls4/o;->e:Ljava/lang/Object;

    iput p2, p0, Ls4/o;->f:I

    iput-object p3, p0, Ls4/o;->g:Ld5/p;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ls4/o;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls4/o;->e:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Ls4/o;->e:Ljava/lang/Object;

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
    iget-object v0, p0, Ls4/o;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lv1/X;I)V
    .locals 4

    iget v0, p0, Ls4/o;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ls4/N;

    iget-object v0, p1, Ls4/N;->u:Landroid/widget/ImageView;

    iget-object v1, p1, Ls4/N;->v:Landroid/widget/ImageView;

    iget-object v2, p0, Ls4/o;->e:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    new-instance v2, Lr1/h;

    const/4 v3, 0x6

    invoke-direct {v2, p0, p2, v3}, Lr1/h;-><init>(Lv1/y;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ls4/e;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p1, p2, v3}, Ls4/e;-><init>(Lv1/y;Lv1/X;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget p1, p0, Ls4/o;->f:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ls4/p;

    iget-object v0, p1, Ls4/p;->u:Landroid/widget/CheckedTextView;

    iget-object v1, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v2, p0, Ls4/o;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Ls4/o;->f:I

    if-ne v2, p2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const v0, 0x7f0801c5

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_1
    new-instance v0, Lr1/h;

    const/4 v2, 0x4

    invoke-direct {v0, p0, p2, v2}, Lr1/h;-><init>(Lv1/y;II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ll3/a;

    const/4 v0, 0x4

    invoke-direct {p2, v0, p1}, Ll3/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :pswitch_1
    check-cast p1, Ls4/n;

    iget-object v0, p1, Ls4/n;->u:Landroid/widget/CheckedTextView;

    iget-object v1, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v2, p0, Ls4/o;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/LanguageModel;

    invoke-virtual {v2}, Lib/player/models/LanguageModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Ls4/o;->f:I

    if-ne v2, p2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    new-instance v0, Lr1/h;

    const/4 v2, 0x3

    invoke-direct {v0, p0, p2, v2}, Lr1/h;-><init>(Lv1/y;II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ll3/a;

    invoke-direct {v0, v2, p1}, Ll3/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget p1, p0, Ls4/o;->f:I

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    iget p2, p0, Ls4/o;->d:I

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ls4/N;

    const v0, 0x7f0e0075

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b01dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/N;->u:Landroid/widget/ImageView;

    const v0, 0x7f0b01dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/N;->v:Landroid/widget/ImageView;

    return-object p2

    :pswitch_0
    new-instance p2, Ls4/p;

    const v0, 0x7f0e0069

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p2, Ls4/p;->u:Landroid/widget/CheckedTextView;

    return-object p2

    :pswitch_1
    new-instance p2, Ls4/n;

    const v0, 0x7f0e0069

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p2, Ls4/n;->u:Landroid/widget/CheckedTextView;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
