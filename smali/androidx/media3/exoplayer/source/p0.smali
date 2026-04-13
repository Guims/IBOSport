.class public final Landroidx/media3/exoplayer/source/p0;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroidx/media3/common/d;


# direct methods
.method public constructor <init>(Landroidx/media3/common/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p0;->c:Landroidx/media3/common/d;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    :cond_0
    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/p0;->b:Landroid/util/SparseArray;

    if-lez v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/media3/exoplayer/source/p0;->a:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
