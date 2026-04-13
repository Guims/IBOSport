.class public final Lk/x0;
.super Landroid/database/DataSetObserver;


# instance fields
.field public final synthetic a:Lk/A0;


# direct methods
.method public constructor <init>(Lk/A0;)V
    .locals 0

    iput-object p1, p0, Lk/x0;->a:Lk/A0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Lk/x0;->a:Lk/A0;

    iget-object v1, v0, Lk/A0;->O:Lk/y;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lk/A0;->g()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lk/x0;->a:Lk/A0;

    invoke-virtual {v0}, Lk/A0;->dismiss()V

    return-void
.end method
