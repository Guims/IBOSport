.class public Lk/A0;
.super Ljava/lang/Object;

# interfaces
.implements Lj/C;


# static fields
.field public static final P:Ljava/lang/reflect/Method;

.field public static final Q:Ljava/lang/reflect/Method;


# instance fields
.field public A:I

.field public final B:I

.field public C:Lk/x0;

.field public D:Landroid/view/View;

.field public E:Landroid/widget/AdapterView$OnItemClickListener;

.field public F:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final G:Lk/w0;

.field public final H:Lk/z0;

.field public final I:Lk/y0;

.field public final J:Lk/w0;

.field public final K:Landroid/os/Handler;

.field public final L:Landroid/graphics/Rect;

.field public M:Landroid/graphics/Rect;

.field public N:Z

.field public final O:Lk/y;

.field public final b:Landroid/content/Context;

.field public q:Landroid/widget/ListAdapter;

.field public r:Lk/o0;

.field public final s:I

.field public t:I

.field public u:I

.field public v:I

.field public final w:I

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ListPopupWindow"

    const-class v1, Landroid/widget/PopupWindow;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_0

    :try_start_0
    const-string v2, "setClipToScreenEnabled"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lk/A0;->P:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v2, "setEpicenterBounds"

    const-class v3, Landroid/graphics/Rect;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lk/A0;->Q:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x2

    iput p4, p0, Lk/A0;->s:I

    iput p4, p0, Lk/A0;->t:I

    const/16 p4, 0x3ea

    iput p4, p0, Lk/A0;->w:I

    const/4 p4, 0x0

    iput p4, p0, Lk/A0;->A:I

    const v0, 0x7fffffff

    iput v0, p0, Lk/A0;->B:I

    new-instance v0, Lk/w0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lk/w0;-><init>(Lk/A0;I)V

    iput-object v0, p0, Lk/A0;->G:Lk/w0;

    new-instance v0, Lk/z0;

    invoke-direct {v0, p0}, Lk/z0;-><init>(Lk/A0;)V

    iput-object v0, p0, Lk/A0;->H:Lk/z0;

    new-instance v0, Lk/y0;

    invoke-direct {v0, p0}, Lk/y0;-><init>(Lk/A0;)V

    iput-object v0, p0, Lk/A0;->I:Lk/y0;

    new-instance v0, Lk/w0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk/w0;-><init>(Lk/A0;I)V

    iput-object v0, p0, Lk/A0;->J:Lk/w0;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lk/A0;->L:Landroid/graphics/Rect;

    iput-object p1, p0, Lk/A0;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lk/A0;->K:Landroid/os/Handler;

    sget-object v0, Le/a;->o:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lk/A0;->u:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lk/A0;->v:I

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lk/A0;->x:Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lk/y;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v2, Le/a;->s:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {v0, p3}, LP/l;->c(Landroid/widget/PopupWindow;Z)V

    :cond_1
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p4, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1, p3}, LE2/g;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v0, p0, Lk/A0;->O:Lk/y;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lk/A0;->O:Lk/y;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lk/A0;->u:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lk/A0;->u:I

    return-void
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lk/A0;->O:Lk/y;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lk/A0;->r:Lk/o0;

    iget-object v0, p0, Lk/A0;->K:Landroid/os/Handler;

    iget-object v1, p0, Lk/A0;->G:Lk/w0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lk/A0;->O:Lk/y;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 13

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    iget-object v1, p0, Lk/A0;->b:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lk/A0;->O:Lk/y;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lk/A0;->N:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lk/A0;->p(Landroid/content/Context;Z)Lk/o0;

    move-result-object v0

    iput-object v0, p0, Lk/A0;->r:Lk/o0;

    iget-object v4, p0, Lk/A0;->q:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    iget-object v4, p0, Lk/A0;->E:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    new-instance v4, LD4/u;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p0}, LD4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    iget-object v4, p0, Lk/A0;->I:Lk/y0;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lk/A0;->F:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v4, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lk/A0;->L:Landroid/graphics/Rect;

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iget-boolean v7, p0, Lk/A0;->x:Z

    if-nez v7, :cond_3

    neg-int v0, v0

    iput v0, p0, Lk/A0;->v:I

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v5

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    iget-object v8, p0, Lk/A0;->D:Landroid/view/View;

    iget v9, p0, Lk/A0;->v:I

    invoke-static {v3, v8, v9, v0}, Lk/u0;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v0

    iget v8, p0, Lk/A0;->s:I

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    add-int/2addr v0, v6

    goto :goto_5

    :cond_5
    iget v11, p0, Lk/A0;->t:I

    if-eq v11, v9, :cond_7

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v10, :cond_6

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v4

    sub-int/2addr v1, v11

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v4

    sub-int/2addr v1, v11

    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_3
    iget-object v4, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v4, v1, v0}, Lk/o0;->a(II)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v1, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v4, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v6

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    add-int/2addr v0, v4

    :goto_5
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    if-ne v1, v7, :cond_9

    move v1, v2

    goto :goto_6

    :cond_9
    move v1, v5

    :goto_6
    iget v4, p0, Lk/A0;->w:I

    invoke-static {v3, v4}, LP/l;->d(Landroid/widget/PopupWindow;I)V

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lk/A0;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_10

    :cond_a
    iget v4, p0, Lk/A0;->t:I

    if-ne v4, v10, :cond_b

    move v4, v10

    goto :goto_7

    :cond_b
    if-ne v4, v9, :cond_c

    iget-object v4, p0, Lk/A0;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    :cond_c
    :goto_7
    if-ne v8, v10, :cond_11

    if-eqz v1, :cond_d

    move v8, v0

    goto :goto_8

    :cond_d
    move v8, v10

    :goto_8
    if-eqz v1, :cond_f

    iget v0, p0, Lk/A0;->t:I

    if-ne v0, v10, :cond_e

    move v0, v10

    goto :goto_9

    :cond_e
    move v0, v5

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_f
    iget v0, p0, Lk/A0;->t:I

    if-ne v0, v10, :cond_10

    move v5, v10

    :cond_10
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_a

    :cond_11
    if-ne v8, v9, :cond_12

    move v8, v0

    :cond_12
    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    move v0, v4

    iget-object v4, p0, Lk/A0;->D:Landroid/view/View;

    iget v5, p0, Lk/A0;->u:I

    iget v6, p0, Lk/A0;->v:I

    if-gez v0, :cond_13

    move v7, v10

    goto :goto_b

    :cond_13
    move v7, v0

    :goto_b
    if-gez v8, :cond_14

    move v8, v10

    :cond_14
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :cond_15
    iget v1, p0, Lk/A0;->t:I

    if-ne v1, v10, :cond_16

    move v1, v10

    goto :goto_c

    :cond_16
    if-ne v1, v9, :cond_17

    iget-object v1, p0, Lk/A0;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_17
    :goto_c
    if-ne v8, v10, :cond_18

    move v8, v10

    goto :goto_d

    :cond_18
    if-ne v8, v9, :cond_19

    move v8, v0

    :cond_19
    :goto_d
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ListPopupWindow"

    const/16 v4, 0x1c

    if-gt v0, v4, :cond_1a

    sget-object v0, Lk/A0;->P:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    :try_start_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1a
    invoke-static {v3, v2}, Lk/v0;->b(Landroid/widget/PopupWindow;Z)V

    :cond_1b
    :goto_e
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lk/A0;->H:Lk/z0;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lk/A0;->z:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lk/A0;->y:Z

    invoke-static {v3, v0}, LP/l;->c(Landroid/widget/PopupWindow;Z)V

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_1d

    sget-object v0, Lk/A0;->Q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    :try_start_1
    iget-object v4, p0, Lk/A0;->M:Landroid/graphics/Rect;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v4, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_1d
    iget-object v0, p0, Lk/A0;->M:Landroid/graphics/Rect;

    invoke-static {v3, v0}, Lk/v0;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    :cond_1e
    :goto_f
    iget-object v0, p0, Lk/A0;->D:Landroid/view/View;

    iget v1, p0, Lk/A0;->u:I

    iget v4, p0, Lk/A0;->v:I

    iget v5, p0, Lk/A0;->A:I

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Lk/A0;->N:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    invoke-virtual {v0}, Lk/o0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    if-eqz v0, :cond_20

    invoke-virtual {v0, v2}, Lk/o0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_20
    iget-boolean v0, p0, Lk/A0;->N:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lk/A0;->K:Landroid/os/Handler;

    iget-object v1, p0, Lk/A0;->J:Lk/w0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_10
    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lk/A0;->O:Lk/y;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final i()Lk/o0;
    .locals 1

    iget-object v0, p0, Lk/A0;->r:Lk/o0;

    return-object v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lk/A0;->v:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/A0;->x:Z

    return-void
.end method

.method public final m()I
    .locals 1

    iget-boolean v0, p0, Lk/A0;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lk/A0;->v:I

    return v0
.end method

.method public n(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lk/A0;->C:Lk/x0;

    if-nez v0, :cond_0

    new-instance v0, Lk/x0;

    invoke-direct {v0, p0}, Lk/x0;-><init>(Lk/A0;)V

    iput-object v0, p0, Lk/A0;->C:Lk/x0;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/A0;->q:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lk/A0;->q:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lk/A0;->C:Lk/x0;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lk/A0;->r:Lk/o0;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lk/A0;->q:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public p(Landroid/content/Context;Z)Lk/o0;
    .locals 1

    new-instance v0, Lk/o0;

    invoke-direct {v0, p1, p2}, Lk/o0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lk/A0;->O:Lk/y;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk/A0;->L:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lk/A0;->t:I

    return-void

    :cond_0
    iput p1, p0, Lk/A0;->t:I

    return-void
.end method
