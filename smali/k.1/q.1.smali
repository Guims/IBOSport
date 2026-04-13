.class public final Lk/q;
.super Landroid/widget/CheckedTextView;


# instance fields
.field public final b:Lk/r;

.field public final q:LA5/t;

.field public final r:Lk/U;

.field public s:Lk/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-static {p1}, Lk/N0;->a(Landroid/content/Context;)V

    const v6, 0x7f0400da

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lk/U;

    invoke-direct {p1, p0}, Lk/U;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/q;->r:Lk/U;

    invoke-virtual {p1, p2, v6}, Lk/U;->f(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lk/U;->b()V

    new-instance p1, LA5/t;

    invoke-direct {p1, p0}, LA5/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/q;->q:LA5/t;

    invoke-virtual {p1, p2, v6}, LA5/t;->n(Landroid/util/AttributeSet;I)V

    new-instance p1, Lk/r;

    invoke-direct {p1, p0}, Lk/r;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lk/q;->b:Lk/r;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v3, Le/a;->l:[I

    invoke-static {p1, p2, v3, v6}, LJ/l;->U(Landroid/content/Context;Landroid/util/AttributeSet;[II)LJ/l;

    move-result-object p1

    iget-object v0, p1, LJ/l;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, LJ/l;->s:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/content/res/TypedArray;

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, LJ/U;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, LE2/g;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lk/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, LE2/g;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lk/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2}, LJ/l;->H(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lk/i0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p1}, LJ/l;->Z()V

    invoke-direct {p0}, Lk/q;->getEmojiTextViewHelper()Lk/u;

    move-result-object p1

    invoke-virtual {p1, v4, v6}, Lk/u;->a(Landroid/util/AttributeSet;I)V

    return-void

    :goto_1
    invoke-virtual {p1}, LJ/l;->Z()V

    throw p2
.end method

.method private getEmojiTextViewHelper()Lk/u;
    .locals 1

    iget-object v0, p0, Lk/q;->s:Lk/u;

    if-nez v0, :cond_0

    new-instance v0, Lk/u;

    invoke-direct {v0, p0}, Lk/u;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lk/q;->s:Lk/u;

    :cond_0
    iget-object v0, p0, Lk/q;->s:Lk/u;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, Lk/q;->r:Lk/U;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/U;->b()V

    :cond_0
    iget-object v0, p0, Lk/q;->q:LA5/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LA5/t;->b()V

    :cond_1
    iget-object v0, p0, Lk/q;->b:Lk/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lk/r;->b()V

    :cond_2
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, La/a;->R(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lk/q;->q:LA5/t;

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

    iget-object v0, p0, Lk/q;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LA5/t;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lk/q;->b:Lk/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lk/r;->a:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lk/q;->b:Lk/r;

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

    iget-object v0, p0, Lk/q;->r:Lk/U;

    invoke-virtual {v0}, Lk/U;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lk/q;->r:Lk/U;

    invoke-virtual {v0}, Lk/U;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/bumptech/glide/d;->n(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lk/q;->getEmojiTextViewHelper()Lk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/u;->b(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/q;->q:LA5/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LA5/t;->p()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lk/q;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LA5/t;->q(I)V

    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LE2/g;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/q;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/q;->b:Lk/r;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lk/r;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lk/r;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lk/r;->e:Z

    invoke-virtual {p1}, Lk/r;->b()V

    :cond_1
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/q;->r:Lk/U;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/U;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/q;->r:Lk/U;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/U;->b()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p1, p0}, La/a;->T(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lk/q;->getEmojiTextViewHelper()Lk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/u;->c(Z)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lk/q;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LA5/t;->v(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lk/q;->q:LA5/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LA5/t;->w(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lk/q;->b:Lk/r;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lk/r;->a:Landroid/os/Parcelable;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/r;->c:Z

    invoke-virtual {v0}, Lk/r;->b()V

    :cond_0
    return-void
.end method

.method public setSupportCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lk/q;->b:Lk/r;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lk/r;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/r;->d:Z

    invoke-virtual {v0}, Lk/r;->b()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lk/q;->r:Lk/U;

    invoke-virtual {v0, p1}, Lk/U;->l(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lk/U;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lk/q;->r:Lk/U;

    invoke-virtual {v0, p1}, Lk/U;->m(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lk/U;->b()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lk/q;->r:Lk/U;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lk/U;->g(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
