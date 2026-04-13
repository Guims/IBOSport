.class public final LD5/A;
.super Ljava/lang/Object;

# interfaces
.implements Lc1/b;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [LD5/A;

    iput-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, LD5/A;->a:I

    iput v0, p0, LD5/A;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, LD5/A;->b:I

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lu/q;->h:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    iget v3, p0, LD5/A;->a:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, LD5/A;->a:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v3, p0, LD5/A;->b:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, LD5/A;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v4, "layout"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lu/n;

    invoke-direct {v3}, Lu/n;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Lu/n;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LD5/A;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LD5/A;->b:I

    return v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, LD5/A;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    check-cast v0, Lk0/u;

    invoke-virtual {v0}, Lk0/u;->y()I

    move-result v0

    :cond_0
    return v0
.end method

.method public d()V
    .locals 3

    iget v0, p0, LD5/A;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, LD5/A;->b:I

    if-lez v0, :cond_1

    iget-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc1/c;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lc1/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget v0, p0, LD5/A;->b:I

    if-eq v1, v0, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    new-instance v0, Lc1/c;

    iget v1, p0, LD5/A;->b:I

    invoke-direct {v0, v1}, Lc1/c;-><init>(I)V

    iput-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    check-cast v0, Lc1/c;

    const v1, 0x7fffffff

    if-eqz v0, :cond_6

    monitor-enter v0

    :try_start_2
    iget v2, v0, Lc1/c;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    if-eq v2, v1, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_6
    :goto_2
    new-instance v0, Lc1/c;

    invoke-direct {v0, v1}, Lc1/c;-><init>(I)V

    iput-object v0, p0, LD5/A;->c:Ljava/lang/Object;

    return-void
.end method
