.class public final Lr1/d;
.super Landroid/view/View;

# interfaces
.implements Lr1/J;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:Ljava/lang/StringBuilder;

.field public final K:Ljava/util/Formatter;

.field public final L:LB4/l;

.field public final M:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final N:Landroid/graphics/Point;

.field public final O:F

.field public P:I

.field public Q:J

.field public R:I

.field public S:Landroid/graphics/Rect;

.field public final T:Landroid/animation/ValueAnimator;

.field public U:F

.field public V:Z

.field public W:Z

.field public a0:J

.field public final b:Landroid/graphics/Rect;

.field public b0:J

.field public c0:J

.field public d0:J

.field public e0:I

.field public f0:[J

.field public g0:[Z

.field public final q:Landroid/graphics/Rect;

.field public final r:Landroid/graphics/Rect;

.field public final s:Landroid/graphics/Rect;

.field public final t:Landroid/graphics/Paint;

.field public final u:Landroid/graphics/Paint;

.field public final v:Landroid/graphics/Paint;

.field public final w:Landroid/graphics/Paint;

.field public final x:Landroid/graphics/Paint;

.field public final y:Landroid/graphics/Paint;

.field public final z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v1, Lr1/d;->b:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v1, Lr1/d;->q:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v1, Lr1/d;->r:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v1, Lr1/d;->s:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v1, Lr1/d;->t:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v1, Lr1/d;->u:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v1, Lr1/d;->v:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v1, Lr1/d;->w:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v1, Lr1/d;->x:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v1, Lr1/d;->y:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v12, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v12, v1, Lr1/d;->M:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    iput-object v12, v1, Lr1/d;->N:Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    iput v12, v1, Lr1/d;->O:F

    const/16 v13, -0x32

    invoke-static {v13, v12}, Lr1/d;->a(IF)I

    move-result v13

    iput v13, v1, Lr1/d;->I:I

    const/4 v13, 0x4

    invoke-static {v13, v12}, Lr1/d;->a(IF)I

    move-result v14

    const/16 v15, 0x1a

    invoke-static {v15, v12}, Lr1/d;->a(IF)I

    move-result v15

    invoke-static {v13, v12}, Lr1/d;->a(IF)I

    move-result v2

    const/16 v13, 0xc

    invoke-static {v13, v12}, Lr1/d;->a(IF)I

    move-result v11

    invoke-static {v3, v12}, Lr1/d;->a(IF)I

    move-result v13

    const/16 v3, 0x10

    invoke-static {v3, v12}, Lr1/d;->a(IF)I

    move-result v3

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v12, Lr1/C;->b:[I

    move-object/from16 v18, v9

    const v9, 0x7f14013d

    move-object/from16 v19, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v12, v8, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    sget v8, Lk0/C;->a:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    if-lt v8, v9, :cond_0

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lr1/d;->A:I

    const/16 v0, 0xc

    invoke-virtual {v4, v0, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lr1/d;->B:I

    const/4 v0, 0x2

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v1, Lr1/d;->C:I

    const/4 v0, 0x1

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lr1/d;->D:I

    const/16 v0, 0xb

    invoke-virtual {v4, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lr1/d;->E:I

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lr1/d;->F:I

    const/16 v0, 0x9

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lr1/d;->G:I

    const/4 v0, 0x6

    const/4 v2, -0x1

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v3, 0x7

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const v3, -0x33000001    # -1.3421772E8f

    const/4 v8, 0x4

    invoke-virtual {v4, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v8, 0xd

    const v9, 0x33ffffff

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    const v11, -0x4d000100

    invoke-virtual {v4, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/4 v11, 0x5

    const v12, 0x33ffff00

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v8, v18

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_3
    move-object v0, v8

    move-object v8, v9

    iput v14, v1, Lr1/d;->A:I

    iput v15, v1, Lr1/d;->B:I

    const/4 v9, 0x0

    iput v9, v1, Lr1/d;->C:I

    iput v2, v1, Lr1/d;->D:I

    iput v11, v1, Lr1/d;->E:I

    iput v13, v1, Lr1/d;->F:I

    iput v3, v1, Lr1/d;->G:I

    const/4 v2, -0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v3, -0x33000001    # -1.3421772E8f

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v9, 0x33ffffff

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    const v11, -0x4d000100

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    const v12, 0x33ffff00

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    iput-object v0, v1, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lr1/d;->J:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, v1, Lr1/d;->K:Ljava/util/Formatter;

    new-instance v0, LB4/l;

    const/16 v2, 0x19

    invoke-direct {v0, v2, v1}, LB4/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, v1, Lr1/d;->L:LB4/l;

    iget-object v0, v1, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    const/16 v17, 0x2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lr1/d;->H:I

    goto :goto_4

    :cond_4
    const/16 v16, 0x1

    const/16 v17, 0x2

    iget v0, v1, Lr1/d;->F:I

    iget v2, v1, Lr1/d;->E:I

    iget v3, v1, Lr1/d;->G:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lr1/d;->H:I

    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lr1/d;->U:F

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v1, Lr1/d;->T:Landroid/animation/ValueAnimator;

    new-instance v2, Ll3/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ll3/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v1, Lr1/d;->b0:J

    iput-wide v2, v1, Lr1/d;->Q:J

    const/16 v0, 0x14

    iput v0, v1, Lr1/d;->P:I

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method public static a(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getPositionIncrement()J
    .locals 5

    iget-wide v0, p0, Lr1/d;->Q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lr1/d;->b0:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v2, p0, Lr1/d;->P:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lr1/d;->K:Ljava/util/Formatter;

    iget-wide v1, p0, Lr1/d;->c0:J

    iget-object v3, p0, Lr1/d;->J:Ljava/lang/StringBuilder;

    invoke-static {v3, v0, v1, v2}, Lk0/C;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrubberPosition()J
    .locals 5

    iget-object v0, p0, Lr1/d;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    iget-wide v1, p0, Lr1/d;->b0:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr1/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lr1/d;->b0:J

    mul-long/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public final b(J)Z
    .locals 8

    iget-wide v4, p0, Lr1/d;->b0:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lr1/d;->W:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lr1/d;->a0:J

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lr1/d;->c0:J

    goto :goto_0

    :goto_1
    add-long v0, v6, p1

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lk0/C;->j(JJJ)J

    move-result-wide p1

    cmp-long v0, p1, v6

    if-nez v0, :cond_2

    :goto_2
    const/4 p1, 0x0

    return p1

    :cond_2
    iget-boolean v0, p0, Lr1/d;->W:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lr1/d;->c(J)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1, p2}, Lr1/d;->f(J)V

    :goto_3
    invoke-virtual {p0}, Lr1/d;->e()V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(J)V
    .locals 6

    iput-wide p1, p0, Lr1/d;->a0:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/d;->W:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v1, p0, Lr1/d;->M:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr1/I;

    check-cast v2, Lr1/f;

    iget-object v2, v2, Lr1/f;->b:Lr1/r;

    iput-boolean v0, v2, Lr1/r;->E0:Z

    iget-object v3, v2, Lr1/r;->S:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v4, v2, Lr1/r;->U:Ljava/lang/StringBuilder;

    iget-object v5, v2, Lr1/r;->V:Ljava/util/Formatter;

    invoke-static {v4, v5, p1, p2}, Lk0/C;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v2, Lr1/r;->b:Lr1/w;

    invoke-virtual {v2}, Lr1/w;->f()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d(Z)V
    .locals 12

    iget-object v0, p0, Lr1/d;->L:LB4/l;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr1/d;->W:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lr1/d;->M:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr1/I;

    iget-wide v3, p0, Lr1/d;->a0:J

    check-cast v2, Lr1/f;

    iget-object v2, v2, Lr1/f;->b:Lr1/r;

    iput-boolean v0, v2, Lr1/r;->E0:Z

    if-nez p1, :cond_5

    iget-object v5, v2, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v5, :cond_5

    iget-boolean v6, v2, Lr1/r;->D0:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x11

    invoke-interface {v5, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    move v8, v0

    :goto_1
    iget-object v9, v2, Lr1/r;->a0:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v6, v8, v9}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v9

    cmp-long v11, v3, v9

    if-gez v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v7, -0x1

    if-ne v8, v11, :cond_2

    move-wide v3, v9

    :goto_2
    invoke-interface {v5, v8, v3, v4}, Landroidx/media3/common/Player;->seekTo(IJ)V

    goto :goto_3

    :cond_2
    sub-long/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5, v3, v4}, Landroidx/media3/common/Player;->seekTo(J)V

    :cond_4
    :goto_3
    invoke-virtual {v2}, Lr1/r;->o()V

    :cond_5
    iget-object v2, v2, Lr1/r;->b:Lr1/w;

    invoke-virtual {v2}, Lr1/w;->g()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 9

    iget-object v0, p0, Lr1/d;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lr1/d;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lr1/d;->s:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lr1/d;->W:Z

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lr1/d;->a0:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lr1/d;->c0:J

    :goto_0
    iget-wide v5, p0, Lr1/d;->b0:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-long v5, v5

    iget-wide v7, p0, Lr1/d;->d0:J

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lr1/d;->b0:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v5, v0

    mul-long/2addr v5, v3

    iget-wide v3, p0, Lr1/d;->b0:J

    div-long/2addr v5, v3

    long-to-int v0, v5

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v0, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v0, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final f(J)V
    .locals 4

    iget-wide v0, p0, Lr1/d;->a0:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-wide p1, p0, Lr1/d;->a0:J

    iget-object v0, p0, Lr1/d;->M:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr1/I;

    check-cast v1, Lr1/f;

    iget-object v1, v1, Lr1/f;->b:Lr1/r;

    iget-object v2, v1, Lr1/r;->S:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lr1/r;->U:Ljava/lang/StringBuilder;

    iget-object v1, v1, Lr1/r;->V:Ljava/util/Formatter;

    invoke-static {v3, v1, p1, p2}, Lk0/C;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getPreferredUpdateDelay()J
    .locals 5

    iget-object v0, p0, Lr1/d;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lr1/d;->O:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lr1/d;->b0:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v7, v0, Lr1/d;->q:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int v8, v2, v3

    add-int v9, v8, v1

    iget-wide v1, v0, Lr1/d;->b0:J

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    iget-object v6, v0, Lr1/d;->v:Landroid/graphics/Paint;

    iget-object v12, v0, Lr1/d;->s:Landroid/graphics/Rect;

    if-gtz v1, :cond_0

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    int-to-float v3, v8

    iget v1, v7, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    int-to-float v5, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lr1/d;->r:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->right:I

    iget v1, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v7, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_1

    int-to-float v1, v1

    int-to-float v3, v8

    int-to-float v4, v2

    int-to-float v5, v9

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget v1, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v14, v1, :cond_2

    int-to-float v2, v1

    int-to-float v3, v8

    int-to-float v4, v14

    int-to-float v5, v9

    iget-object v6, v0, Lr1/d;->u:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    int-to-float v3, v8

    iget v1, v12, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    int-to-float v5, v9

    iget-object v6, v0, Lr1/d;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget v1, v0, Lr1/d;->e0:I

    if-nez v1, :cond_5

    :cond_4
    move-object/from16 v1, p1

    goto :goto_3

    :cond_5
    iget-object v13, v0, Lr1/d;->f0:[J

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lr1/d;->g0:[Z

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v0, Lr1/d;->D:I

    div-int/lit8 v16, v15, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Lr1/d;->e0:I

    if-ge v2, v3, :cond_4

    aget-wide v17, v13, v2

    const-wide/16 v19, 0x0

    iget-wide v3, v0, Lr1/d;->b0:J

    move-wide/from16 v21, v3

    invoke-static/range {v17 .. v22}, Lk0/C;->j(JJJ)J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v3

    iget-wide v3, v0, Lr1/d;->b0:J

    div-long/2addr v5, v3

    long-to-int v3, v5

    sub-int v3, v3, v16

    iget v4, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v4

    aget-boolean v4, v14, v2

    if-eqz v4, :cond_6

    iget-object v4, v0, Lr1/d;->x:Landroid/graphics/Paint;

    :goto_1
    move-object v6, v4

    move v4, v2

    goto :goto_2

    :cond_6
    iget-object v4, v0, Lr1/d;->w:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    int-to-float v2, v3

    move v5, v3

    int-to-float v3, v8

    add-int/2addr v5, v15

    int-to-float v5, v5

    move/from16 v17, v4

    move v4, v5

    int-to-float v5, v9

    move/from16 v18, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v17, 0x1

    move/from16 v1, v18

    goto :goto_0

    :goto_3
    iget-wide v2, v0, Lr1/d;->b0:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_7

    goto :goto_6

    :cond_7
    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3, v4}, Lk0/C;->i(III)I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, v0, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lr1/d;->W:Z

    if-nez v4, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v0, Lr1/d;->E:I

    goto :goto_5

    :cond_9
    iget v4, v0, Lr1/d;->F:I

    goto :goto_5

    :cond_a
    :goto_4
    iget v4, v0, Lr1/d;->G:I

    :goto_5
    int-to-float v4, v4

    iget v5, v0, Lr1/d;->U:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, v0, Lr1/d;->y:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lr1/d;->U:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lr1/d;->U:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v7, v2, v5

    div-int/lit8 v6, v6, 0x2

    sub-int v8, v3, v6

    add-int/2addr v2, v5

    add-int/2addr v3, v6

    invoke-virtual {v4, v7, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lr1/d;->W:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr1/d;->d(Z)V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lr1/d;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "android.widget.SeekBar"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.SeekBar"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lr1/d;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lr1/d;->b0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lr1/d;->getPositionIncrement()J

    move-result-wide v0

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-long v0, v0

    :pswitch_1
    invoke-virtual {p0, v0, v1}, Lr1/d;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lr1/d;->L:LB4/l;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lr1/d;->W:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr1/d;->d(Z)V

    return v3

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    iget-boolean p3, p0, Lr1/d;->V:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    iget p3, p0, Lr1/d;->H:I

    :goto_0
    iget v1, p0, Lr1/d;->C:I

    const/4 v2, 0x1

    iget v3, p0, Lr1/d;->A:I

    iget v4, p0, Lr1/d;->B:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, p5, v1

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v2, p5, v2

    sub-int/2addr v2, v3

    div-int/lit8 v5, v3, 0x2

    sub-int v5, p3, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_1

    :cond_1
    sub-int v1, p5, v4

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p5, v3

    div-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/2addr v4, v1

    iget-object v5, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v5, p1, v1, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p3

    iget p2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p3

    add-int/2addr v3, v2

    iget-object p3, p0, Lr1/d;->q:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, v2, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget p1, Lk0/C;->a:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lr1/d;->S:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ne p1, p4, :cond_2

    iget-object p1, p0, Lr1/d;->S:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p1, p5, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lr1/d;->S:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/lifecycle/D;->t(Lr1/d;Ljava/util/List;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lr1/d;->e()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v1, p0, Lr1/d;->B:I

    if-nez v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 3

    iget-object v0, p0, Lr1/d;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v1, Lk0/C;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lr1/d;->b0:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lr1/d;->N:Landroid/graphics/Point;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Point;->set(II)V

    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iget-object v4, p0, Lr1/d;->q:Landroid/graphics/Rect;

    iget-object v5, p0, Lr1/d;->s:Landroid/graphics/Rect;

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    const/4 v7, 0x3

    if-eq v3, v6, :cond_3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_3

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lr1/d;->W:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lr1/d;->I:I

    if-ge v2, p1, :cond_2

    iget p1, p0, Lr1/d;->R:I

    sub-int/2addr v0, p1

    div-int/2addr v0, v7

    add-int/2addr v0, p1

    int-to-float p1, v0

    float-to-int p1, p1

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0, v1}, Lk0/C;->i(III)I

    move-result p1

    iput p1, v5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lr1/d;->R:I

    int-to-float p1, v0

    float-to-int p1, p1

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0, v1}, Lk0/C;->i(III)I

    move-result p1

    iput p1, v5, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-direct {p0}, Lr1/d;->getScrubberPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lr1/d;->f(J)V

    invoke-virtual {p0}, Lr1/d;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v6

    :cond_3
    iget-boolean v0, p0, Lr1/d;->W:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v7, :cond_4

    move v1, v6

    :cond_4
    invoke-virtual {p0, v1}, Lr1/d;->d(Z)V

    return v6

    :cond_5
    int-to-float p1, v0

    int-to-float v0, v2

    float-to-int p1, p1

    float-to-int v0, v0

    iget-object v2, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0, v1}, Lk0/C;->i(III)I

    move-result p1

    iput p1, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lr1/d;->getScrubberPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lr1/d;->c(J)V

    invoke-virtual {p0}, Lr1/d;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v6

    :cond_6
    :goto_1
    return v1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lr1/d;->b0:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    const/4 v1, 0x0

    if-gtz p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x2000

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lr1/d;->getPositionIncrement()J

    move-result-wide p1

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lr1/d;->b(J)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lr1/d;->d(Z)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x1000

    if-ne p1, p2, :cond_4

    invoke-direct {p0}, Lr1/d;->getPositionIncrement()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lr1/d;->b(J)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lr1/d;->d(Z)V

    :cond_3
    :goto_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v0

    :cond_4
    return v1
.end method

.method public setAdMarkerColor(I)V
    .locals 1

    iget-object v0, p0, Lr1/d;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedColor(I)V
    .locals 1

    iget-object v0, p0, Lr1/d;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 2

    iget-wide v0, p0, Lr1/d;->d0:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lr1/d;->d0:J

    invoke-virtual {p0}, Lr1/d;->e()V

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    iget-wide v0, p0, Lr1/d;->b0:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lr1/d;->b0:J

    iget-boolean v0, p0, Lr1/d;->W:Z

    if-eqz v0, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr1/d;->d(Z)V

    :cond_1
    invoke-virtual {p0}, Lr1/d;->e()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lr1/d;->W:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr1/d;->d(Z)V

    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    iput p1, p0, Lr1/d;->P:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr1/d;->Q:J

    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lr1/d;->P:I

    iput-wide p1, p0, Lr1/d;->Q:J

    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .locals 1

    iget-object v0, p0, Lr1/d;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPlayedColor(I)V
    .locals 1

    iget-object v0, p0, Lr1/d;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPosition(J)V
    .locals 2

    iget-wide v0, p0, Lr1/d;->c0:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lr1/d;->c0:J

    invoke-direct {p0}, Lr1/d;->getProgressText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lr1/d;->e()V

    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1

    iget-object v0, p0, Lr1/d;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setUnplayedColor(I)V
    .locals 1

    iget-object v0, p0, Lr1/d;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lr1/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
