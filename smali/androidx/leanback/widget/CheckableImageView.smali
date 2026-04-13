.class Landroidx/leanback/widget/CheckableImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field public static final q:[I


# instance fields
.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/leanback/widget/CheckableImageView;->q:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/CheckableImageView;->b:Z

    return v0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean v0, p0, Landroidx/leanback/widget/CheckableImageView;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/leanback/widget/CheckableImageView;->q:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/CheckableImageView;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/leanback/widget/CheckableImageView;->b:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/CheckableImageView;->b:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/CheckableImageView;->setChecked(Z)V

    return-void
.end method
