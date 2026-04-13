.class public final Landroidx/leanback/widget/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/SearchBar;I)V
    .locals 0

    iput p2, p0, Landroidx/leanback/widget/B;->b:I

    iput-object p1, p0, Landroidx/leanback/widget/B;->q:Landroidx/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget p1, p0, Landroidx/leanback/widget/B;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/leanback/widget/B;->q:Landroidx/leanback/widget/SearchBar;

    if-eqz p2, :cond_0

    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->a()V

    iput-boolean v2, p1, Landroidx/leanback/widget/SearchBar;->y:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->b()V

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SearchBar;->d(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/widget/B;->q:Landroidx/leanback/widget/SearchBar;

    if-eqz p2, :cond_2

    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->w:Landroid/os/Handler;

    new-instance v1, Landroidx/leanback/widget/C;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroidx/leanback/widget/C;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_1
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SearchBar;->d(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
