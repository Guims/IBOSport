.class public final synthetic Lz4/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/fragment/app/m;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/m;I)V
    .locals 0

    iput p2, p0, Lz4/c;->b:I

    iput-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget p1, p0, Lz4/c;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/L;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x14

    if-ne p2, p3, :cond_1

    iget-object p2, p1, Lz4/L;->B0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p1, Lz4/L;->I0:I

    iget-object p3, p1, Lz4/L;->C0:Ls4/o;

    invoke-virtual {p3}, Ls4/o;->a()I

    move-result p3

    add-int/lit8 p3, p3, -0x6

    if-le p2, p3, :cond_1

    iget-object p1, p1, Lz4/L;->D0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/E;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    const/4 v0, 0x1

    :cond_2
    return v0

    :pswitch_1
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/B;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    const/4 v0, 0x1

    :cond_3
    return v0

    :pswitch_2
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x13

    const/4 v1, 0x1

    if-eq p2, p3, :cond_5

    const/16 p3, 0x14

    if-eq p2, p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p1, Lz4/u;->z0:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lz4/u;->z0:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p1, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object p2, p1, Lz4/u;->A0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p1, Lz4/u;->G0:I

    if-nez p2, :cond_6

    iget-object p2, p1, Lz4/u;->z0:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p1, Lz4/u;->z0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_6
    :goto_2
    return v0

    :pswitch_3
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/t;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_9

    const/16 p3, 0x15

    const/4 v0, 0x1

    if-eq p2, p3, :cond_8

    const/16 p3, 0x16

    if-eq p2, p3, :cond_7

    goto :goto_3

    :cond_7
    iget-object p2, p1, Lz4/t;->D0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p1, Lz4/t;->B0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :cond_8
    iget-object p2, p1, Lz4/t;->D0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p1, Lz4/t;->A0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_4
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_c

    const/16 p3, 0x15

    const/4 v0, 0x1

    if-eq p2, p3, :cond_b

    const/16 p3, 0x16

    if-eq p2, p3, :cond_a

    goto :goto_5

    :cond_a
    iget-object p2, p1, Lz4/r;->A0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p1, p1, Lz4/r;->C0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    :cond_b
    iget-object p2, p1, Lz4/r;->A0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p1, p1, Lz4/r;->B0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_5
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_f

    const/16 p3, 0x15

    const/4 v0, 0x1

    if-eq p2, p3, :cond_e

    const/16 p3, 0x16

    if-eq p2, p3, :cond_d

    goto :goto_7

    :cond_d
    iget-object p2, p1, Lz4/q;->A0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p1, p1, Lz4/q;->C0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    :cond_e
    iget-object p2, p1, Lz4/q;->A0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p1, p1, Lz4/q;->B0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_6
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/n;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_10

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    const/4 v0, 0x1

    :cond_10
    return v0

    :pswitch_7
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/k;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_11

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    const/4 v0, 0x1

    :cond_11
    return v0

    :pswitch_8
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_14

    const/16 p3, 0x15

    const/4 v0, 0x1

    if-eq p2, p3, :cond_13

    const/16 p3, 0x16

    if-eq p2, p3, :cond_12

    goto :goto_9

    :cond_12
    iget-object p2, p1, Lz4/h;->B0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p1, p1, Lz4/h;->D0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a

    :cond_13
    iget-object p2, p1, Lz4/h;->B0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p1, p1, Lz4/h;->C0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v0, 0x0

    :goto_a
    return v0

    :pswitch_9
    iget-object p1, p0, Lz4/c;->q:Landroidx/fragment/app/m;

    check-cast p1, Lz4/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-nez p2, :cond_18

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x15

    if-eq p2, p3, :cond_16

    const/16 p3, 0x16

    if-eq p2, p3, :cond_15

    goto :goto_c

    :cond_15
    iget-object p2, p1, Lz4/f;->I0:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_17

    iget-object p2, p1, Lz4/f;->K0:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_17

    iget-object p1, p1, Lz4/f;->L0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_b

    :cond_16
    iget-object p2, p1, Lz4/f;->H0:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_17

    iget-object p2, p1, Lz4/f;->J0:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_17

    iget-object p1, p1, Lz4/f;->L0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    :goto_b
    const/4 p1, 0x1

    goto :goto_d

    :cond_18
    :goto_c
    const/4 p1, 0x0

    :goto_d
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
