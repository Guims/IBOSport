.class public final Lj/b;
.super Lk/r0;


# instance fields
.field public final synthetic y:I

.field public final synthetic z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj/b;->y:I

    iput-object p1, p0, Lj/b;->z:Landroid/view/View;

    invoke-direct {p0, p1}, Lk/r0;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lk/j;Lk/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj/b;->y:I

    iput-object p1, p0, Lj/b;->z:Landroid/view/View;

    invoke-direct {p0, p2}, Lk/r0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lj/C;
    .locals 1

    iget v0, p0, Lj/b;->y:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj/b;->z:Landroid/view/View;

    check-cast v0, Lk/j;

    iget-object v0, v0, Lk/j;->s:Lk/k;

    iget-object v0, v0, Lk/k;->H:Lk/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj/w;->a()Lj/u;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lj/b;->z:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->B:Lj/c;

    if-eqz v0, :cond_1

    check-cast v0, Lk/h;

    iget-object v0, v0, Lk/h;->a:Lk/k;

    iget-object v0, v0, Lk/k;->I:Lk/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/w;->a()Lj/u;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lj/b;->y:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj/b;->z:Landroid/view/View;

    check-cast v0, Lk/j;

    iget-object v0, v0, Lk/j;->s:Lk/k;

    invoke-virtual {v0}, Lk/k;->l()Z

    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lj/b;->z:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->z:Lj/l;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->w:Lj/o;

    invoke-interface {v1, v0}, Lj/l;->a(Lj/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj/b;->b()Lj/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj/C;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lj/b;->y:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lk/r0;->d()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lj/b;->z:Landroid/view/View;

    check-cast v0, Lk/j;

    iget-object v0, v0, Lk/j;->s:Lk/k;

    iget-object v1, v0, Lk/k;->J:Lk/i;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lk/k;->g()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
