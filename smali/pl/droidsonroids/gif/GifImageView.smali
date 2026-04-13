.class public Lpl/droidsonroids/gif/GifImageView;
.super Landroid/widget/ImageView;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, LR5/e;->a:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, LR5/d;

    invoke-direct {p1, p0, p2}, LR5/d;-><init>(Lpl/droidsonroids/gif/GifImageView;Landroid/util/AttributeSet;)V

    iget p2, p1, LR5/d;->b:I

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lpl/droidsonroids/gif/c;

    if-eqz v1, :cond_0

    check-cast v0, Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->v:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->r(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lpl/droidsonroids/gif/c;

    if-eqz v1, :cond_2

    check-cast v0, Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->v:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->r(I)V

    goto :goto_0

    :cond_1
    new-instance p1, LR5/d;

    invoke-direct {p1}, LR5/d;-><init>()V

    :cond_2
    :goto_0
    iget-boolean p2, p1, LR5/d;->a:Z

    iput-boolean p2, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    iget p2, p1, LR5/d;->c:I

    if-lez p2, :cond_3

    invoke-super {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget p1, p1, LR5/d;->d:I

    if-lez p1, :cond_4

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Lpl/droidsonroids/gif/d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lpl/droidsonroids/gif/d;

    iget-object v0, p1, Lpl/droidsonroids/gif/d;->b:[[J

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_1

    instance-of v2, p1, Lpl/droidsonroids/gif/c;

    if-eqz v2, :cond_1

    check-cast p1, Lpl/droidsonroids/gif/c;

    iget-object v2, p1, Lpl/droidsonroids/gif/c;->v:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p1, Lpl/droidsonroids/gif/c;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->o([JLandroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lpl/droidsonroids/gif/c;->a(J)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    instance-of v1, p1, Lpl/droidsonroids/gif/c;

    if-eqz v1, :cond_2

    check-cast p1, Lpl/droidsonroids/gif/c;

    iget-object v1, p1, Lpl/droidsonroids/gif/c;->v:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v2, p1, Lpl/droidsonroids/gif/c;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->o([JLandroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/c;->a(J)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    new-instance v2, Lpl/droidsonroids/gif/d;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    filled-new-array {v0, v1}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lpl/droidsonroids/gif/d;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, LR5/e;->a(Lpl/droidsonroids/gif/GifImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifImageView;->b:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, LR5/e;->a(Lpl/droidsonroids/gif/GifImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2

    sget-object v0, LR5/e;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpl/droidsonroids/gif/c;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method
