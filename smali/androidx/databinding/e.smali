.class public abstract Landroidx/databinding/e;
.super LC2/b;

# interfaces
.implements LC1/a;


# static fields
.field public static final A:Landroidx/databinding/c;

.field public static final y:Z = true

.field public static final z:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field public final r:LA4/f;

.field public s:Z

.field public final t:Landroid/view/View;

.field public u:Z

.field public final v:Landroid/view/Choreographer;

.field public final w:Landroidx/databinding/d;

.field public final x:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/e;->z:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Landroidx/databinding/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/c;-><init>(I)V

    sput-object v0, Landroidx/databinding/e;->A:Landroidx/databinding/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LA4/f;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/e;->r:LA4/f;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/databinding/e;->s:Z

    new-array p1, p3, [Landroidx/databinding/f;

    iput-object p2, p0, Landroidx/databinding/e;->t:Landroid/view/View;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Landroidx/databinding/e;->y:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/e;->v:Landroid/view/Choreographer;

    new-instance p1, Landroidx/databinding/d;

    invoke-direct {p1, p0}, Landroidx/databinding/d;-><init>(Landroidx/databinding/e;)V

    iput-object p1, p0, Landroidx/databinding/e;->w:Landroidx/databinding/d;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/databinding/e;->w:Landroidx/databinding/d;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/e;->x:Landroid/os/Handler;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;
    .locals 4

    if-nez p4, :cond_5

    sget-object p4, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int p3, p0, v3

    if-ne p3, v0, :cond_2

    sub-int/2addr p0, v0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p4, p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->b(Landroid/view/View;I)Landroidx/databinding/e;

    move-result-object p0

    return-object p0

    :cond_2
    new-array p0, p3, [Landroid/view/View;

    :goto_2
    if-ge v1, p3, :cond_3

    add-int v0, v1, v3

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p4, p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->c([Landroid/view/View;I)Landroidx/databinding/e;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p4, p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->b(Landroid/view/View;I)Landroidx/databinding/e;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a0(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const v1, 0x7f0b00e8

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/e;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_7

    if-eqz v0, :cond_7

    const-string p3, "layout"

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p3, 0x5f

    invoke-virtual {v0, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_9

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_3

    goto :goto_4

    :cond_3
    move v3, p3

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge p3, v2, :cond_6

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_6
    aget-object p3, p1, v3

    if-nez p3, :cond_a

    aput-object p0, p1, v3

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_9

    const-string p3, "binding_"

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v2, 0x8

    move v3, v1

    :goto_3
    if-ge v2, p3, :cond_8

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    aget-object p3, p1, v3

    if-nez p3, :cond_a

    aput-object p0, p1, v3

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p3

    if-lez p3, :cond_a

    if-eqz p2, :cond_a

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-ltz p3, :cond_a

    aget-object v0, p1, p3

    if-nez v0, :cond_a

    aput-object p0, p1, p3

    :cond_a
    :goto_5
    instance-of p3, p0, Landroid/view/ViewGroup;

    if-eqz p3, :cond_b

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v0, v1

    :goto_6
    if-ge v0, p3, :cond_b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2, v1}, Landroidx/databinding/e;->a0(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method

.method public static b0(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroidx/databinding/e;->a0(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    return-object p1
.end method


# virtual methods
.method public abstract X()V
.end method

.method public abstract Y()Z
.end method

.method public final c0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/e;->s:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/e;->s:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/e;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/databinding/e;->v:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/databinding/e;->w:Landroidx/databinding/d;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/databinding/e;->x:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/databinding/e;->r:LA4/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d0(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b00e8

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
