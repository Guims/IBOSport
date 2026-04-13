.class public Lk/p;
.super Landroid/widget/CheckBox;

# interfaces
.implements LP/s;


# instance fields
.field public final b:Lk/r;

.field public final q:LA5/t;

.field public final r:Lk/U;

.field public s:Lk/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lk/N0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lk/r;

    invoke-direct {p1, p0}, Lk/r;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/p;->b:Lk/r;

    invoke-virtual {p1, p2, p3}, Lk/r;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, LA5/t;

    invoke-direct {p1, p0}, LA5/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/p;->q:LA5/t;

    invoke-virtual {p1, p2, p3}, LA5/t;->n(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/U;

    invoke-direct {p1, p0}, Lk/U;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/p;->r:Lk/U;

    invoke-virtual {p1, p2, p3}, Lk/U;->f(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lk/p;->getEmojiTextViewHelper()Lk/u;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lk/u;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lk/u;
    .locals 1

    iget-object v0, p0, Lk/p;->s:Lk/u;

    if-nez v0, :cond_0

    new-instance v0, Lk/u;

    invoke-direct {v0, p0}, Lk/u;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/p;->s:Lk/u;

    :cond_0
    iget-object v0, p0, Lk/p;->s:Lk/u;

    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lk/p;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LA5/t;->b()V

    :cond_0
    iget-object v0, p0, Lk/p;->r:Lk/U;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/U;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lk/p;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LA5/t;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lk/p;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LA5/t;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lk/p;->b:Lk/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lk/r;->a:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lk/p;->b:Lk/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lk/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lk/p;->r:Lk/U;

    invoke-virtual {v0}, Lk/U;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lk/p;->r:Lk/U;

    invoke-virtual {v0}, Lk/U;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lk/p;->getEmojiTextViewHelper()Lk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/u;->b(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/p;->q:LA5/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LA5/t;->p()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lk/p;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LA5/t;->q(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LE2/g;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/p;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/p;->b:Lk/r;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lk/r;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lk/r;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lk/r;->e:Z

    invoke-virtual {p1}, Lk/r;->a()V

    :cond_1
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/p;->r:Lk/U;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/U;->b()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/p;->r:Lk/U;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/U;->b()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lk/p;->getEmojiTextViewHelper()Lk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/u;->c(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lk/p;->getEmojiTextViewHelper()Lk/u;

    move-result-object v0

    iget-object v0, v0, Lk/u;->b:LL2/o;

    iget-object v0, v0, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, La/a;

    invoke-virtual {v0, p1}, La/a;->r([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lk/p;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LA5/t;->v(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lk/p;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LA5/t;->w(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lk/p;->b:Lk/r;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lk/r;->a:Landroid/os/Parcelable;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/r;->c:Z

    invoke-virtual {v0}, Lk/r;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lk/p;->b:Lk/r;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lk/r;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/r;->d:Z

    invoke-virtual {v0}, Lk/r;->a()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lk/p;->r:Lk/U;

    invoke-virtual {v0, p1}, Lk/U;->l(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lk/U;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lk/p;->r:Lk/U;

    invoke-virtual {v0, p1}, Lk/U;->m(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lk/U;->b()V

    return-void
.end method
