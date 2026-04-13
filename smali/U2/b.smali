.class public final LU2/b;
.super Lv1/s;


# instance fields
.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LU2/b;->q:I

    invoke-direct {p0, p1}, Lv1/s;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, LU2/b;->q:I

    invoke-direct {p0, p2}, Lv1/s;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;I)I
    .locals 1

    iget v0, p0, LU2/b;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lv1/s;->b(Landroid/view/View;I)I

    move-result p1

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/view/View;I)I
    .locals 1

    iget v0, p0, LU2/b;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lv1/s;->c(Landroid/view/View;I)I

    move-result p1

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, LU2/b;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lv1/s;->d(Landroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    :pswitch_0
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public f(I)Landroid/graphics/PointF;
    .locals 1

    iget v0, p0, LU2/b;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lv1/s;->f(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
