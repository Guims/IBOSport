.class public final synthetic Ls4/C;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Lv1/y;

.field public final synthetic s:Lv1/X;

.field public final synthetic t:Lio/realm/O;


# direct methods
.method public synthetic constructor <init>(Lv1/y;Lv1/X;Lio/realm/O;II)V
    .locals 0

    iput p5, p0, Ls4/C;->b:I

    iput-object p1, p0, Ls4/C;->r:Lv1/y;

    iput-object p2, p0, Ls4/C;->s:Lv1/X;

    iput-object p3, p0, Ls4/C;->t:Lio/realm/O;

    iput p4, p0, Ls4/C;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget p1, p0, Ls4/C;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ls4/C;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p0, Ls4/C;->s:Lv1/X;

    check-cast v0, Ls4/H;

    iget-object v1, v0, Ls4/H;->u:Landroid/widget/TextView;

    iget-object v0, v0, Ls4/H;->v:Landroid/widget/ImageView;

    iget-object v2, p0, Ls4/C;->t:Lio/realm/O;

    check-cast v2, Lib/player/models/MovieModel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const v3, 0x3f733333    # 0.95f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    const v3, 0x7f080236

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0x7f080239

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v3, :cond_1

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v6, :cond_2

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    iget p2, p0, Ls4/C;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, p2, v0}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return v5

    :pswitch_0
    iget-object p1, p0, Ls4/C;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p0, Ls4/C;->s:Lv1/X;

    check-cast v0, Ls4/E;

    iget-object v1, v0, Ls4/E;->u:Landroid/widget/TextView;

    iget-object v0, v0, Ls4/E;->v:Landroid/widget/ImageView;

    iget-object v2, p0, Ls4/C;->t:Lio/realm/O;

    check-cast v2, Lib/player/models/SeriesModel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    const v3, 0x3f733333    # 0.95f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    const v3, 0x7f080236

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0x7f080239

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v3, :cond_4

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    move v5, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v6, :cond_5

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    iget p2, p0, Ls4/C;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, p2, v0}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return v5

    :pswitch_1
    iget-object p1, p0, Ls4/C;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p0, Ls4/C;->s:Lv1/X;

    check-cast v0, Ls4/D;

    iget-object v1, v0, Ls4/D;->u:Landroid/widget/TextView;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    iget-object v2, p0, Ls4/C;->t:Lio/realm/O;

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_6

    const v3, 0x3f733333    # 0.95f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    const v3, 0x7f08023b

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0x7f080238

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v3, :cond_7

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    move v5, v6

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v6, :cond_8

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    iget p2, p0, Ls4/C;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, p2, v0}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
