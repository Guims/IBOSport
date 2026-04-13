.class public final LR5/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LR5/d;->a:Z

    const/4 v1, -0x1

    iput v1, p0, LR5/d;->b:I

    iput v0, p0, LR5/d;->c:I

    iput v0, p0, LR5/d;->d:I

    return-void
.end method

.method public constructor <init>(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LR5/g;->a:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, LR5/d;->a:Z

    const/4 v1, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, LR5/d;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1, p2, v3}, LR5/d;->a(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    iput v0, p0, LR5/d;->c:I

    invoke-static {p1, p2, v2}, LR5/d;->a(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;Z)I

    move-result p1

    iput p1, p0, LR5/d;->d:I

    return-void
.end method

.method public static a(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;Z)I
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "src"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LR5/e;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2, p1}, LR5/e;->a(Lpl/droidsonroids/gif/GifImageView;ZI)Z

    move-result p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    return v2
.end method
