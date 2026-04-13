.class public final Landroidx/leanback/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Lv1/N;


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/f;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/a;->a:Landroidx/leanback/widget/f;

    return-void
.end method


# virtual methods
.method public final a(Lv1/X;)V
    .locals 6

    iget-object v0, p0, Landroidx/leanback/widget/a;->a:Landroidx/leanback/widget/f;

    iget-object v1, v0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lv1/X;->b()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v1, v1, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget-object v3, p1, Lv1/X;->a:Landroid/view/View;

    iget v4, v1, LD5/A;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, LD5/A;->c:Ljava/lang/Object;

    check-cast v4, Lc1/c;

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v1, v1, LD5/A;->c:Ljava/lang/Object;

    check-cast v1, Lc1/c;

    invoke-virtual {v1, v2, v4}, Lc1/c;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v3, v1, LD5/A;->c:Ljava/lang/Object;

    check-cast v3, Lc1/c;

    if-eqz v3, :cond_2

    monitor-enter v3

    :try_start_0
    iget v4, v3, Lc1/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eqz v4, :cond_2

    iget-object v1, v1, LD5/A;->c:Ljava/lang/Object;

    check-cast v1, Lc1/c;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc1/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    iget-object v0, v0, Landroidx/leanback/widget/f;->b1:Lv1/N;

    if-eqz v0, :cond_3

    check-cast v0, Landroidx/leanback/widget/a;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/a;->a(Lv1/X;)V

    :cond_3
    return-void
.end method
