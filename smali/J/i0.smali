.class public final LJ/i0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:LS2/f;

.field public b:LJ/B0;


# direct methods
.method public constructor <init>(Landroid/view/View;LS2/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJ/i0;->a:LS2/f;

    sget-object p2, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LJ/I;->a(Landroid/view/View;)LJ/B0;

    move-result-object p1

    if-eqz p1, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    new-instance p2, LJ/r0;

    invoke-direct {p2, p1}, LJ/r0;-><init>(LJ/B0;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1d

    if-lt p2, v0, :cond_1

    new-instance p2, LJ/q0;

    invoke-direct {p2, p1}, LJ/q0;-><init>(LJ/B0;)V

    goto :goto_0

    :cond_1
    new-instance p2, LJ/p0;

    invoke-direct {p2, p1}, LJ/p0;-><init>(LJ/B0;)V

    :goto_0
    invoke-virtual {p2}, LJ/s0;->b()LJ/B0;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, LJ/i0;->b:LJ/B0;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v6}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p2}, LJ/B0;->g(Landroid/view/View;Landroid/view/WindowInsets;)LJ/B0;

    move-result-object v1

    iput-object v1, v0, LJ/i0;->b:LJ/B0;

    invoke-static/range {p1 .. p2}, LJ/j0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static/range {p1 .. p2}, LJ/B0;->g(Landroid/view/View;Landroid/view/WindowInsets;)LJ/B0;

    move-result-object v3

    iget-object v1, v3, LJ/B0;->a:LJ/y0;

    iget-object v2, v0, LJ/i0;->b:LJ/B0;

    if-nez v2, :cond_1

    sget-object v2, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, LJ/I;->a(Landroid/view/View;)LJ/B0;

    move-result-object v2

    iput-object v2, v0, LJ/i0;->b:LJ/B0;

    :cond_1
    iget-object v2, v0, LJ/i0;->b:LJ/B0;

    if-nez v2, :cond_2

    iput-object v3, v0, LJ/i0;->b:LJ/B0;

    invoke-static/range {p1 .. p2}, LJ/j0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {v6}, LJ/j0;->j(Landroid/view/View;)LS2/f;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, LS2/f;->r:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p1 .. p2}, LJ/j0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v2, v0, LJ/i0;->b:LJ/B0;

    const/4 v5, 0x1

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x100

    if-gt v5, v10, :cond_5

    invoke-virtual {v1, v5}, LJ/y0;->f(I)LB/c;

    move-result-object v10

    iget-object v11, v2, LJ/B0;->a:LJ/y0;

    invoke-virtual {v11, v5}, LJ/y0;->f(I)LB/c;

    move-result-object v11

    invoke-virtual {v10, v11}, LB/c;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    or-int/2addr v9, v5

    :cond_4
    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-nez v9, :cond_6

    invoke-static/range {p1 .. p2}, LJ/j0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_6
    iget-object v2, v0, LJ/i0;->b:LJ/B0;

    and-int/lit8 v5, v9, 0x8

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, LJ/y0;->f(I)LB/c;

    move-result-object v10

    iget v10, v10, LB/c;->d:I

    iget-object v11, v2, LJ/B0;->a:LJ/y0;

    invoke-virtual {v11, v5}, LJ/y0;->f(I)LB/c;

    move-result-object v5

    iget v5, v5, LB/c;->d:I

    if-le v10, v5, :cond_7

    sget-object v5, LJ/j0;->e:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :cond_7
    sget-object v5, LJ/j0;->f:Ld0/a;

    goto :goto_1

    :cond_8
    sget-object v5, LJ/j0;->g:Landroid/view/animation/DecelerateInterpolator;

    :goto_1
    new-instance v10, LJ/n0;

    const-wide/16 v11, 0xa0

    invoke-direct {v10, v9, v5, v11, v12}, LJ/n0;-><init>(ILandroid/view/animation/Interpolator;J)V

    iget-object v5, v10, LJ/n0;->a:LJ/m0;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, LJ/m0;->d(F)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget-object v11, v10, LJ/n0;->a:LJ/m0;

    invoke-virtual {v11}, LJ/m0;->a()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-virtual {v1, v9}, LJ/y0;->f(I)LB/c;

    move-result-object v1

    iget-object v5, v2, LJ/B0;->a:LJ/y0;

    invoke-virtual {v5, v9}, LJ/y0;->f(I)LB/c;

    move-result-object v5

    iget v12, v1, LB/c;->a:I

    iget v13, v5, LB/c;->a:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v1, LB/c;->b:I

    iget v14, v5, LB/c;->b:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    iget v8, v1, LB/c;->c:I

    iget v4, v5, LB/c;->c:I

    move-object/from16 v16, v2

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v17, v3

    iget v3, v1, LB/c;->d:I

    move/from16 v18, v9

    iget v9, v5, LB/c;->d:I

    move-object/from16 v19, v10

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v12, v15, v2, v10}, LB/c;->b(IIII)LB/c;

    move-result-object v2

    iget v1, v1, LB/c;->a:I

    iget v5, v5, LB/c;->a:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v5, v4, v3}, LB/c;->b(IIII)LB/c;

    move-result-object v1

    new-instance v8, LA/j;

    const/16 v3, 0x12

    invoke-direct {v8, v2, v3, v1}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v6, v7, v1}, LJ/j0;->f(Landroid/view/View;Landroid/view/WindowInsets;Z)V

    new-instance v1, LJ/h0;

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move/from16 v5, v18

    move-object/from16 v2, v19

    invoke-direct/range {v1 .. v6}, LJ/h0;-><init>(LJ/n0;LJ/B0;LJ/B0;ILandroid/view/View;)V

    invoke-virtual {v11, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, LJ/d0;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v6, v4}, LJ/d0;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v11, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, LE1/s;

    invoke-direct {v1, v6, v2, v8, v11}, LE1/s;-><init>(Landroid/view/View;LJ/n0;LA/j;Landroid/animation/ValueAnimator;)V

    invoke-static {v6, v1}, LJ/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v3, v0, LJ/i0;->b:LJ/B0;

    invoke-static/range {p1 .. p2}, LJ/j0;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
