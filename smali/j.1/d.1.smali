.class public final Lj/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj/d;->b:I

    iput-object p2, p0, Lj/d;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget v0, p0, Lj/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj/d;->q:Ljava/lang/Object;

    check-cast v0, Lk/K;

    iget-object v1, v0, Lk/K;->V:Lk/N;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lk/K;->T:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lk/K;->r()V

    invoke-virtual {v0}, Lk/A0;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lk/A0;->dismiss()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lj/d;->q:Ljava/lang/Object;

    check-cast v0, Lk/N;

    invoke-virtual {v0}, Lk/N;->getInternalPopup()Lk/M;

    move-result-object v1

    invoke-interface {v1}, Lk/M;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lk/N;->u:Lk/M;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lk/M;->l(II)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lj/d;->q:Ljava/lang/Object;

    check-cast v0, Lj/D;

    iget-object v1, v0, Lj/D;->w:Lk/F0;

    invoke-virtual {v0}, Lj/D;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lk/A0;->N:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lj/D;->B:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lk/A0;->g()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lj/D;->dismiss()V

    :cond_5
    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lj/d;->q:Ljava/lang/Object;

    check-cast v0, Lj/g;

    iget-object v1, v0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lj/g;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/f;

    iget-object v3, v3, Lj/f;->a:Lk/F0;

    iget-boolean v3, v3, Lk/A0;->N:Z

    if-nez v3, :cond_8

    iget-object v3, v0, Lj/g;->D:Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lj/f;

    iget-object v3, v3, Lj/f;->a:Lk/F0;

    invoke-virtual {v3}, Lk/A0;->g()V

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lj/g;->dismiss()V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
