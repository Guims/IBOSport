.class public Landroidx/leanback/widget/PagingIndicator;
.super Landroid/view/View;


# static fields
.field public static final L:Landroid/view/animation/DecelerateInterpolator;

.field public static final M:Landroidx/leanback/widget/y;

.field public static final N:Landroidx/leanback/widget/y;

.field public static final O:Landroidx/leanback/widget/y;


# instance fields
.field public A:[I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public final F:Landroid/graphics/Paint;

.field public final G:Landroid/graphics/Paint;

.field public H:Landroid/graphics/Bitmap;

.field public I:Landroid/graphics/Paint;

.field public final J:Landroid/graphics/Rect;

.field public final K:F

.field public b:Z

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public x:[Landroidx/leanback/widget/z;

.field public y:[I

.field public z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->L:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroidx/leanback/widget/y;

    const-string v1, "alpha"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v3, v1, v2}, Landroidx/leanback/widget/y;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->M:Landroidx/leanback/widget/y;

    new-instance v0, Landroidx/leanback/widget/y;

    const-string v1, "diameter"

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroidx/leanback/widget/y;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->N:Landroidx/leanback/widget/y;

    new-instance v0, Landroidx/leanback/widget/y;

    const-string v1, "translation_x"

    const/4 v2, 0x2

    invoke-direct {v0, v3, v1, v2}, Landroidx/leanback/widget/y;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->O:Landroidx/leanback/widget/y;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Le0/a;->b:[I

    invoke-virtual {v1, v2, v6, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, 0x7f070463

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v6, 0x6

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Landroidx/leanback/widget/PagingIndicator;->r:I

    const/4 v6, 0x2

    mul-int/2addr v2, v6

    iput v2, v0, Landroidx/leanback/widget/PagingIndicator;->q:I

    const v7, 0x7f07045f

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Landroidx/leanback/widget/PagingIndicator;->u:I

    mul-int/2addr v7, v6

    iput v7, v0, Landroidx/leanback/widget/PagingIndicator;->t:I

    const v8, 0x7f070462

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v0, Landroidx/leanback/widget/PagingIndicator;->s:I

    const v8, 0x7f07045e

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v0, Landroidx/leanback/widget/PagingIndicator;->v:I

    const v8, 0x7f0600b0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Landroidx/leanback/widget/PagingIndicator;->F:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v8, 0x7f0600ae

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Landroidx/leanback/widget/PagingIndicator;->E:I

    iget-object v8, v0, Landroidx/leanback/widget/PagingIndicator;->I:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v11

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    const v1, 0x7f0600af

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v8, 0x7f070461

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Landroidx/leanback/widget/PagingIndicator;->w:I

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Landroidx/leanback/widget/PagingIndicator;->G:Landroid/graphics/Paint;

    const v12, 0x7f070460

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v8, v8

    int-to-float v5, v5

    invoke-virtual {v10, v8, v5, v5, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/PagingIndicator;->H:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v5, v0, Landroidx/leanback/widget/PagingIndicator;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v8, v0, Landroidx/leanback/widget/PagingIndicator;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v1, v3, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroidx/leanback/widget/PagingIndicator;->J:Landroid/graphics/Rect;

    iget-object v1, v0, Landroidx/leanback/widget/PagingIndicator;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v5, v7

    div-float/2addr v1, v5

    iput v1, v0, Landroidx/leanback/widget/PagingIndicator;->K:F

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    sget-object v10, Landroidx/leanback/widget/PagingIndicator;->M:Landroidx/leanback/widget/y;

    invoke-static {v8, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v12, 0xa7

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v14, Landroidx/leanback/widget/PagingIndicator;->L:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v7, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-float v2, v2

    new-array v15, v6, [F

    aput v2, v15, v3

    aput v5, v15, v11

    move/from16 v16, v3

    sget-object v3, Landroidx/leanback/widget/PagingIndicator;->N:Landroidx/leanback/widget/y;

    invoke-static {v8, v3, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move/from16 p1, v11

    const-wide/16 v11, 0x1a1

    invoke-virtual {v15, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v15, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator;->c()Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v11, v9, [Landroid/animation/Animator;

    aput-object v7, v11, v16

    aput-object v15, v11, p1

    aput-object v13, v11, v6

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v6, [F

    fill-array-data v11, :array_1

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v11, 0xa7

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v11, v6, [F

    aput v5, v11, v16

    aput v2, v11, p1

    invoke-static {v8, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v11, 0x1a1

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator;->c()Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v10, v5, v16

    aput-object v2, v5, p1

    aput-object v3, v5, v6

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v1, v2, v16

    aput-object v7, v2, p1

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->t:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->w:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getRequiredWidth()I
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->r:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->v:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    add-int/lit8 v0, v0, -0x3

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->s:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private setSelectedPage(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->D:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->D:I

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->D:I

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/leanback/widget/z;->b()V

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    aget-object v1, v1, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    iput v2, v1, Landroidx/leanback/widget/z;->h:F

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->z:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroidx/leanback/widget/z;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Landroidx/leanback/widget/z;->c:F

    iput v1, v0, Landroidx/leanback/widget/z;->d:F

    iget-object v1, v0, Landroidx/leanback/widget/z;->j:Landroidx/leanback/widget/PagingIndicator;

    iget v4, v1, Landroidx/leanback/widget/PagingIndicator;->t:I

    int-to-float v4, v4

    iput v4, v0, Landroidx/leanback/widget/z;->e:F

    iget v4, v1, Landroidx/leanback/widget/PagingIndicator;->u:I

    int-to-float v4, v4

    iput v4, v0, Landroidx/leanback/widget/z;->f:F

    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->K:F

    mul-float/2addr v4, v1

    iput v4, v0, Landroidx/leanback/widget/z;->g:F

    iput v3, v0, Landroidx/leanback/widget/z;->a:F

    invoke-virtual {v0}, Landroidx/leanback/widget/z;->a()V

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->D:I

    aget-object v0, v0, v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput v2, v0, Landroidx/leanback/widget/z;->h:F

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->y:[I

    aget v2, v2, v1

    int-to-float v2, v2

    iput v2, v0, Landroidx/leanback/widget/z;->d:F

    :goto_3
    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/leanback/widget/z;->b()V

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    aget-object v0, v0, v1

    iput v3, v0, Landroidx/leanback/widget/z;->h:F

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->A:[I

    aget v2, v2, v1

    int-to-float v2, v2

    iput v2, v0, Landroidx/leanback/widget/z;->d:F

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v3

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    new-array v4, v2, [I

    iput-object v4, p0, Landroidx/leanback/widget/PagingIndicator;->y:[I

    new-array v5, v2, [I

    iput-object v5, p0, Landroidx/leanback/widget/PagingIndicator;->z:[I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->A:[I

    iget-boolean v6, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    iget v7, p0, Landroidx/leanback/widget/PagingIndicator;->r:I

    iget v8, p0, Landroidx/leanback/widget/PagingIndicator;->v:I

    iget v9, p0, Landroidx/leanback/widget/PagingIndicator;->s:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, v7

    sub-int/2addr v3, v9

    add-int/2addr v3, v8

    aput v3, v4, v11

    add-int v3, v0, v7

    aput v3, v5, v11

    add-int/2addr v0, v7

    mul-int/lit8 v3, v9, 0x2

    sub-int/2addr v0, v3

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v3, v0

    aput v3, v2, v11

    :goto_0
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->y:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->z:[I

    add-int/lit8 v3, v10, -0x1

    aget v4, v2, v3

    add-int/2addr v4, v8

    aput v4, v0, v10

    aget v4, v2, v3

    add-int/2addr v4, v9

    aput v4, v2, v10

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->A:[I

    aget v0, v0, v3

    add-int/2addr v0, v8

    aput v0, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    sub-int v0, v3, v7

    add-int/2addr v0, v9

    sub-int/2addr v0, v8

    aput v0, v4, v11

    sub-int v0, v3, v7

    aput v0, v5, v11

    sub-int/2addr v3, v7

    mul-int/lit8 v0, v9, 0x2

    add-int/2addr v0, v3

    mul-int/lit8 v3, v8, 0x2

    sub-int/2addr v0, v3

    aput v0, v2, v11

    :goto_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->y:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->z:[I

    add-int/lit8 v3, v10, -0x1

    aget v4, v2, v3

    sub-int/2addr v4, v8

    aput v4, v0, v10

    aget v4, v2, v3

    sub-int/2addr v4, v9

    aput v4, v2, v10

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->A:[I

    aget v0, v0, v3

    sub-int/2addr v0, v8

    aput v0, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->u:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/PagingIndicator;->B:I

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->a()V

    return-void
.end method

.method public final c()Landroid/animation/ObjectAnimator;
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->v:I

    neg-int v0, v0

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->s:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    sget-object v2, Landroidx/leanback/widget/PagingIndicator;->O:Landroidx/leanback/widget/y;

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroidx/leanback/widget/PagingIndicator;->L:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDotSelectedLeftX()[I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->z:[I

    return-object v0
.end method

.method public getDotSelectedRightX()[I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->A:[I

    return-object v0
.end method

.method public getDotSelectedX()[I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->y:[I

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    aget-object v1, v1, v0

    iget v2, v1, Landroidx/leanback/widget/z;->d:F

    iget v3, v1, Landroidx/leanback/widget/z;->c:F

    add-float/2addr v2, v3

    iget-object v3, v1, Landroidx/leanback/widget/z;->j:Landroidx/leanback/widget/PagingIndicator;

    iget v4, v3, Landroidx/leanback/widget/PagingIndicator;->B:I

    iget-object v5, v3, Landroidx/leanback/widget/PagingIndicator;->G:Landroid/graphics/Paint;

    int-to-float v4, v4

    iget v6, v1, Landroidx/leanback/widget/z;->f:F

    iget-object v7, v3, Landroidx/leanback/widget/PagingIndicator;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, v1, Landroidx/leanback/widget/z;->a:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    iget v4, v1, Landroidx/leanback/widget/z;->b:I

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, v3, Landroidx/leanback/widget/PagingIndicator;->B:I

    int-to-float v4, v4

    iget v6, v1, Landroidx/leanback/widget/z;->f:F

    invoke-virtual {p1, v2, v4, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, v3, Landroidx/leanback/widget/PagingIndicator;->H:Landroid/graphics/Bitmap;

    iget-object v5, v3, Landroidx/leanback/widget/PagingIndicator;->J:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    iget v1, v1, Landroidx/leanback/widget/z;->g:F

    sub-float v7, v2, v1

    float-to-int v7, v7

    iget v8, v3, Landroidx/leanback/widget/PagingIndicator;->B:I

    int-to-float v8, v8

    sub-float v9, v8, v1

    float-to-int v9, v9

    add-float/2addr v2, v1

    float-to-int v2, v2

    add-float/2addr v8, v1

    float-to-int v1, v8

    invoke-direct {v6, v7, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v3, Landroidx/leanback/widget/PagingIndicator;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredWidth()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    if-eq v1, p1, :cond_3

    iput-boolean p1, p0, Landroidx/leanback/widget/PagingIndicator;->b:Z

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->H:Landroid/graphics/Bitmap;

    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    if-eqz p1, :cond_2

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    iget-object v3, v2, Landroidx/leanback/widget/z;->j:Landroidx/leanback/widget/PagingIndicator;

    iget-boolean v3, v3, Landroidx/leanback/widget/PagingIndicator;->b:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    :goto_2
    iput v3, v2, Landroidx/leanback/widget/z;->i:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->b()V

    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->E:I

    return-void
.end method

.method public setArrowColor(I)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->I:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->I:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->I:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPageCount(I)V
    .locals 3

    if-lez p1, :cond_1

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    new-array p1, p1, [Landroidx/leanback/widget/z;

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->C:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->x:[Landroidx/leanback/widget/z;

    new-instance v2, Landroidx/leanback/widget/z;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/z;-><init>(Landroidx/leanback/widget/PagingIndicator;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->b()V

    invoke-direct {p0, p1}, Landroidx/leanback/widget/PagingIndicator;->setSelectedPage(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The page count should be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
