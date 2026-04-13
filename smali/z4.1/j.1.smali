.class public final synthetic Lz4/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lz4/j;->b:I

    iput-object p2, p0, Lz4/j;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget p1, p0, Lz4/j;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/j;->q:Ljava/lang/Object;

    check-cast p1, Ll3/j;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Ll3/j;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-ltz p2, :cond_0

    const-wide/16 v4, 0x12c

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    :cond_0
    iput-boolean v0, p1, Ll3/j;->m:Z

    :cond_1
    invoke-virtual {p1}, Ll3/j;->t()V

    iput-boolean v1, p1, Ll3/j;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Ll3/j;->o:J

    :cond_2
    return v0

    :pswitch_0
    iget-object p1, p0, Lz4/j;->q:Ljava/lang/Object;

    check-cast p1, Lz4/k;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f06008b

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lz4/k;->A0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object p2, p1, Lz4/k;->A0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060091

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, v1, :cond_5

    iget-object p2, p1, Lz4/k;->A0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p1, Lz4/k;->I0:Lib/player/pages/series/l;

    iget-object p2, p2, Lib/player/pages/series/l;->q:Lib/player/pages/series/SeriesMobilePlayerActivity;

    invoke-virtual {p2}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_5
    move v1, v0

    :goto_0
    return v1

    :pswitch_1
    iget-object p1, p0, Lz4/j;->q:Ljava/lang/Object;

    check-cast p1, Lz4/k;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f06038b

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lz4/k;->B0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object p2, p1, Lz4/k;->B0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060091

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, v1, :cond_8

    iget-object p2, p1, Lz4/k;->B0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_8
    move v1, v0

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
