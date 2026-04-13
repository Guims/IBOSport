.class public final Landroidx/leanback/widget/o;
.super Lv1/G;


# static fields
.field public static final c0:Landroid/graphics/Rect;

.field public static final d0:[I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:I

.field public C:Landroidx/leanback/widget/k;

.field public D:Landroidx/leanback/widget/m;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:[I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:Landroidx/leanback/widget/i;

.field public T:I

.field public final U:LK1/c;

.field public final V:LJ/l;

.field public W:I

.field public X:I

.field public final Y:[I

.field public final Z:LD5/A;

.field public final a0:LA4/f;

.field public final b0:LL2/o;

.field public final p:I

.field public final q:Landroidx/leanback/widget/f;

.field public r:I

.field public s:Landroidx/emoji2/text/f;

.field public t:Lv1/T;

.field public u:I

.field public v:I

.field public final w:Landroid/util/SparseIntArray;

.field public x:[I

.field public y:Lv1/M;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/o;->c0:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/leanback/widget/o;->d0:[I

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/f;)V
    .locals 4

    invoke-direct {p0}, Lv1/G;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroidx/leanback/widget/o;->p:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/o;->r:I

    new-instance v1, Lv1/t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lv1/t;-><init>(Lv1/G;I)V

    iput-object v1, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/o;->w:Landroid/util/SparseIntArray;

    const v1, 0x36200

    iput v1, p0, Landroidx/leanback/widget/o;->z:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/leanback/widget/o;->B:I

    iput v0, p0, Landroidx/leanback/widget/o;->E:I

    const v2, 0x800033

    iput v2, p0, Landroidx/leanback/widget/o;->P:I

    const/4 v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/o;->R:I

    iput v0, p0, Landroidx/leanback/widget/o;->T:I

    new-instance v2, LK1/c;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LK1/c;-><init>(I)V

    iput-object v2, p0, Landroidx/leanback/widget/o;->U:LK1/c;

    new-instance v2, LJ/l;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, LJ/l;-><init>(I)V

    iput-object v2, p0, Landroidx/leanback/widget/o;->V:LJ/l;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/o;->Y:[I

    new-instance v2, LD5/A;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v0, v2, LD5/A;->a:I

    const/16 v3, 0x64

    iput v3, v2, LD5/A;->b:I

    iput-object v2, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    new-instance v2, LA4/f;

    const/16 v3, 0x12

    invoke-direct {v2, v3, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/leanback/widget/o;->a0:LA4/f;

    new-instance v2, LL2/o;

    invoke-direct {v2, p0}, LL2/o;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/leanback/widget/o;->b0:LL2/o;

    iput-object p1, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    iput v1, p0, Landroidx/leanback/widget/o;->F:I

    iget-boolean p1, p0, Lv1/G;->i:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lv1/G;->i:Z

    iput v0, p0, Lv1/G;->j:I

    iget-object p1, p0, Lv1/G;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    invoke-virtual {p1}, Lv1/M;->n()V

    :cond_0
    return-void
.end method

.method public static V0(Landroid/view/View;)I
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/l;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lv1/H;->a:Lv1/X;

    invoke-virtual {v0}, Lv1/X;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lv1/H;->a:Lv1/X;

    invoke-virtual {p0}, Lv1/X;->b()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static W0(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    invoke-static {p0}, Lv1/G;->D(Landroid/view/View;)I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static X0(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    invoke-static {p0}, Lv1/G;->E(Landroid/view/View;)I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final A(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lv1/G;->A(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/l;

    iget p1, p1, Landroidx/leanback/widget/l;->h:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final A1()V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v0, v0, -0x401

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/o;->k1(Z)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    sget-object v0, LJ/U;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    iget-object v1, p0, Landroidx/leanback/widget/o;->a0:LA4/f;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final B(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lv1/G;->B(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/l;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroidx/leanback/widget/l;->e:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroidx/leanback/widget/l;->f:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroidx/leanback/widget/l;->g:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroidx/leanback/widget/l;->h:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final B1()V
    .locals 11

    iget-object v0, p0, Landroidx/leanback/widget/o;->t:Lv1/T;

    invoke-virtual {v0}, Lv1/T;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v0, v0, Landroidx/leanback/widget/i;->g:I

    iget-object v3, p0, Landroidx/leanback/widget/o;->t:Lv1/T;

    invoke-virtual {v3}, Lv1/T;->b()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v4, v4, Landroidx/leanback/widget/i;->f:I

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v3, v0, Landroidx/leanback/widget/i;->f:I

    iget v4, v0, Landroidx/leanback/widget/i;->g:I

    iget-object v0, p0, Landroidx/leanback/widget/o;->t:Lv1/T;

    invoke-virtual {v0}, Lv1/T;->b()I

    move-result v0

    sub-int/2addr v0, v2

    move v5, v3

    move v3, v0

    move v0, v5

    move v5, v4

    move v4, v1

    :goto_0
    if-ltz v0, :cond_a

    if-gez v5, :cond_2

    goto/16 :goto_8

    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-ne v5, v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    iget-object v6, p0, Landroidx/leanback/widget/o;->U:LK1/c;

    if-nez v0, :cond_5

    iget-object v7, v6, LK1/c;->s:Ljava/lang/Object;

    check-cast v7, Landroidx/leanback/widget/W;

    iget v8, v7, Landroidx/leanback/widget/W;->a:I

    if-ne v8, v5, :cond_5

    if-nez v3, :cond_5

    iget v7, v7, Landroidx/leanback/widget/W;->b:I

    if-ne v7, v4, :cond_5

    return-void

    :cond_5
    sget-object v7, Landroidx/leanback/widget/o;->d0:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v0, v2, v7}, Landroidx/leanback/widget/i;->g(Z[I)I

    move-result v5

    aget v0, v7, v2

    invoke-virtual {p0, v0}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    iget v8, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v8, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, v8, Landroidx/leanback/widget/l;->e:I

    add-int/2addr v9, v10

    iget v8, v8, Landroidx/leanback/widget/l;->i:I

    :goto_3
    add-int/2addr v9, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    iget v10, v8, Landroidx/leanback/widget/l;->f:I

    add-int/2addr v9, v10

    iget v8, v8, Landroidx/leanback/widget/l;->j:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_7
    move v9, v5

    :goto_5
    if-eqz v3, :cond_9

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v0, v1, v7}, Landroidx/leanback/widget/i;->i(Z[I)I

    move-result v4

    aget v0, v7, v2

    invoke-virtual {p0, v0}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v1, Landroidx/leanback/widget/l;->e:I

    add-int/2addr v0, v2

    iget v1, v1, Landroidx/leanback/widget/l;->i:I

    :goto_6
    add-int/2addr v0, v1

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, v1, Landroidx/leanback/widget/l;->f:I

    add-int/2addr v0, v2

    iget v1, v1, Landroidx/leanback/widget/l;->j:I

    goto :goto_6

    :cond_9
    move v0, v4

    :goto_7
    iget-object v1, v6, LK1/c;->s:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/W;

    invoke-virtual {v1, v4, v5, v0, v9}, Landroidx/leanback/widget/W;->c(IIII)V

    :cond_a
    :goto_8
    return-void
.end method

.method public final C(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lv1/G;->C(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/l;

    iget p1, p1, Landroidx/leanback/widget/l;->e:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final C1()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iget v1, v0, Landroidx/leanback/widget/W;->j:I

    iget v2, p0, Landroidx/leanback/widget/o;->G:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->c1()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/leanback/widget/W;->c(IIII)V

    return-void
.end method

.method public final D0(ILv1/M;Lv1/T;)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/o;->o1(Lv1/M;Lv1/T;)V

    iget p2, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p2, p2, -0x4

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroidx/leanback/widget/o;->z:I

    iget p2, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/o;->p1(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/o;->q1(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    iget p2, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/o;->z:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final E0(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/o;->w1(IZ)V

    return-void
.end method

.method public final F(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lv1/G;->F(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/l;

    iget p1, p1, Landroidx/leanback/widget/l;->g:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final F0(ILv1/M;Lv1/T;)I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/o;->o1(Lv1/M;Lv1/T;)V

    iget p2, p0, Landroidx/leanback/widget/o;->r:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/o;->p1(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/o;->q1(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    iget p2, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/o;->z:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final G(Landroid/view/View;)I
    .locals 1

    invoke-super {p0, p1}, Lv1/G;->G(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/l;

    iget p1, p1, Landroidx/leanback/widget/l;->f:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final O0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/leanback/widget/o;->w1(IZ)V

    return-void
.end method

.method public final P(Lv1/M;Lv1/T;)I
    .locals 0

    iget p1, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/leanback/widget/i;->e:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final P0(Lv1/s;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/o;->C:Landroidx/leanback/widget/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/widget/k;->q:Z

    :cond_0
    invoke-super {p0, p1}, Lv1/G;->P0(Lv1/s;)V

    iget-boolean v0, p1, Lv1/s;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroidx/leanback/widget/k;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/leanback/widget/k;

    iput-object p1, p0, Landroidx/leanback/widget/o;->C:Landroidx/leanback/widget/k;

    instance-of v0, p1, Landroidx/leanback/widget/m;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/leanback/widget/m;

    iput-object p1, p0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    return-void

    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    return-void

    :cond_2
    iput-object v1, p0, Landroidx/leanback/widget/o;->C:Landroidx/leanback/widget/k;

    iput-object v1, p0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    return-void
.end method

.method public final R0()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/o;->X:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/o;->v:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/o;->W:I

    iget v2, p0, Landroidx/leanback/widget/o;->X:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/o;->v:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/i;->b(IZ)Z

    return-void
.end method

.method public final S0()V
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {p0, v3, v0, v1}, Landroidx/leanback/widget/o;->U0(Landroidx/recyclerview/widget/RecyclerView;Lv1/X;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v1, v2}, Landroidx/leanback/widget/o;->U0(Landroidx/recyclerview/widget/RecyclerView;Lv1/X;I)V

    :goto_1
    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, LJ/U;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Landroidx/leanback/widget/o;->a0:LA4/f;

    invoke-virtual {v3, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final T0()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    iget-object v0, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final U0(Landroidx/recyclerview/widget/RecyclerView;Lv1/X;I)V
    .locals 9

    iget-object v0, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_8

    iget-object v2, p0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/x;

    check-cast v2, Lf0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v3

    check-cast v3, Lf0/b;

    iget-object v2, v2, Lf0/a;->a:Lf0/d;

    iget-object v3, v2, Lf0/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lf0/d;->d(I)V

    if-eqz p2, :cond_7

    iget-object v4, v2, Lf0/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf0/e;

    iget v4, v4, Lf0/e;->b:I

    add-int/2addr v4, p3

    check-cast v2, Landroidx/leanback/widget/picker/DatePicker;

    iget-object v5, v2, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    iget-object v6, v2, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v5, v2, Lf0/d;->r:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf0/e;

    :goto_1
    iget v5, v5, Lf0/e;->a:I

    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->J:I

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ne v3, v6, :cond_2

    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    sub-int/2addr v4, v5

    invoke-virtual {v3, v8, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_2
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->I:I

    if-ne v3, v6, :cond_3

    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    sub-int/2addr v4, v5

    invoke-virtual {v3, v7, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_3
    iget v6, v2, Landroidx/leanback/widget/picker/DatePicker;->K:I

    if-ne v3, v6, :cond_6

    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    sub-int/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->add(II)V

    :goto_2
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v2, Landroidx/leanback/widget/picker/DatePicker;->Q:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, v2, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v6, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_3

    :cond_4
    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    iget-object v4, v2, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_5
    :goto_3
    new-instance v3, LA4/f;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v2}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void
.end method

.method public final X(Lv1/y;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iput-object p1, p0, Landroidx/leanback/widget/o;->J:[I

    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Landroidx/leanback/widget/o;->z:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/o;->E:I

    iget-object v0, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object v0, v0, LD5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc1/c;->h(I)V

    :cond_0
    return-void
.end method

.method public final Y(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroidx/leanback/widget/o;->z:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    move/from16 v17, v5

    goto/16 :goto_f

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/o;->Y0(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    const/4 v8, -0x1

    iget-object v9, v0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    if-eqz v9, :cond_4

    if-eq v7, v9, :cond_4

    invoke-virtual {v0, v7}, Lv1/G;->r(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    invoke-virtual {v0, v10}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v11

    if-ne v11, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    move v10, v8

    :goto_2
    invoke-virtual {v0, v10}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v7

    if-ne v7, v8, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v7}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_6

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_6
    iget-object v11, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_0

    :cond_7
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v4, v12, :cond_8

    if-ne v4, v11, :cond_9

    :cond_8
    iget-object v13, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v13, v13, Landroidx/leanback/widget/i;->e:I

    if-gt v13, v5, :cond_9

    goto :goto_0

    :cond_9
    iget-object v13, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v13, :cond_a

    if-eqz v9, :cond_a

    invoke-virtual {v13, v7}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object v13

    iget v13, v13, LE2/j;->b:I

    goto :goto_4

    :cond_a
    move v13, v8

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v4, v5, :cond_c

    if-ne v4, v12, :cond_b

    goto :goto_5

    :cond_b
    move v15, v8

    goto :goto_6

    :cond_c
    :goto_5
    move v15, v5

    :goto_6
    if-lez v15, :cond_d

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v6, v16

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    if-ne v10, v8, :cond_f

    if-lez v15, :cond_e

    const/16 v16, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v8

    sub-int/2addr v8, v5

    move/from16 v16, v8

    goto :goto_8

    :cond_f
    add-int v16, v10, v15

    :goto_8
    move/from16 v8, v16

    :goto_9
    if-lez v15, :cond_10

    if-gt v8, v6, :cond_0

    goto :goto_a

    :cond_10
    if-lt v8, v6, :cond_0

    :goto_a
    invoke-virtual {v0, v8}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_11

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_12

    :cond_11
    move/from16 v17, v5

    move v5, v11

    move v11, v12

    goto/16 :goto_c

    :cond_12
    if-nez v9, :cond_13

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_11

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0, v8}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v11

    iget-object v12, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v12, v11}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object v12

    if-nez v12, :cond_15

    :cond_14
    move/from16 v17, v5

    const/4 v5, 0x2

    const/4 v11, 0x3

    goto :goto_c

    :cond_15
    iget v12, v12, LE2/j;->b:I

    if-ne v4, v5, :cond_16

    if-ne v12, v13, :cond_14

    if-le v11, v7, :cond_14

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_14

    goto/16 :goto_0

    :cond_16
    if-nez v4, :cond_17

    if-ne v12, v13, :cond_14

    if-ge v11, v7, :cond_14

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v14, :cond_14

    goto/16 :goto_0

    :cond_17
    const/4 v11, 0x3

    if-ne v4, v11, :cond_1a

    if-ne v12, v13, :cond_18

    :goto_b
    move/from16 v17, v5

    const/4 v5, 0x2

    goto :goto_c

    :cond_18
    if-ge v12, v13, :cond_19

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_b

    :cond_1a
    move/from16 v17, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    if-ne v12, v13, :cond_1b

    goto :goto_c

    :cond_1b
    if-le v12, v13, :cond_1c

    goto/16 :goto_f

    :cond_1c
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1d
    :goto_c
    add-int/2addr v8, v15

    move v12, v11

    move v11, v5

    move/from16 v5, v17

    goto/16 :goto_9

    :cond_1e
    move/from16 v17, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, v0, Landroidx/leanback/widget/o;->T:I

    if-eqz v5, :cond_22

    iget-object v5, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v5, v5, LK1/c;->s:Ljava/lang/Object;

    check-cast v5, Landroidx/leanback/widget/W;

    iget v6, v5, Landroidx/leanback/widget/W;->j:I

    iget v7, v5, Landroidx/leanback/widget/W;->i:I

    sub-int/2addr v7, v6

    iget v5, v5, Landroidx/leanback/widget/W;->k:I

    sub-int/2addr v7, v5

    add-int/2addr v7, v6

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v5

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v5, :cond_20

    invoke-virtual {v0, v8}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v10, v9}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v10

    if-lt v10, v6, :cond_1f

    iget-object v10, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v10, v9}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v10

    if-gt v10, v7, :cond_1f

    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_23

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v5

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_23

    invoke-virtual {v0, v6}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v7, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_22
    iget v5, v0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {v0, v5}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_24

    goto :goto_f

    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_f
    return v17
.end method

.method public final Y0(I)I
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/o;->r:I

    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/4 v4, 0x1

    const/16 v5, 0x11

    if-nez v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p1, v5, :cond_1

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_8

    goto :goto_3

    :cond_0
    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr p1, v0

    if-nez p1, :cond_5

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr p1, v0

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_9

    const/high16 v0, 0x80000

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_0
    return v4

    :cond_4
    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_6
    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr p1, v0

    if-nez p1, :cond_8

    :cond_7
    const/4 p1, 0x2

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_9
    :goto_3
    return v5
.end method

.method public final Z0(I)I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/o;->I:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/o;->J:[I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    aget p1, v0, p1

    return p1
.end method

.method public final a1(I)I
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/o;->Q:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/o;->Z0(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/o;->O:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/o;->Z0(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/o;->O:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public final b1(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 12

    iget v0, p0, Landroidx/leanback/widget/o;->T:I

    iget-object v1, p0, Landroidx/leanback/widget/o;->U:LK1/c;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    iget-object v0, v1, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iget v3, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v3, Landroidx/leanback/widget/l;->e:I

    add-int/2addr v5, v6

    iget v3, v3, Landroidx/leanback/widget/l;->i:I

    :goto_0
    add-int/2addr v5, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v3, Landroidx/leanback/widget/l;->f:I

    add-int/2addr v5, v6

    iget v3, v3, Landroidx/leanback/widget/l;->j:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v5}, Landroidx/leanback/widget/W;->b(I)I

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget p2, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v3, p2, Landroidx/leanback/widget/l;->f:I

    add-int/2addr p1, v3

    iget p2, p2, Landroidx/leanback/widget/l;->j:I

    :goto_2
    add-int/2addr p1, p2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v3, p2, Landroidx/leanback/widget/l;->e:I

    add-int/2addr p1, v3

    iget p2, p2, Landroidx/leanback/widget/l;->i:I

    goto :goto_2

    :goto_3
    iget-object p2, v1, LK1/c;->t:Ljava/lang/Object;

    check-cast p2, Landroidx/leanback/widget/W;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/W;->b(I)I

    move-result p1

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    aput v2, p3, v2

    aput v2, p3, v4

    return v2

    :cond_4
    :goto_4
    aput v0, p3, v2

    aput p1, p3, v4

    return v4

    :cond_5
    invoke-static {p1}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v0

    iget-object v5, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v5, p1}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v5

    iget-object v6, v1, LK1/c;->s:Ljava/lang/Object;

    check-cast v6, Landroidx/leanback/widget/W;

    iget v7, v6, Landroidx/leanback/widget/W;->j:I

    iget v8, v6, Landroidx/leanback/widget/W;->i:I

    sub-int/2addr v8, v7

    iget v6, v6, Landroidx/leanback/widget/W;->k:I

    sub-int/2addr v8, v6

    iget-object v6, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v6, p2}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v6, -0x1

    goto :goto_5

    :cond_6
    iget v6, v6, LE2/j;->b:I

    :goto_5
    const/4 v9, 0x0

    if-ge v0, v7, :cond_d

    iget v0, p0, Landroidx/leanback/widget/o;->T:I

    if-ne v0, v3, :cond_b

    move-object v0, p1

    :goto_6
    iget-object v10, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget-boolean v11, v10, Landroidx/leanback/widget/i;->c:Z

    if-eqz v11, :cond_7

    const/high16 v11, -0x80000000

    goto :goto_7

    :cond_7
    const v11, 0x7fffffff

    :goto_7
    invoke-virtual {v10, v11, v4}, Landroidx/leanback/widget/i;->m(IZ)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v10, v0, Landroidx/leanback/widget/i;->f:I

    invoke-virtual {v0, v10, p2}, Landroidx/leanback/widget/i;->j(II)[Ln/g;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Ln/g;->d(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v11, v10}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v11

    sub-int v11, v5, v11

    if-le v11, v8, :cond_9

    invoke-virtual {v0}, Ln/g;->e()I

    move-result p2

    if-le p2, v3, :cond_8

    invoke-virtual {v0, v3}, Ln/g;->d(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object p2

    move-object v3, v9

    move-object v9, p2

    goto :goto_9

    :cond_8
    move-object v3, v9

    move-object v9, v10

    goto :goto_9

    :cond_9
    move-object v0, v10

    goto :goto_6

    :cond_a
    move-object v3, v9

    move-object v9, v0

    goto :goto_9

    :cond_b
    move-object v3, v9

    :cond_c
    move-object v9, p1

    goto :goto_9

    :cond_d
    add-int v10, v8, v7

    if-le v5, v10, :cond_11

    iget v5, p0, Landroidx/leanback/widget/o;->T:I

    if-ne v5, v3, :cond_10

    :cond_e
    iget-object v3, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v5, v3, Landroidx/leanback/widget/i;->g:I

    invoke-virtual {v3, p2, v5}, Landroidx/leanback/widget/i;->j(II)[Ln/g;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ln/g;->e()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ln/g;->d(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v5, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v0

    if-le v5, v8, :cond_f

    move-object v3, v9

    goto :goto_8

    :cond_f
    iget-object v5, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v5}, Landroidx/leanback/widget/i;->a()Z

    move-result v5

    if-nez v5, :cond_e

    :goto_8
    if-eqz v3, :cond_c

    goto :goto_9

    :cond_10
    move-object v3, p1

    goto :goto_9

    :cond_11
    move-object v3, v9

    :goto_9
    if-eqz v9, :cond_12

    iget-object p2, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {p2, v9}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p2

    :goto_a
    sub-int/2addr p2, v7

    goto :goto_b

    :cond_12
    if-eqz v3, :cond_13

    iget-object p2, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {p2, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p2

    add-int/2addr v7, v8

    goto :goto_a

    :cond_13
    move p2, v2

    :goto_b
    if-eqz v9, :cond_14

    move-object p1, v9

    goto :goto_c

    :cond_14
    if-eqz v3, :cond_15

    move-object p1, v3

    :cond_15
    :goto_c
    iget v0, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v3, v0, Landroidx/leanback/widget/l;->f:I

    add-int/2addr p1, v3

    iget v0, v0, Landroidx/leanback/widget/l;->j:I

    :goto_d
    add-int/2addr p1, v0

    goto :goto_e

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v3, v0, Landroidx/leanback/widget/l;->e:I

    add-int/2addr p1, v3

    iget v0, v0, Landroidx/leanback/widget/l;->i:I

    goto :goto_d

    :goto_e
    iget-object v0, v1, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/W;->b(I)I

    move-result p1

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    goto :goto_f

    :cond_17
    return v2

    :cond_18
    :goto_f
    aput p2, p3, v2

    aput p1, p3, v4

    return v4
.end method

.method public final c1()I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/o;->Q:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/o;->a1(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/o;->Z0(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final d0(Lv1/M;Lv1/T;LK/h;)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/o;->o1(Lv1/M;Lv1/T;)V

    invoke-virtual {p2}, Lv1/T;->b()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-le v0, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/o;->e1(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    sget-object v4, LK/c;->n:LK/c;

    goto :goto_1

    :cond_1
    sget-object v4, LK/c;->l:LK/c;

    :goto_1
    invoke-virtual {p3, v4}, LK/h;->b(LK/c;)V

    goto :goto_2

    :cond_2
    sget-object v4, LK/c;->k:LK/c;

    invoke-virtual {p3, v4}, LK/h;->b(LK/c;)V

    :goto_2
    invoke-virtual {p3, v3}, LK/h;->m(Z)V

    :cond_3
    if-le v0, v3, :cond_6

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/o;->e1(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    sget-object v0, LK/c;->l:LK/c;

    goto :goto_3

    :cond_4
    sget-object v0, LK/c;->n:LK/c;

    :goto_3
    invoke-virtual {p3, v0}, LK/h;->b(LK/c;)V

    goto :goto_4

    :cond_5
    sget-object v0, LK/c;->m:LK/c;

    invoke-virtual {p3, v0}, LK/h;->b(LK/c;)V

    :goto_4
    invoke-virtual {p3, v3}, LK/h;->m(Z)V

    :cond_6
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/o;->P(Lv1/M;Lv1/T;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/o;->z(Lv1/M;Lv1/T;)I

    move-result p1

    invoke-static {v0, p1, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    iget-object p2, p3, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    return-void
.end method

.method public final d1()Z
    .locals 3

    invoke-virtual {p0}, Lv1/G;->H()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/o;->r:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/o;->Q:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final e1(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/o;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/leanback/widget/o;->Q:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final f0(Lv1/M;Lv1/T;Landroid/view/View;LK/h;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz p2, :cond_5

    instance-of p2, p1, Landroidx/leanback/widget/l;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Landroidx/leanback/widget/l;

    iget-object p1, p1, Lv1/H;->a:Lv1/X;

    invoke-virtual {p1}, Lv1/X;->b()I

    move-result p1

    const/4 p2, -0x1

    if-ltz p1, :cond_2

    iget-object p3, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {p3, p1}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p3, LE2/j;->b:I

    :cond_2
    :goto_0
    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget p3, p3, Landroidx/leanback/widget/i;->e:I

    div-int/2addr p1, p3

    iget p3, p0, Landroidx/leanback/widget/o;->r:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_4

    invoke-static {v0, p2, v1, p1, v1}, LK/g;->a(ZIIII)LK/g;

    move-result-object p1

    invoke-virtual {p4, p1}, LK/h;->k(LK/g;)V

    return-void

    :cond_4
    invoke-static {v0, p1, v1, p2, v1}, LK/g;->a(ZIIII)LK/g;

    move-result-object p1

    invoke-virtual {p4, p1}, LK/h;->k(LK/g;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final f1(Landroid/view/View;IIII)V
    .locals 7

    iget v0, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/leanback/widget/o;->W0(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/o;->X0(Landroid/view/View;)I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/o;->I:I

    if-lez v1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/o;->P:I

    and-int/lit8 v2, v1, 0x70

    iget v3, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const v3, 0x800007

    and-int/2addr v1, v3

    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7

    :goto_1
    iget v3, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v3, :cond_3

    const/16 v5, 0x30

    if-eq v2, v5, :cond_a

    :cond_3
    if-ne v3, v4, :cond_4

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    const/16 v5, 0x50

    if-eq v2, v5, :cond_6

    :cond_5
    if-ne v3, v4, :cond_7

    const/4 v5, 0x5

    if-ne v1, v5, :cond_7

    :cond_6
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/o;->Z0(I)I

    move-result p2

    sub-int/2addr p2, v0

    :goto_2
    add-int/2addr p5, p2

    goto :goto_3

    :cond_7
    if-nez v3, :cond_8

    const/16 v5, 0x10

    if-eq v2, v5, :cond_9

    :cond_8
    if-ne v3, v4, :cond_a

    if-ne v1, v4, :cond_a

    :cond_9
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/o;->Z0(I)I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    goto :goto_2

    :cond_a
    :goto_3
    iget p2, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p2, :cond_b

    add-int/2addr v0, p5

    goto :goto_4

    :cond_b
    add-int/2addr v0, p5

    move v6, p5

    move p5, p3

    move p3, v6

    move v6, v0

    move v0, p4

    move p4, v6

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/l;

    invoke-static {p1, p3, p5, p4, v0}, Lv1/G;->U(Landroid/view/View;IIII)V

    sget-object v1, Landroidx/leanback/widget/o;->c0:Landroid/graphics/Rect;

    invoke-super {p0, p1, v1}, Lv1/G;->B(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p4

    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    iput p3, p2, Landroidx/leanback/widget/l;->e:I

    iput p5, p2, Landroidx/leanback/widget/l;->f:I

    iput v2, p2, Landroidx/leanback/widget/l;->g:I

    iput p4, p2, Landroidx/leanback/widget/l;->h:I

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/o;->y1(Landroid/view/View;)V

    return-void
.end method

.method public final g0(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p2, v2, :cond_3

    const/16 v5, 0x82

    goto :goto_1

    :cond_3
    const/16 v5, 0x21

    :goto_1
    invoke-virtual {v0, v4, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->e()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lv1/G;->I()I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    if-ne p2, v2, :cond_6

    move v6, v3

    goto :goto_4

    :cond_6
    move v6, v1

    :goto_4
    xor-int/2addr v5, v6

    if-eqz v5, :cond_7

    const/16 v5, 0x42

    goto :goto_5

    :cond_7
    const/16 v5, 0x11

    :goto_5
    invoke-virtual {v0, v4, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v5

    :goto_6
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/o;->Y0(I)I

    move-result v5

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v3

    goto :goto_7

    :cond_b
    move v6, v1

    :goto_7
    const/high16 v7, 0x20000

    if-ne v5, v3, :cond_e

    if-nez v6, :cond_c

    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_d

    :cond_c
    move-object v0, p1

    :cond_d
    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->d1()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/o;->j1(Z)V

    goto :goto_8

    :cond_e
    if-nez v5, :cond_12

    if-nez v6, :cond_f

    iget v2, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_10

    :cond_f
    move-object v0, p1

    :cond_10
    iget v2, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lv1/G;->H()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v2

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/o;->j1(Z)V

    goto :goto_8

    :cond_12
    const/4 v1, 0x3

    if-ne v5, v1, :cond_13

    if-nez v6, :cond_14

    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_15

    goto :goto_8

    :cond_13
    if-ne v5, v2, :cond_15

    if-nez v6, :cond_14

    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_15

    :cond_14
    :goto_8
    move-object v0, p1

    :cond_15
    :goto_9
    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_17

    return-object p2

    :cond_17
    if-eqz p1, :cond_18

    return-object p1

    :cond_18
    return-object v4
.end method

.method public final g1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/o;->y:Lv1/M;

    iput-object v0, p0, Landroidx/leanback/widget/o;->t:Lv1/T;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/o;->u:I

    iput v0, p0, Landroidx/leanback/widget/o;->v:I

    return-void
.end method

.method public final h0(II)V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v2, :cond_0

    iget v2, v2, Landroidx/leanback/widget/i;->f:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroidx/leanback/widget/o;->E:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    add-int/2addr v2, p2

    iput v2, p0, Landroidx/leanback/widget/o;->E:I

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object p1, p1, LD5/A;->c:Ljava/lang/Object;

    check-cast p1, Lc1/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lc1/c;->h(I)V

    :cond_1
    return-void
.end method

.method public final h1(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    sget-object v1, Landroidx/leanback/widget/o;->c0:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lv1/G;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iget v1, p0, Landroidx/leanback/widget/o;->H:I

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/o;->I:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    iget v4, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v4, :cond_1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v3, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    move v0, v3

    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final i(IILv1/T;Ln/g;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/o;->o1(Lv1/M;Lv1/T;)V

    iget p3, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lv1/G;->x()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-gez p1, :cond_2

    iget p2, p0, Landroidx/leanback/widget/o;->X:I

    neg-int p2, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget p2, p0, Landroidx/leanback/widget/o;->W:I

    iget p3, p0, Landroidx/leanback/widget/o;->X:I

    add-int/2addr p2, p3

    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/i;->e(IILn/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    return-void

    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    throw p1
.end method

.method public final i0()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/o;->E:I

    iget-object v0, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object v0, v0, LD5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc1/c;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lc1/c;->h(I)V

    :cond_0
    return-void
.end method

.method public final i1()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/leanback/widget/o;->W:I

    iget v2, p0, Landroidx/leanback/widget/o;->X:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/o;->v:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/o;->X:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/o;->v:I

    sub-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/i;->m(IZ)Z

    return-void
.end method

.method public final j(ILn/g;)V
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    iget v0, v0, Landroidx/leanback/widget/f;->c1:I

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/leanback/widget/o;->B:I

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_0

    add-int v4, v1, v0

    if-ge v3, v4, :cond_0

    invoke-virtual {p2, v3, v2}, Ln/g;->b(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j0(II)V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Landroidx/leanback/widget/o;->E:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-ge v0, v3, :cond_0

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    iput p2, p0, Landroidx/leanback/widget/o;->E:I

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/leanback/widget/o;->E:I

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    if-ge p2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/o;->E:I

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object p1, p1, LD5/A;->c:Ljava/lang/Object;

    check-cast p1, Lc1/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lc1/c;->h(I)V

    :cond_3
    return-void
.end method

.method public final j1(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->d1()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lv1/G;->H()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    const/4 v3, 0x1

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    new-instance v0, Landroidx/leanback/widget/m;

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    iget v2, p0, Landroidx/leanback/widget/o;->Q:I

    if-le v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-direct {v0, p0, p1, v3}, Landroidx/leanback/widget/m;-><init>(Landroidx/leanback/widget/o;IZ)V

    iput v1, p0, Landroidx/leanback/widget/o;->E:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/o;->P0(Lv1/s;)V

    return-void

    :cond_4
    iget-object v0, v2, Landroidx/leanback/widget/m;->u:Landroidx/leanback/widget/o;

    if-eqz p1, :cond_5

    iget p1, v2, Landroidx/leanback/widget/m;->t:I

    iget v0, v0, Landroidx/leanback/widget/o;->p:I

    if-ge p1, v0, :cond_6

    add-int/2addr p1, v3

    iput p1, v2, Landroidx/leanback/widget/m;->t:I

    return-void

    :cond_5
    iget p1, v2, Landroidx/leanback/widget/m;->t:I

    iget v0, v0, Landroidx/leanback/widget/o;->p:I

    neg-int v0, v0

    if-le p1, v0, :cond_6

    sub-int/2addr p1, v3

    iput p1, v2, Landroidx/leanback/widget/m;->t:I

    :cond_6
    :goto_2
    return-void
.end method

.method public final k0(II)V
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v2, :cond_1

    iget v2, v2, Landroidx/leanback/widget/i;->f:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/o;->E:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    add-int v4, v0, v2

    if-gt p1, v4, :cond_1

    add-int v5, p1, p2

    if-le v5, v4, :cond_0

    sub-int/2addr p1, v4

    add-int/2addr p1, v2

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/o;->B:I

    iput v3, p0, Landroidx/leanback/widget/o;->E:I

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p2

    iput v2, p0, Landroidx/leanback/widget/o;->E:I

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object p1, p1, LD5/A;->c:Ljava/lang/Object;

    check-cast p1, Lc1/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lc1/c;->h(I)V

    :cond_2
    return-void
.end method

.method public final k1(Z)Z
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/leanback/widget/o;->I:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/leanback/widget/o;->J:[I

    if-nez v1, :cond_1

    :cond_0
    move/from16 v16, v2

    goto/16 :goto_f

    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v4, v1, Landroidx/leanback/widget/i;->f:I

    iget v5, v1, Landroidx/leanback/widget/i;->g:I

    invoke-virtual {v1, v4, v5}, Landroidx/leanback/widget/i;->j(II)[Ln/g;

    move-result-object v1

    :goto_0
    const/4 v4, -0x1

    move v5, v2

    move v6, v5

    move v7, v4

    :goto_1
    iget v8, v0, Landroidx/leanback/widget/o;->Q:I

    if-ge v5, v8, :cond_17

    if-nez v1, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    aget-object v8, v1, v5

    :goto_2
    if-nez v8, :cond_4

    move v9, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Ln/g;->e()I

    move-result v9

    :goto_3
    move v10, v2

    move v11, v4

    :goto_4
    if-ge v10, v9, :cond_a

    invoke-virtual {v8, v10}, Ln/g;->d(I)I

    move-result v12

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v8, v13}, Ln/g;->d(I)I

    move-result v13

    :goto_5
    if-gt v12, v13, :cond_9

    iget v14, v0, Landroidx/leanback/widget/o;->u:I

    sub-int v14, v12, v14

    invoke-virtual {v0, v14}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_7

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v0, v14}, Landroidx/leanback/widget/o;->h1(Landroid/view/View;)V

    :cond_6
    iget v15, v0, Landroidx/leanback/widget/o;->r:I

    if-nez v15, :cond_7

    invoke-static {v14}, Landroidx/leanback/widget/o;->W0(Landroid/view/View;)I

    move-result v14

    goto :goto_6

    :cond_7
    invoke-static {v14}, Landroidx/leanback/widget/o;->X0(Landroid/view/View;)I

    move-result v14

    :goto_6
    if-le v14, v11, :cond_8

    move v11, v14

    :cond_8
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    :cond_a
    iget-object v8, v0, Landroidx/leanback/widget/o;->t:Lv1/T;

    invoke-virtual {v8}, Lv1/T;->b()I

    move-result v8

    iget-object v9, v0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    iget-boolean v10, v9, Landroidx/recyclerview/widget/RecyclerView;->J:Z

    const/4 v12, 0x1

    if-nez v10, :cond_13

    if-eqz p1, :cond_13

    if-gez v11, :cond_13

    if-lez v8, :cond_13

    if-gez v7, :cond_12

    iget v10, v0, Landroidx/leanback/widget/o;->B:I

    if-gez v10, :cond_b

    move v10, v2

    goto :goto_8

    :cond_b
    if-lt v10, v8, :cond_c

    add-int/lit8 v10, v8, -0x1

    :cond_c
    :goto_8
    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v13

    if-lez v13, :cond_f

    invoke-virtual {v0, v2}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    move-result-object v13

    invoke-virtual {v13}, Lv1/X;->c()I

    move-result v13

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {v0, v14}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    move-result-object v9

    invoke-virtual {v9}, Lv1/X;->c()I

    move-result v9

    if-lt v10, v13, :cond_f

    if-gt v10, v9, :cond_f

    sub-int v14, v10, v13

    sub-int v10, v9, v10

    if-gt v14, v10, :cond_d

    add-int/lit8 v10, v13, -0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v10, v9, 0x1

    :goto_9
    if-gez v10, :cond_e

    add-int/lit8 v14, v8, -0x1

    if-ge v9, v14, :cond_e

    add-int/lit8 v10, v9, 0x1

    goto :goto_a

    :cond_e
    if-lt v10, v8, :cond_f

    if-lez v13, :cond_f

    add-int/lit8 v10, v13, -0x1

    :cond_f
    :goto_a
    if-ltz v10, :cond_12

    if-ge v10, v8, :cond_12

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v9, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    invoke-virtual {v9, v10}, Lv1/M;->d(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Landroidx/leanback/widget/o;->Y:[I

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/leanback/widget/l;

    sget-object v14, Landroidx/leanback/widget/o;->c0:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v14}, Lv1/G;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v2

    iget v2, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v2

    iget v2, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v15, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lv1/G;->K()I

    move-result v3

    invoke-virtual {v0}, Lv1/G;->L()I

    move-result v14

    add-int/2addr v14, v3

    add-int/2addr v14, v15

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v7, v14, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {v0}, Lv1/G;->M()I

    move-result v7

    invoke-virtual {v0}, Lv1/G;->J()I

    move-result v14

    add-int/2addr v14, v7

    add-int/2addr v14, v2

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v14, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {v9, v3, v2}, Landroid/view/View;->measure(II)V

    invoke-static {v9}, Landroidx/leanback/widget/o;->X0(Landroid/view/View;)I

    move-result v2

    aput v2, v10, v16

    invoke-static {v9}, Landroidx/leanback/widget/o;->W0(Landroid/view/View;)I

    move-result v2

    aput v2, v10, v12

    iget-object v2, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    invoke-virtual {v2, v9}, Lv1/M;->i(Landroid/view/View;)V

    goto :goto_b

    :cond_10
    move/from16 v16, v2

    :goto_b
    iget v2, v0, Landroidx/leanback/widget/o;->r:I

    if-nez v2, :cond_11

    aget v2, v10, v12

    :goto_c
    move v7, v2

    goto :goto_d

    :cond_11
    aget v2, v10, v16

    goto :goto_c

    :cond_12
    move/from16 v16, v2

    :goto_d
    if-ltz v7, :cond_14

    move v11, v7

    goto :goto_e

    :cond_13
    move/from16 v16, v2

    :cond_14
    :goto_e
    if-gez v11, :cond_15

    move/from16 v11, v16

    :cond_15
    iget-object v2, v0, Landroidx/leanback/widget/o;->J:[I

    aget v3, v2, v5

    if-eq v3, v11, :cond_16

    aput v11, v2, v5

    move v6, v12

    :cond_16
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    :cond_17
    return v6

    :goto_f
    return v16
.end method

.method public final l0(II)V
    .locals 3

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object v1, v0, LD5/A;->c:Ljava/lang/Object;

    check-cast v1, Lc1/c;

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_0
    iget v2, v1, Lc1/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_0

    iget-object v0, v0, LD5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc1/c;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc1/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l1(IZ)I
    .locals 9

    iget-object v0, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, LE2/j;->b:I

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v3, :cond_b

    if-eqz p1, :cond_b

    if-lez p1, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v4

    :goto_3
    invoke-virtual {p0, v6}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lv1/G;->R()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_4
    invoke-virtual {p0, v6}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v8, v6}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object v8

    if-nez v8, :cond_5

    move v8, v2

    goto :goto_4

    :cond_5
    iget v8, v8, LE2/j;->b:I

    :goto_4
    if-ne v0, v2, :cond_6

    move v1, v6

    move-object v5, v7

    move v0, v8

    goto :goto_6

    :cond_6
    if-ne v8, v0, :cond_a

    if-lez p1, :cond_7

    if-gt v6, v1, :cond_8

    :cond_7
    if-gez p1, :cond_a

    if-ge v6, v1, :cond_a

    :cond_8
    if-lez p1, :cond_9

    add-int/lit8 p1, p1, -0x1

    :goto_5
    move v1, v6

    move-object v5, v7

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_e

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lv1/G;->R()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p0, Landroidx/leanback/widget/o;->z:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    iget p2, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p2, p2, -0x21

    iput p2, p0, Landroidx/leanback/widget/o;->z:I

    :cond_c
    iput v1, p0, Landroidx/leanback/widget/o;->B:I

    return p1

    :cond_d
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v5, p2, v0}, Landroidx/leanback/widget/o;->s1(Landroid/view/View;Landroid/view/View;Z)V

    :cond_e
    return p1
.end method

.method public final m1()V
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v2, p0, Landroidx/leanback/widget/o;->B:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/o;->X:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/o;->W:I

    iget v3, p0, Landroidx/leanback/widget/o;->X:I

    add-int/2addr v0, v3

    :goto_0
    iget v3, v1, Landroidx/leanback/widget/i;->g:I

    iget v4, v1, Landroidx/leanback/widget/i;->f:I

    if-lt v3, v4, :cond_2

    if-le v3, v2, :cond_2

    iget-boolean v4, v1, Landroidx/leanback/widget/i;->c:Z

    if-nez v4, :cond_1

    iget-object v4, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v4, v3}, LL2/o;->r(I)I

    move-result v3

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v4, v3}, LL2/o;->r(I)I

    move-result v3

    if-gt v3, v0, :cond_2

    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    iget v4, v1, Landroidx/leanback/widget/i;->g:I

    invoke-virtual {v3, v4}, LL2/o;->C(I)V

    iget v3, v1, Landroidx/leanback/widget/i;->g:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroidx/leanback/widget/i;->g:I

    goto :goto_0

    :cond_2
    iget v0, v1, Landroidx/leanback/widget/i;->g:I

    iget v2, v1, Landroidx/leanback/widget/i;->f:I

    if-ge v0, v2, :cond_3

    const/4 v0, -0x1

    iput v0, v1, Landroidx/leanback/widget/i;->g:I

    iput v0, v1, Landroidx/leanback/widget/i;->f:I

    :cond_3
    return-void
.end method

.method public final n0(Lv1/M;Lv1/T;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    iget v1, v0, Landroidx/leanback/widget/o;->Q:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lv1/T;->b()I

    move-result v1

    if-gez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    return-void

    :cond_2
    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v3, v1, 0x200

    if-nez v3, :cond_3

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iput-object v2, v0, Landroidx/leanback/widget/o;->J:[I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/o;->v0(Lv1/M;)V

    return-void

    :cond_3
    and-int/lit8 v1, v1, -0x4

    const/4 v7, 0x1

    or-int/2addr v1, v7

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual/range {p0 .. p2}, Landroidx/leanback/widget/o;->o1(Lv1/M;Lv1/T;)V

    iget-boolean v1, v6, Lv1/T;->g:Z

    const/high16 v4, -0x80000000

    iget-object v8, v0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    const/4 v5, -0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->z1()V

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v1

    iget-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v2, :cond_c

    if-lez v1, :cond_c

    invoke-virtual {v0, v9}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    move-result-object v2

    iget v2, v2, Lv1/X;->d:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    move-result-object v6

    iget v6, v6, Lv1/X;->d:I

    const v3, 0x7fffffff

    :goto_1
    if-ge v9, v1, :cond_a

    invoke-virtual {v0, v9}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/l;

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v11, v10, Lv1/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->G(Lv1/X;)I

    move-result v10

    goto :goto_3

    :cond_5
    :goto_2
    move v10, v5

    :goto_3
    iget-object v11, v8, Lv1/H;->a:Lv1/X;

    invoke-virtual {v11}, Lv1/X;->l()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v8, Lv1/H;->a:Lv1/X;

    invoke-virtual {v11}, Lv1/X;->i()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_6

    iget v11, v0, Landroidx/leanback/widget/o;->B:I

    iget-object v12, v8, Lv1/H;->a:Lv1/X;

    invoke-virtual {v12}, Lv1/X;->b()I

    move-result v12

    if-eq v11, v12, :cond_8

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v0, Landroidx/leanback/widget/o;->B:I

    iget-object v8, v8, Lv1/H;->a:Lv1/X;

    invoke-virtual {v8}, Lv1/X;->b()I

    move-result v8

    if-ne v11, v8, :cond_8

    :cond_7
    if-lt v10, v2, :cond_8

    if-le v10, v6, :cond_9

    :cond_8
    iget-object v8, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v7}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v8, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v8, v7}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_a
    if-le v4, v3, :cond_b

    sub-int/2addr v4, v3

    iput v4, v0, Landroidx/leanback/widget/o;->v:I

    :cond_b
    invoke-virtual {v0}, Landroidx/leanback/widget/o;->R0()V

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->i1()V

    :cond_c
    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, -0x4

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->g1()V

    return-void

    :cond_d
    iget-boolean v1, v6, Lv1/T;->k:Z

    iget-object v10, v0, Landroidx/leanback/widget/o;->w:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_f

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v1

    move v11, v9

    :goto_4
    if-ge v11, v1, :cond_f

    invoke-virtual {v0, v11}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lv1/X;

    move-result-object v12

    iget v12, v12, Lv1/X;->d:I

    if-ltz v12, :cond_e

    iget-object v13, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v13, v12}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object v13

    if-eqz v13, :cond_e

    iget v13, v13, LE2/j;->b:I

    invoke-virtual {v10, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_f
    iget-object v1, v0, Lv1/G;->e:Lv1/s;

    if-eqz v1, :cond_10

    iget-boolean v1, v1, Lv1/s;->e:Z

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    iget v1, v0, Landroidx/leanback/widget/o;->T:I

    if-nez v1, :cond_11

    move v11, v7

    goto :goto_6

    :cond_11
    :goto_5
    move v11, v9

    :goto_6
    iget v1, v0, Landroidx/leanback/widget/o;->B:I

    if-eq v1, v5, :cond_12

    iget v12, v0, Landroidx/leanback/widget/o;->E:I

    if-eq v12, v4, :cond_12

    add-int/2addr v1, v12

    iput v1, v0, Landroidx/leanback/widget/o;->B:I

    :cond_12
    iput v9, v0, Landroidx/leanback/widget/o;->E:I

    iget v1, v0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {v0, v1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v12

    iget v13, v0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v14

    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v1, :cond_13

    iget v15, v1, Landroidx/leanback/widget/i;->f:I

    goto :goto_7

    :cond_13
    move v15, v5

    :goto_7
    if-eqz v1, :cond_14

    iget v1, v1, Landroidx/leanback/widget/i;->g:I

    :goto_8
    move/from16 v16, v2

    goto :goto_9

    :cond_14
    move v1, v5

    goto :goto_8

    :goto_9
    iget v2, v0, Landroidx/leanback/widget/o;->r:I

    if-nez v2, :cond_15

    iget v2, v6, Lv1/T;->o:I

    iget v3, v6, Lv1/T;->p:I

    goto :goto_a

    :cond_15
    iget v3, v6, Lv1/T;->o:I

    iget v2, v6, Lv1/T;->p:I

    :goto_a
    iget-object v4, v0, Landroidx/leanback/widget/o;->t:Lv1/T;

    invoke-virtual {v4}, Lv1/T;->b()I

    move-result v4

    if-nez v4, :cond_16

    iput v5, v0, Landroidx/leanback/widget/o;->B:I

    move/from16 v18, v7

    goto :goto_b

    :cond_16
    move/from16 v18, v7

    iget v7, v0, Landroidx/leanback/widget/o;->B:I

    if-lt v7, v4, :cond_17

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Landroidx/leanback/widget/o;->B:I

    goto :goto_b

    :cond_17
    if-ne v7, v5, :cond_18

    if-lez v4, :cond_18

    iput v9, v0, Landroidx/leanback/widget/o;->B:I

    :cond_18
    :goto_b
    iget-object v4, v0, Landroidx/leanback/widget/o;->t:Lv1/T;

    iget-boolean v4, v4, Lv1/T;->f:Z

    iget-object v7, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    const/high16 v19, 0x40000

    if-nez v4, :cond_23

    iget-object v4, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v4, :cond_23

    iget v9, v4, Landroidx/leanback/widget/i;->f:I

    if-ltz v9, :cond_23

    iget v9, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v9, v9, 0x100

    if-nez v9, :cond_23

    iget v4, v4, Landroidx/leanback/widget/i;->e:I

    iget v9, v0, Landroidx/leanback/widget/o;->Q:I

    if-ne v4, v9, :cond_23

    iget-object v1, v7, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/W;

    iget-object v4, v7, LK1/c;->q:Ljava/lang/Object;

    check-cast v4, Landroidx/leanback/widget/W;

    iget v5, v0, Lv1/G;->n:I

    iput v5, v1, Landroidx/leanback/widget/W;->i:I

    iget v5, v0, Lv1/G;->o:I

    iput v5, v4, Landroidx/leanback/widget/W;->i:I

    invoke-virtual {v0}, Lv1/G;->K()I

    move-result v5

    invoke-virtual {v0}, Lv1/G;->L()I

    move-result v9

    iput v5, v1, Landroidx/leanback/widget/W;->j:I

    iput v9, v1, Landroidx/leanback/widget/W;->k:I

    invoke-virtual {v0}, Lv1/G;->M()I

    move-result v1

    invoke-virtual {v0}, Lv1/G;->J()I

    move-result v5

    iput v1, v4, Landroidx/leanback/widget/W;->j:I

    iput v5, v4, Landroidx/leanback/widget/W;->k:I

    iget-object v1, v7, LK1/c;->s:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/W;

    iget v1, v1, Landroidx/leanback/widget/W;->i:I

    iput v1, v0, Landroidx/leanback/widget/o;->W:I

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->C1()V

    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v4, v0, Landroidx/leanback/widget/o;->N:I

    iput v4, v1, Landroidx/leanback/widget/i;->d:I

    iget v4, v0, Landroidx/leanback/widget/o;->z:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Landroidx/leanback/widget/o;->z:I

    iget v4, v0, Landroidx/leanback/widget/o;->B:I

    iput v4, v1, Landroidx/leanback/widget/i;->i:I

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v9

    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v1, v1, Landroidx/leanback/widget/i;->f:I

    iget v4, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v0, Landroidx/leanback/widget/o;->z:I

    move v15, v1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v9, :cond_21

    invoke-virtual {v0, v1}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v5

    if-eq v15, v5, :cond_19

    :goto_d
    move/from16 v17, v9

    move/from16 v21, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    move/from16 v22, v14

    move v14, v1

    move v9, v2

    move v11, v3

    goto/16 :goto_12

    :cond_19
    iget-object v5, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v5, v15}, Landroidx/leanback/widget/i;->k(I)LE2/j;

    move-result-object v5

    if-nez v5, :cond_1a

    goto :goto_d

    :cond_1a
    move/from16 v21, v2

    iget v2, v5, LE2/j;->b:I

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/o;->a1(I)I

    move-result v2

    move/from16 p1, v2

    iget-object v2, v7, LK1/c;->t:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/W;

    iget v2, v2, Landroidx/leanback/widget/W;->j:I

    add-int v2, p1, v2

    move/from16 p1, v2

    iget v2, v0, Landroidx/leanback/widget/o;->G:I

    sub-int v2, p1, v2

    move/from16 p1, v2

    iget-object v2, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v2, v4}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v2

    move/from16 v16, v2

    sget-object v2, Landroidx/leanback/widget/o;->c0:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2}, Landroidx/leanback/widget/o;->B(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v17, v2

    iget v2, v0, Landroidx/leanback/widget/o;->r:I

    if-nez v2, :cond_1b

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_e

    :cond_1b
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v22, v2

    move-object/from16 v2, v17

    check-cast v2, Landroidx/leanback/widget/l;

    iget-object v2, v2, Lv1/H;->a:Lv1/X;

    iget v2, v2, Lv1/X;->j:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1c

    iget v2, v0, Landroidx/leanback/widget/o;->z:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroidx/leanback/widget/o;->z:I

    iget-object v2, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    move/from16 v23, v3

    iget-object v3, v0, Lv1/G;->a:Lr0/C;

    invoke-virtual {v3, v4}, Lr0/C;->l(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4}, Lv1/G;->C0(Lv1/M;ILandroid/view/View;)V

    iget-object v2, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    invoke-virtual {v2, v15}, Lv1/M;->d(I)Landroid/view/View;

    move-result-object v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lv1/G;->b(Landroid/view/View;IZ)V

    goto :goto_f

    :cond_1c
    move/from16 v23, v3

    :goto_f
    invoke-virtual {v0, v4}, Landroidx/leanback/widget/o;->h1(Landroid/view/View;)V

    iget v2, v0, Landroidx/leanback/widget/o;->r:I

    if-nez v2, :cond_1d

    invoke-static {v4}, Landroidx/leanback/widget/o;->X0(Landroid/view/View;)I

    move-result v2

    :goto_10
    add-int v3, v16, v2

    goto :goto_11

    :cond_1d
    invoke-static {v4}, Landroidx/leanback/widget/o;->W0(Landroid/view/View;)I

    move-result v2

    goto :goto_10

    :goto_11
    iget v5, v5, LE2/j;->b:I

    move/from16 v17, v9

    move/from16 v24, v13

    move/from16 v9, v21

    move v13, v2

    move v2, v5

    move/from16 v21, v11

    move/from16 v11, v23

    move/from16 v5, p1

    move-object/from16 v23, v12

    move/from16 v12, v22

    move/from16 v22, v14

    move v14, v1

    move-object v1, v4

    move v4, v3

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/o;->f1(Landroid/view/View;IIII)V

    if-eq v12, v13, :cond_20

    :goto_12
    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v1, v1, Landroidx/leanback/widget/i;->g:I

    add-int/lit8 v2, v17, -0x1

    :goto_13
    if-lt v2, v14, :cond_1e

    invoke-virtual {v0, v2}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    iget-object v5, v0, Lv1/G;->a:Lr0/C;

    invoke-virtual {v5, v3}, Lr0/C;->l(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v5, v3}, Lv1/G;->C0(Lv1/M;ILandroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_1e
    iget-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v2, v15}, Landroidx/leanback/widget/i;->l(I)V

    iget v2, v0, Landroidx/leanback/widget/o;->z:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->R0()V

    iget v2, v0, Landroidx/leanback/widget/o;->B:I

    if-ltz v2, :cond_22

    if-gt v2, v1, :cond_22

    :goto_14
    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v2, v1, Landroidx/leanback/widget/i;->g:I

    iget v3, v0, Landroidx/leanback/widget/o;->B:I

    if-ge v2, v3, :cond_22

    invoke-virtual {v1}, Landroidx/leanback/widget/i;->a()Z

    goto :goto_14

    :cond_1f
    :goto_15
    iget-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v2}, Landroidx/leanback/widget/i;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v2, v2, Landroidx/leanback/widget/i;->g:I

    if-ge v2, v1, :cond_22

    goto :goto_15

    :cond_20
    add-int/lit8 v1, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move v2, v9

    move v3, v11

    move/from16 v9, v17

    move/from16 v11, v21

    move/from16 v14, v22

    move-object/from16 v12, v23

    move/from16 v13, v24

    goto/16 :goto_c

    :cond_21
    move v9, v2

    move/from16 v21, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    move/from16 v22, v14

    move v11, v3

    :cond_22
    invoke-virtual {v0}, Landroidx/leanback/widget/o;->B1()V

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->C1()V

    goto/16 :goto_1c

    :cond_23
    move v9, v2

    move/from16 v21, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    move/from16 v22, v14

    move v11, v3

    iget v2, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v3, v2, -0x101

    iput v3, v0, Landroidx/leanback/widget/o;->z:I

    iget-object v3, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v3, :cond_25

    iget v4, v0, Landroidx/leanback/widget/o;->Q:I

    iget v12, v3, Landroidx/leanback/widget/i;->e:I

    if-ne v4, v12, :cond_25

    and-int v2, v2, v19

    if-eqz v2, :cond_24

    move/from16 v2, v18

    goto :goto_16

    :cond_24
    const/4 v2, 0x0

    :goto_16
    iget-boolean v3, v3, Landroidx/leanback/widget/i;->c:Z

    if-eq v2, v3, :cond_29

    :cond_25
    iget v2, v0, Landroidx/leanback/widget/o;->Q:I

    move/from16 v3, v18

    if-ne v2, v3, :cond_26

    new-instance v2, Landroidx/leanback/widget/N;

    invoke-direct {v2}, Landroidx/leanback/widget/N;-><init>()V

    goto :goto_18

    :cond_26
    new-instance v4, Landroidx/leanback/widget/Q;

    invoke-direct {v4}, Landroidx/leanback/widget/i;-><init>()V

    new-instance v12, Landroidx/datastore/preferences/protobuf/k;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->bitCount(I)I

    move-result v13

    if-eq v13, v3, :cond_27

    const/16 v13, 0x3f

    invoke-static {v13}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v13

    shl-int/2addr v13, v3

    goto :goto_17

    :cond_27
    move/from16 v13, v16

    :goto_17
    add-int/lit8 v3, v13, -0x1

    iput v3, v12, Landroidx/datastore/preferences/protobuf/k;->c:I

    new-array v3, v13, [Ljava/lang/Object;

    iput-object v3, v12, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    iput-object v12, v4, Landroidx/leanback/widget/Q;->j:Landroidx/datastore/preferences/protobuf/k;

    iput v5, v4, Landroidx/leanback/widget/Q;->k:I

    invoke-virtual {v4, v2}, Landroidx/leanback/widget/i;->n(I)V

    move-object v2, v4

    :goto_18
    iput-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget-object v3, v0, Landroidx/leanback/widget/o;->b0:LL2/o;

    iput-object v3, v2, Landroidx/leanback/widget/i;->b:LL2/o;

    iget v3, v0, Landroidx/leanback/widget/o;->z:I

    and-int v3, v3, v19

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_19

    :cond_28
    const/4 v3, 0x0

    :goto_19
    iput-boolean v3, v2, Landroidx/leanback/widget/i;->c:Z

    :cond_29
    iget-object v2, v7, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/W;

    iget-object v3, v7, LK1/c;->q:Ljava/lang/Object;

    check-cast v3, Landroidx/leanback/widget/W;

    const/high16 v4, -0x80000000

    iput v4, v2, Landroidx/leanback/widget/W;->b:I

    const v4, 0x7fffffff

    iput v4, v2, Landroidx/leanback/widget/W;->a:I

    iget-object v2, v7, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/W;

    iget v4, v0, Lv1/G;->n:I

    iput v4, v2, Landroidx/leanback/widget/W;->i:I

    iget v4, v0, Lv1/G;->o:I

    iput v4, v3, Landroidx/leanback/widget/W;->i:I

    invoke-virtual {v0}, Lv1/G;->K()I

    move-result v4

    invoke-virtual {v0}, Lv1/G;->L()I

    move-result v12

    iput v4, v2, Landroidx/leanback/widget/W;->j:I

    iput v12, v2, Landroidx/leanback/widget/W;->k:I

    invoke-virtual {v0}, Lv1/G;->M()I

    move-result v2

    invoke-virtual {v0}, Lv1/G;->J()I

    move-result v4

    iput v2, v3, Landroidx/leanback/widget/W;->j:I

    iput v4, v3, Landroidx/leanback/widget/W;->k:I

    iget-object v2, v7, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/W;

    iget v2, v2, Landroidx/leanback/widget/W;->i:I

    iput v2, v0, Landroidx/leanback/widget/o;->W:I

    const/4 v2, 0x0

    iput v2, v0, Landroidx/leanback/widget/o;->G:I

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->C1()V

    iget-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v3, v0, Landroidx/leanback/widget/o;->N:I

    iput v3, v2, Landroidx/leanback/widget/i;->d:I

    iget-object v2, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    invoke-virtual {v0, v2}, Lv1/G;->q(Lv1/M;)V

    iget-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iput v5, v2, Landroidx/leanback/widget/i;->g:I

    iput v5, v2, Landroidx/leanback/widget/i;->f:I

    iget-object v3, v7, LK1/c;->s:Ljava/lang/Object;

    check-cast v3, Landroidx/leanback/widget/W;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/leanback/widget/W;->b:I

    iput v4, v3, Landroidx/leanback/widget/W;->d:I

    const v4, 0x7fffffff

    iput v4, v3, Landroidx/leanback/widget/W;->a:I

    iput v4, v3, Landroidx/leanback/widget/W;->c:I

    iget v3, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v4, v3, -0x5

    iput v4, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v3, v3, -0x15

    if-eqz v22, :cond_2a

    const/16 v4, 0x10

    goto :goto_1a

    :cond_2a
    const/4 v4, 0x0

    :goto_1a
    or-int/2addr v3, v4

    iput v3, v0, Landroidx/leanback/widget/o;->z:I

    if-eqz v21, :cond_2c

    if-ltz v15, :cond_2b

    iget v3, v0, Landroidx/leanback/widget/o;->B:I

    if-gt v3, v1, :cond_2b

    if-ge v3, v15, :cond_2c

    :cond_2b
    iget v15, v0, Landroidx/leanback/widget/o;->B:I

    move v1, v15

    :cond_2c
    iput v15, v2, Landroidx/leanback/widget/i;->i:I

    if-eq v1, v5, :cond_2d

    :goto_1b
    iget-object v2, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    invoke-virtual {v2}, Landroidx/leanback/widget/i;->a()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0, v1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_1b

    :cond_2d
    :goto_1c
    invoke-virtual {v0}, Landroidx/leanback/widget/o;->B1()V

    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v7, v1, Landroidx/leanback/widget/i;->f:I

    iget v12, v1, Landroidx/leanback/widget/i;->g:I

    neg-int v4, v9

    neg-int v5, v11

    iget v1, v0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {v0, v1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2e

    if-eqz v21, :cond_2e

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/o;->t1(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_2e
    if-eqz v1, :cond_2f

    if-eqz v22, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1f

    :cond_2f
    if-nez v22, :cond_33

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1e

    :cond_30
    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_32

    invoke-virtual {v0, v3}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v13

    if-eqz v13, :cond_31

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1e

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_32
    :goto_1e
    if-eqz v21, :cond_33

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/o;->t1(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_33
    :goto_1f
    invoke-virtual {v0}, Landroidx/leanback/widget/o;->R0()V

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->i1()V

    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v2, v1, Landroidx/leanback/widget/i;->f:I

    if-ne v2, v7, :cond_2d

    iget v1, v1, Landroidx/leanback/widget/i;->g:I

    if-ne v1, v12, :cond_2d

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->n1()V

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->m1()V

    iget-boolean v1, v6, Lv1/T;->k:Z

    if-eqz v1, :cond_45

    iget-object v1, v0, Landroidx/leanback/widget/o;->y:Lv1/M;

    iget-object v1, v1, Lv1/M;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_2c

    :cond_34
    iget-object v3, v0, Landroidx/leanback/widget/o;->x:[I

    if-eqz v3, :cond_35

    array-length v4, v3

    if-le v2, v4, :cond_38

    :cond_35
    if-nez v3, :cond_36

    const/16 v3, 0x10

    goto :goto_20

    :cond_36
    array-length v3, v3

    :goto_20
    if-ge v3, v2, :cond_37

    shl-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_37
    new-array v3, v3, [I

    iput-object v3, v0, Landroidx/leanback/widget/o;->x:[I

    :cond_38
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    if-ge v3, v2, :cond_3a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/X;

    invoke-virtual {v5}, Lv1/X;->b()I

    move-result v5

    if-ltz v5, :cond_39

    iget-object v6, v0, Landroidx/leanback/widget/o;->x:[I

    add-int/lit8 v7, v4, 0x1

    aput v5, v6, v4

    move v4, v7

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3a
    if-lez v4, :cond_44

    iget-object v1, v0, Landroidx/leanback/widget/o;->x:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->sort([III)V

    iget-object v1, v0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget-object v3, v0, Landroidx/leanback/widget/o;->x:[I

    iget-object v5, v1, Landroidx/leanback/widget/i;->a:[Ljava/lang/Object;

    iget v6, v1, Landroidx/leanback/widget/i;->g:I

    if-ltz v6, :cond_3b

    invoke-static {v3, v2, v4, v6}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v7

    goto :goto_22

    :cond_3b
    const/4 v7, 0x0

    :goto_22
    if-gez v7, :cond_3f

    neg-int v2, v7

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    iget-boolean v7, v1, Landroidx/leanback/widget/i;->c:Z

    if-eqz v7, :cond_3c

    iget-object v7, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v7, v6}, LL2/o;->r(I)I

    move-result v7

    iget-object v8, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v8, v6}, LL2/o;->t(I)I

    move-result v6

    sub-int/2addr v7, v6

    iget v6, v1, Landroidx/leanback/widget/i;->d:I

    sub-int/2addr v7, v6

    goto :goto_23

    :cond_3c
    iget-object v7, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v7, v6}, LL2/o;->r(I)I

    move-result v7

    iget-object v8, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v8, v6}, LL2/o;->t(I)I

    move-result v6

    add-int/2addr v6, v7

    iget v7, v1, Landroidx/leanback/widget/i;->d:I

    add-int/2addr v7, v6

    :goto_23
    move/from16 v16, v7

    :goto_24
    if-ge v2, v4, :cond_3f

    aget v13, v3, v2

    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-gez v6, :cond_3d

    const/4 v15, 0x0

    goto :goto_25

    :cond_3d
    move v15, v6

    :goto_25
    iget-object v6, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    const/4 v7, 0x1

    invoke-virtual {v6, v13, v7, v5, v7}, LL2/o;->k(IZ[Ljava/lang/Object;Z)I

    move-result v14

    iget-object v11, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    const/16 v20, 0x0

    aget-object v12, v5, v20

    invoke-virtual/range {v11 .. v16}, LL2/o;->a(Ljava/lang/Object;IIII)V

    iget-boolean v6, v1, Landroidx/leanback/widget/i;->c:Z

    if-eqz v6, :cond_3e

    sub-int v16, v16, v14

    iget v6, v1, Landroidx/leanback/widget/i;->d:I

    sub-int v16, v16, v6

    goto :goto_26

    :cond_3e
    add-int v16, v16, v14

    iget v6, v1, Landroidx/leanback/widget/i;->d:I

    add-int v16, v16, v6

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3f
    iget v2, v1, Landroidx/leanback/widget/i;->f:I

    if-ltz v2, :cond_40

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v4

    goto :goto_27

    :cond_40
    const/4 v4, 0x0

    :goto_27
    if-gez v4, :cond_44

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x2

    iget-boolean v6, v1, Landroidx/leanback/widget/i;->c:Z

    if-eqz v6, :cond_41

    iget-object v6, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v6, v2}, LL2/o;->r(I)I

    move-result v2

    goto :goto_28

    :cond_41
    iget-object v6, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v6, v2}, LL2/o;->r(I)I

    move-result v2

    :goto_28
    if-ltz v4, :cond_44

    aget v13, v3, v4

    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-gez v6, :cond_42

    const/4 v15, 0x0

    goto :goto_29

    :cond_42
    move v15, v6

    :goto_29
    iget-object v6, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v13, v8, v5, v7}, LL2/o;->k(IZ[Ljava/lang/Object;Z)I

    move-result v14

    iget-boolean v6, v1, Landroidx/leanback/widget/i;->c:Z

    if-eqz v6, :cond_43

    iget v6, v1, Landroidx/leanback/widget/i;->d:I

    add-int/2addr v2, v6

    add-int/2addr v2, v14

    :goto_2a
    move/from16 v16, v2

    goto :goto_2b

    :cond_43
    iget v6, v1, Landroidx/leanback/widget/i;->d:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v14

    goto :goto_2a

    :goto_2b
    iget-object v11, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    const/16 v20, 0x0

    aget-object v12, v5, v20

    invoke-virtual/range {v11 .. v16}, LL2/o;->a(Ljava/lang/Object;IIII)V

    add-int/lit8 v4, v4, -0x1

    move/from16 v2, v16

    goto :goto_28

    :cond_44
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->clear()V

    :cond_45
    :goto_2c
    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_46

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    goto :goto_2d

    :cond_46
    invoke-virtual {v0}, Landroidx/leanback/widget/o;->A1()V

    :goto_2d
    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_48

    iget v1, v0, Landroidx/leanback/widget/o;->B:I

    move/from16 v2, v24

    if-ne v1, v2, :cond_47

    invoke-virtual {v0, v1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v3, v23

    if-ne v1, v3, :cond_47

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_48

    :cond_47
    invoke-virtual {v0}, Landroidx/leanback/widget/o;->S0()V

    goto :goto_2e

    :cond_48
    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, 0x14

    const/16 v4, 0x10

    if-ne v1, v4, :cond_49

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->S0()V

    :cond_49
    :goto_2e
    invoke-virtual {v0}, Landroidx/leanback/widget/o;->T0()V

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_4d

    iget v2, v0, Landroidx/leanback/widget/o;->r:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4a

    iget v1, v0, Lv1/G;->o:I

    neg-int v1, v1

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v2

    if-lez v2, :cond_4c

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_4c

    :goto_2f
    add-int/2addr v1, v2

    goto :goto_30

    :cond_4a
    and-int v1, v1, v19

    if-eqz v1, :cond_4b

    iget v1, v0, Lv1/G;->n:I

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v2

    if-lez v2, :cond_4c

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v1, :cond_4c

    move v1, v2

    goto :goto_30

    :cond_4b
    const/4 v5, 0x0

    iget v1, v0, Lv1/G;->n:I

    neg-int v1, v1

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v2

    if-lez v2, :cond_4c

    invoke-virtual {v0, v5}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gez v2, :cond_4c

    goto :goto_2f

    :cond_4c
    :goto_30
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/o;->p1(I)I

    :cond_4d
    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, -0x4

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->g1()V

    return-void
.end method

.method public final n1()V
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v2, p0, Landroidx/leanback/widget/o;->B:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/o;->W:I

    iget v3, p0, Landroidx/leanback/widget/o;->X:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/o;->X:I

    neg-int v0, v0

    :goto_0
    iget v3, v1, Landroidx/leanback/widget/i;->g:I

    iget v4, v1, Landroidx/leanback/widget/i;->f:I

    if-lt v3, v4, :cond_2

    if-ge v4, v2, :cond_2

    iget-object v3, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    invoke-virtual {v3, v4}, LL2/o;->t(I)I

    move-result v3

    iget-boolean v4, v1, Landroidx/leanback/widget/i;->c:Z

    if-nez v4, :cond_1

    iget-object v4, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    iget v5, v1, Landroidx/leanback/widget/i;->f:I

    invoke-virtual {v4, v5}, LL2/o;->r(I)I

    move-result v4

    add-int/2addr v4, v3

    if-gt v4, v0, :cond_2

    goto :goto_1

    :cond_1
    iget-object v4, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    iget v5, v1, Landroidx/leanback/widget/i;->f:I

    invoke-virtual {v4, v5}, LL2/o;->r(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v4, v0, :cond_2

    :goto_1
    iget-object v3, v1, Landroidx/leanback/widget/i;->b:LL2/o;

    iget v4, v1, Landroidx/leanback/widget/i;->f:I

    invoke-virtual {v3, v4}, LL2/o;->C(I)V

    iget v3, v1, Landroidx/leanback/widget/i;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroidx/leanback/widget/i;->f:I

    goto :goto_0

    :cond_2
    iget v0, v1, Landroidx/leanback/widget/i;->g:I

    iget v2, v1, Landroidx/leanback/widget/i;->f:I

    if-ge v0, v2, :cond_3

    const/4 v0, -0x1

    iput v0, v1, Landroidx/leanback/widget/i;->g:I

    iput v0, v1, Landroidx/leanback/widget/i;->f:I

    :cond_3
    return-void
.end method

.method public final o0(Lv1/T;)V
    .locals 0

    return-void
.end method

.method public final o1(Lv1/M;Lv1/T;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/o;->y:Lv1/M;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/o;->t:Lv1/T;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "GridLayoutManager"

    const-string v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/o;->y:Lv1/M;

    iput-object p2, p0, Landroidx/leanback/widget/o;->t:Lv1/T;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/o;->u:I

    iput p1, p0, Landroidx/leanback/widget/o;->v:I

    return-void
.end method

.method public final p0(Lv1/M;Lv1/T;II)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/o;->o1(Lv1/M;Lv1/T;)V

    iget p1, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Lv1/G;->M()I

    move-result p4

    invoke-virtual {p0}, Lv1/G;->J()I

    move-result v0

    :goto_0
    add-int/2addr v0, p4

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-virtual {p0}, Lv1/G;->K()I

    move-result p4

    invoke-virtual {p0}, Lv1/G;->L()I

    move-result v0

    goto :goto_0

    :goto_1
    iput p2, p0, Landroidx/leanback/widget/o;->K:I

    iget p4, p0, Landroidx/leanback/widget/o;->H:I

    const/4 v1, -0x2

    const-string v2, "wrong spec"

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-ne p4, v1, :cond_8

    iget p2, p0, Landroidx/leanback/widget/o;->R:I

    if-nez p2, :cond_1

    move p2, v5

    :cond_1
    iput p2, p0, Landroidx/leanback/widget/o;->Q:I

    const/4 p4, 0x0

    iput p4, p0, Landroidx/leanback/widget/o;->I:I

    iget-object p4, p0, Landroidx/leanback/widget/o;->J:[I

    if-eqz p4, :cond_2

    array-length p4, p4

    if-eq p4, p2, :cond_3

    :cond_2
    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/leanback/widget/o;->J:[I

    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/o;->t:Lv1/T;

    iget-boolean p2, p2, Lv1/T;->g:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->z1()V

    :cond_4
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/o;->k1(Z)Z

    if-eq p3, v4, :cond_7

    if-eqz p3, :cond_6

    if-ne p3, v3, :cond_5

    iget p2, p0, Landroidx/leanback/widget/o;->K:I

    goto/16 :goto_5

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->c1()I

    move-result p2

    :goto_2
    add-int/2addr p2, v0

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->c1()I

    move-result p2

    add-int/2addr p2, v0

    iget p3, p0, Landroidx/leanback/widget/o;->K:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_5

    :cond_8
    if-eq p3, v4, :cond_d

    if-eqz p3, :cond_a

    if-ne p3, v3, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-nez p4, :cond_b

    sub-int p4, p2, v0

    :cond_b
    iput p4, p0, Landroidx/leanback/widget/o;->I:I

    iget p2, p0, Landroidx/leanback/widget/o;->R:I

    if-nez p2, :cond_c

    move p2, v5

    :cond_c
    iput p2, p0, Landroidx/leanback/widget/o;->Q:I

    mul-int/2addr p4, p2

    iget p3, p0, Landroidx/leanback/widget/o;->O:I

    sub-int/2addr p2, v5

    mul-int/2addr p2, p3

    add-int/2addr p2, p4

    goto :goto_2

    :cond_d
    :goto_3
    iget v1, p0, Landroidx/leanback/widget/o;->R:I

    if-nez v1, :cond_e

    if-nez p4, :cond_e

    iput v5, p0, Landroidx/leanback/widget/o;->Q:I

    sub-int p4, p2, v0

    iput p4, p0, Landroidx/leanback/widget/o;->I:I

    goto :goto_4

    :cond_e
    if-nez v1, :cond_f

    iput p4, p0, Landroidx/leanback/widget/o;->I:I

    iget v1, p0, Landroidx/leanback/widget/o;->O:I

    add-int v2, p2, v1

    add-int/2addr p4, v1

    div-int/2addr v2, p4

    iput v2, p0, Landroidx/leanback/widget/o;->Q:I

    goto :goto_4

    :cond_f
    if-nez p4, :cond_10

    iput v1, p0, Landroidx/leanback/widget/o;->Q:I

    sub-int p4, p2, v0

    iget v2, p0, Landroidx/leanback/widget/o;->O:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v2

    sub-int/2addr p4, v3

    div-int/2addr p4, v1

    iput p4, p0, Landroidx/leanback/widget/o;->I:I

    goto :goto_4

    :cond_10
    iput v1, p0, Landroidx/leanback/widget/o;->Q:I

    iput p4, p0, Landroidx/leanback/widget/o;->I:I

    :goto_4
    if-ne p3, v4, :cond_11

    iget p3, p0, Landroidx/leanback/widget/o;->I:I

    iget p4, p0, Landroidx/leanback/widget/o;->Q:I

    mul-int/2addr p3, p4

    iget v1, p0, Landroidx/leanback/widget/o;->O:I

    sub-int/2addr p4, v5

    mul-int/2addr p4, v1

    add-int/2addr p4, p3

    add-int/2addr p4, v0

    if-ge p4, p2, :cond_11

    move p2, p4

    :cond_11
    :goto_5
    iget p3, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p3, :cond_12

    iget-object p3, p0, Lv1/G;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_6

    :cond_12
    iget-object p3, p0, Lv1/G;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    return-void
.end method

.method public final p1(I)I
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_3

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/o;->U:LK1/c;

    if-lez p1, :cond_1

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iget v1, v0, Landroidx/leanback/widget/W;->a:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Landroidx/leanback/widget/W;->c:I

    if-le p1, v0, :cond_3

    goto :goto_0

    :cond_1
    if-gez p1, :cond_3

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iget v1, v0, Landroidx/leanback/widget/W;->b:I

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroidx/leanback/widget/W;->d:I

    if-ge p1, v0, :cond_3

    :goto_0
    move p1, v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    neg-int v1, p1

    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v3

    iget v4, p0, Landroidx/leanback/widget/o;->r:I

    if-ne v4, v2, :cond_5

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {p0, v4}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget v1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->B1()V

    return p1

    :cond_7
    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v1

    iget v3, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    if-lez p1, :cond_9

    goto :goto_4

    :cond_8
    if-gez p1, :cond_9

    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->i1()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->R0()V

    :goto_5
    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v3

    if-le v3, v1, :cond_a

    move v1, v2

    goto :goto_6

    :cond_a
    move v1, v0

    :goto_6
    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v3

    iget v5, p0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    if-lez p1, :cond_c

    goto :goto_7

    :cond_b
    if-gez p1, :cond_c

    :goto_7
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->m1()V

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->n1()V

    :goto_8
    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v4

    if-ge v4, v3, :cond_d

    goto :goto_9

    :cond_d
    move v2, v0

    :goto_9
    or-int v0, v1, v2

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->A1()V

    :cond_e
    iget-object v0, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->B1()V

    return p1
.end method

.method public final q0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    const v0, 0x8000

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p1, p1, 0x23

    if-nez p1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/o;->t1(Landroid/view/View;Landroid/view/View;ZII)V

    :cond_2
    :goto_0
    return v3
.end method

.method public final q1(I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    neg-int v1, p1

    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/o;->r:I

    if-nez v3, :cond_1

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/o;->G:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/leanback/widget/o;->G:I

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->C1()V

    iget-object v0, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return p1
.end method

.method public final r0(Landroid/os/Parcelable;)V
    .locals 5

    instance-of v0, p1, Landroidx/leanback/widget/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/leanback/widget/n;

    iget v0, p1, Landroidx/leanback/widget/n;->b:I

    iput v0, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/o;->E:I

    iget-object p1, p1, Landroidx/leanback/widget/n;->q:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object v1, v0, LD5/A;->c:Ljava/lang/Object;

    check-cast v1, Lc1/c;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lc1/c;->h(I)V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, LD5/A;->c:Ljava/lang/Object;

    check-cast v3, Lc1/c;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lc1/c;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {p0}, Lv1/G;->B0()V

    return-void
.end method

.method public final r1(IZ)V
    .locals 8

    invoke-virtual {p0, p1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lv1/G;->e:Lv1/s;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lv1/s;->e:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_1

    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/o;->t1(Landroid/view/View;Landroid/view/View;ZII)V

    move-object p2, v0

    iget p1, p2, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p2, Landroidx/leanback/widget/o;->z:I

    return-void

    :cond_1
    move-object v4, v3

    move v3, p2

    move-object p2, p0

    iget v5, p2, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v6, v5, 0x200

    const/high16 v7, -0x80000000

    if-eqz v6, :cond_2

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_3

    :cond_2
    move-object v0, p2

    goto/16 :goto_1

    :cond_3
    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_6

    iput p1, p2, Landroidx/leanback/widget/o;->B:I

    iput v7, p2, Landroidx/leanback/widget/o;->E:I

    iget-object v0, p2, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/leanback/widget/j;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/j;-><init>(Landroidx/leanback/widget/o;)V

    iput p1, v0, Lv1/s;->a:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/o;->P0(Lv1/s;)V

    iget p1, v0, Lv1/s;->a:I

    iget v0, p2, Landroidx/leanback/widget/o;->B:I

    if-eq p1, v0, :cond_4

    iput p1, p2, Landroidx/leanback/widget/o;->B:I

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GridLayoutManager:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-eqz v0, :cond_8

    iget-object v0, p2, Landroidx/leanback/widget/o;->C:Landroidx/leanback/widget/k;

    if-eqz v0, :cond_7

    iput-boolean v2, v0, Landroidx/leanback/widget/k;->q:Z

    :cond_7
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    invoke-static {v1}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_9

    iget p1, p2, Landroidx/leanback/widget/o;->z:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p2, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/o;->t1(Landroid/view/View;Landroid/view/View;ZII)V

    iget p1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Landroidx/leanback/widget/o;->z:I

    return-void

    :cond_9
    move-object v0, p2

    iput p1, v0, Landroidx/leanback/widget/o;->B:I

    iput v7, v0, Landroidx/leanback/widget/o;->E:I

    iget p1, v0, Landroidx/leanback/widget/o;->z:I

    or-int/lit16 p1, p1, 0x100

    iput p1, v0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {p0}, Lv1/G;->B0()V

    return-void

    :goto_1
    iput p1, v0, Landroidx/leanback/widget/o;->B:I

    iput v7, v0, Landroidx/leanback/widget/o;->E:I

    return-void
.end method

.method public final s0()Landroid/os/Parcelable;
    .locals 7

    new-instance v0, Landroidx/leanback/widget/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/leanback/widget/n;->q:Landroid/os/Bundle;

    iget v1, p0, Landroidx/leanback/widget/o;->B:I

    iput v1, v0, Landroidx/leanback/widget/n;->b:I

    iget-object v1, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object v2, v1, LD5/A;->c:Ljava/lang/Object;

    check-cast v2, Lc1/c;

    if-eqz v2, :cond_1

    monitor-enter v2

    :try_start_0
    iget v3, v2, Lc1/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, LD5/A;->c:Ljava/lang/Object;

    check-cast v1, Lc1/c;

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, v1, Lc1/c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    iget-object v6, p0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget v6, v6, LD5/A;->a:I

    if-eqz v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    if-nez v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_3
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iput-object v1, v0, Landroidx/leanback/widget/n;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public final s1(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/o;->t1(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method

.method public final t()Lv1/H;
    .locals 2

    new-instance v0, Landroidx/leanback/widget/l;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lv1/H;-><init>(II)V

    return-object v0
.end method

.method public final t1(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Landroidx/leanback/widget/o;->V0(Landroid/view/View;)I

    move-result v0

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/o;->B:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iput v0, p0, Landroidx/leanback/widget/o;->B:I

    iput v3, p0, Landroidx/leanback/widget/o;->E:I

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v2, :cond_4

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->S0()V

    :cond_4
    invoke-virtual {v4}, Landroidx/leanback/widget/f;->M()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_7
    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    if-eqz p3, :cond_8

    goto :goto_2

    :cond_8
    sget-object v0, Landroidx/leanback/widget/o;->d0:[I

    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/o;->b1(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-nez p1, :cond_a

    if-nez p4, :cond_a

    if-eqz p5, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    aget p1, v0, v3

    add-int/2addr p1, p4

    aget p2, v0, v2

    add-int/2addr p2, p5

    iget p4, p0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 p4, p4, 0x3

    if-ne p4, v2, :cond_b

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/o;->p1(I)I

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/o;->q1(I)I

    return-void

    :cond_b
    iget p4, p0, Landroidx/leanback/widget/o;->r:I

    if-nez p4, :cond_c

    goto :goto_4

    :cond_c
    move v5, p2

    move p2, p1

    move p1, v5

    :goto_4
    if-eqz p3, :cond_d

    invoke-virtual {v4, p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->g0(IIZ)V

    return-void

    :cond_d
    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0}, Landroidx/leanback/widget/o;->T0()V

    return-void
.end method

.method public final u(Landroid/content/Context;Landroid/util/AttributeSet;)Lv1/H;
    .locals 1

    new-instance v0, Landroidx/leanback/widget/l;

    invoke-direct {v0, p1, p2}, Lv1/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final u0(ILv1/M;Lv1/T;)Z
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/o;->o1(Lv1/M;Lv1/T;)V

    iget p2, p0, Landroidx/leanback/widget/o;->z:I

    const/high16 p3, 0x40000

    and-int/2addr p2, p3

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iget v0, p0, Landroidx/leanback/widget/o;->r:I

    const/16 v2, 0x2000

    const/16 v3, 0x1000

    if-nez v0, :cond_2

    sget-object v0, LK/c;->l:LK/c;

    invoke-virtual {v0}, LK/c;->a()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_1
    sget-object v0, LK/c;->n:LK/c;

    invoke-virtual {v0}, LK/c;->a()I

    move-result v0

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_2
    sget-object p2, LK/c;->k:LK/c;

    invoke-virtual {p2}, LK/c;->a()I

    move-result p2

    if-ne p1, p2, :cond_4

    :cond_3
    :goto_1
    move p1, v2

    goto :goto_3

    :cond_4
    sget-object p2, LK/c;->m:LK/c;

    invoke-virtual {p2}, LK/c;->a()I

    move-result p2

    if-ne p1, p2, :cond_6

    :cond_5
    :goto_2
    move p1, v3

    :cond_6
    :goto_3
    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p3}, Landroidx/leanback/widget/o;->j1(Z)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p3}, Landroidx/leanback/widget/o;->l1(IZ)I

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/o;->j1(Z)V

    invoke-virtual {p0, v1, p3}, Landroidx/leanback/widget/o;->l1(IZ)I

    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/o;->g1()V

    :cond_9
    return v1
.end method

.method public final u1(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/o;->r:I

    invoke-static {p0, p1}, Landroidx/emoji2/text/f;->a(Lv1/G;I)Landroidx/emoji2/text/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    iget-object v0, p0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v1, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/W;

    iget-object v2, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/W;

    if-nez p1, :cond_1

    iput-object v2, v0, LK1/c;->s:Ljava/lang/Object;

    iput-object v1, v0, LK1/c;->t:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, v0, LK1/c;->s:Ljava/lang/Object;

    iput-object v2, v0, LK1/c;->t:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/o;->V:LJ/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_2

    iget-object p1, v0, LJ/l;->s:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/s;

    iput-object p1, v0, LJ/l;->q:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, v0, LJ/l;->r:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/s;

    iput-object p1, v0, LJ/l;->q:Ljava/lang/Object;

    :goto_1
    iget p1, p0, Landroidx/leanback/widget/o;->z:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/o;->z:I

    return-void
.end method

.method public final v(Landroid/view/ViewGroup$LayoutParams;)Lv1/H;
    .locals 1

    instance-of v0, p1, Landroidx/leanback/widget/l;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/leanback/widget/l;

    check-cast p1, Landroidx/leanback/widget/l;

    invoke-direct {v0, p1}, Lv1/H;-><init>(Lv1/H;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Lv1/H;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/leanback/widget/l;

    check-cast p1, Lv1/H;

    invoke-direct {v0, p1}, Lv1/H;-><init>(Lv1/H;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/leanback/widget/l;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lv1/H;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Landroidx/leanback/widget/l;

    invoke-direct {v0, p1}, Lv1/H;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final v0(Lv1/M;)V
    .locals 2

    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lv1/G;->y0(I)V

    invoke-virtual {p1, v1}, Lv1/M;->i(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v1(I)V
    .locals 2

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid row height: "

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/o;->H:I

    return-void
.end method

.method public final w1(IZ)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/o;->B:I

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/o;->r1(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x1()V
    .locals 3

    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/o;->y1(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y1(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v2, v1, LJ/l;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/s;

    iget v3, v2, Landroidx/leanback/widget/s;->e:I

    invoke-static {p1, v2, v3}, Landroidx/leanback/widget/t;->a(Landroid/view/View;Landroidx/leanback/widget/s;I)I

    move-result v2

    iput v2, v0, Landroidx/leanback/widget/l;->i:I

    iget-object v1, v1, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/s;

    iget v2, v1, Landroidx/leanback/widget/s;->e:I

    invoke-static {p1, v1, v2}, Landroidx/leanback/widget/t;->a(Landroid/view/View;Landroidx/leanback/widget/s;I)I

    move-result p1

    iput p1, v0, Landroidx/leanback/widget/l;->j:I

    return-void
.end method

.method public final z(Lv1/M;Lv1/T;)I
    .locals 0

    iget p1, p0, Landroidx/leanback/widget/o;->r:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/leanback/widget/i;->e:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final z0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final z1()V
    .locals 2

    invoke-virtual {p0}, Lv1/G;->x()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/l;

    iget-object v1, p0, Landroidx/leanback/widget/o;->S:Landroidx/leanback/widget/i;

    iget v1, v1, Landroidx/leanback/widget/i;->f:I

    iget-object v0, v0, Lv1/H;->a:Lv1/X;

    invoke-virtual {v0}, Lv1/X;->c()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/o;->u:I

    return-void

    :cond_0
    iput v1, p0, Landroidx/leanback/widget/o;->u:I

    return-void
.end method
