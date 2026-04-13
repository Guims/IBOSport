.class public final LA4/o;
.super Lv1/y;


# instance fields
.field public d:Ljava/util/List;

.field public e:LA4/g;

.field public f:LA4/h;

.field public g:LA4/h;

.field public h:I


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LA4/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g(Lv1/X;I)V
    .locals 11

    check-cast p1, LA4/n;

    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v1, p0, LA4/o;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/BaseModel;

    invoke-interface {v1}, Lib/player/models/BaseModel;->getImage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lib/player/models/BaseModel;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, LA4/n;->u:Landroid/widget/ImageView;

    invoke-interface {v1}, Lib/player/models/BaseModel;->getImage()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x3e8

    const/16 v10, 0x28

    const v6, 0x7f0801de

    const v7, 0x7f0801dd

    const/16 v8, 0x29e

    invoke-static/range {v3 .. v10}, LQ5/d;->m(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIII)V

    goto :goto_0

    :cond_0
    iget-object v2, p1, LA4/n;->u:Landroid/widget/ImageView;

    const v3, 0x7f0801dd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    new-instance v2, LA4/l;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v1, v3}, LA4/l;-><init>(Lv1/y;ILjava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, LA4/m;

    invoke-direct {v2, p0, p2, p1, v1}, LA4/m;-><init>(LA4/o;ILA4/n;Lib/player/models/BaseModel;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    new-instance p2, LA4/n;

    const v0, 0x7f0e0076

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, LA4/n;->u:Landroid/widget/ImageView;

    return-object p2
.end method
