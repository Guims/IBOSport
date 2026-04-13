.class public final LZ/g;
.super La/a;


# instance fields
.field public final a:LZ/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ/f;

    invoke-direct {v0, p1}, LZ/f;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LZ/g;->a:LZ/f;

    return-void
.end method


# virtual methods
.method public final I(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LZ/g;->a:LZ/f;

    invoke-virtual {v0, p1}, LZ/f;->I(Z)V

    return-void
.end method

.method public final J(Z)V
    .locals 2

    iget-object v0, p0, LZ/g;->a:LZ/f;

    sget-object v1, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iput-boolean p1, v0, LZ/f;->c:Z

    return-void

    :cond_1
    invoke-virtual {v0, p1}, LZ/f;->J(Z)V

    return-void
.end method

.method public final r([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, LZ/g;->a:LZ/f;

    invoke-virtual {v0, p1}, LZ/f;->r([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method
