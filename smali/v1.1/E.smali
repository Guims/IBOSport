.class public final Lv1/E;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv1/G;


# direct methods
.method public synthetic constructor <init>(Lv1/G;I)V
    .locals 0

    iput p2, p0, Lv1/E;->a:I

    iput-object p1, p0, Lv1/E;->b:Lv1/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lv1/E;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv1/H;

    iget-object v1, p0, Lv1/E;->b:Lv1/G;

    invoke-virtual {v1, p1}, Lv1/G;->A(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv1/H;

    iget-object v1, p0, Lv1/E;->b:Lv1/G;

    invoke-virtual {v1, p1}, Lv1/G;->F(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Lv1/E;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv1/H;

    iget-object v1, p0, Lv1/E;->b:Lv1/G;

    invoke-virtual {v1, p1}, Lv1/G;->G(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    sub-int/2addr p1, v0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv1/H;

    iget-object v1, p0, Lv1/E;->b:Lv1/G;

    invoke-virtual {v1, p1}, Lv1/G;->C(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lv1/E;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv1/E;->b:Lv1/G;

    iget v1, v0, Lv1/G;->o:I

    invoke-virtual {v0}, Lv1/G;->J()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lv1/E;->b:Lv1/G;

    iget v1, v0, Lv1/G;->n:I

    invoke-virtual {v0}, Lv1/G;->L()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lv1/E;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv1/E;->b:Lv1/G;

    invoke-virtual {v0}, Lv1/G;->M()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lv1/E;->b:Lv1/G;

    invoke-virtual {v0}, Lv1/G;->K()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
