.class public Landroidx/leanback/widget/SearchEditText;
.super Landroidx/leanback/widget/T;


# instance fields
.field public w:Landroidx/leanback/widget/J;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/T;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/SearchEditText;->w:Landroidx/leanback/widget/J;

    if-eqz p1, :cond_0

    check-cast p1, LL2/o;

    iget-object p1, p1, LL2/o;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/leanback/widget/T;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    return-void
.end method

.method public setOnKeyboardDismissListener(Landroidx/leanback/widget/J;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchEditText;->w:Landroidx/leanback/widget/J;

    return-void
.end method
